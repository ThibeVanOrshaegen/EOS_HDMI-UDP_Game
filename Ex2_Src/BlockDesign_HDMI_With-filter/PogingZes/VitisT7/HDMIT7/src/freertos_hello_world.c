#include "xparameters.h"
#include "xstatus.h"
#include "xil_exception.h"
#include "xil_assert.h"
#include "xaxivdma.h"
#include "xaxivdma_i.h"
#include "xparameters.h"
#include "FreeRTOS.h"
#include "task.h"
#include "xaxivdma.h"
#include "xscugic.h"
#include "sleep.h"
#include <stdlib.h>
#include "xil_cache.h"
#include "xil_cache.h"

/*** Global Variables ***/

#define SUBFRAME_HORIZONTAL_SIZE 1920
#define SUBFRAME_VERTICAL_SIZE 1080
#define TOTAL_FRAME_SIZE SUBFRAME_HORIZONTAL_SIZE*SUBFRAME_VERTICAL_SIZE*3 //RGB

static XScuGic Intc;
static int SetupIntrSystem(XAxiVdma *AxiVdmaPtr, u16 ReadIntrId);

const int rows = 6;
const int columns = 6;
const int vierOpEenRij = 6;
const int BlockWidth = SUBFRAME_HORIZONTAL_SIZE / columns;
const int BlockHeight = SUBFRAME_VERTICAL_SIZE / rows;

int CheckRooster[6] = {0, 0, 0, 0, 0, 0};

unsigned char Buffer[TOTAL_FRAME_SIZE];
unsigned char TempBuffer[TOTAL_FRAME_SIZE];

volatile static u16 ReadCount;

void drawGrid(unsigned char* buffer);

int main(){

	int Status;
	int Index;
	u32 Addr;
	XAxiVdma InstancePtr;
	XAxiVdma_Config *config = XAxiVdma_LookupConfig(XPAR_AXI_VDMA_0_DEVICE_ID);
	XAxiVdma_DmaSetup ReadCfg;

	xil_printf("\n--- Entering main() --- \r\n");
	xil_printf("Starting the first VDMA \n\r");

	//Config = XAxiVdma_LookupConfig(XPAR_AXI_VDMA_0_DEVICE_ID);
	//if (!Config)
	//{
	//	xil_printf("No video DMA found for ID %d\r\n",XPAR_AXI_VDMA_0_DEVICE_ID );
	//	return XST_FAILURE;
	//}

	Status = XAxiVdma_CfgInitialize(&InstancePtr, config, config->BaseAddress);
	if (Status != XST_SUCCESS)
	{
		xil_printf(
		"Configuration Initialization failed %d\r\n", Status);
		return XST_FAILURE;
	}

	ReadCfg.VertSizeInput = SUBFRAME_VERTICAL_SIZE;
	ReadCfg.HoriSizeInput = SUBFRAME_HORIZONTAL_SIZE*3;

	ReadCfg.Stride = SUBFRAME_HORIZONTAL_SIZE*3;
	ReadCfg.FrameDelay = 0;  /* This example does not test frame delay */

	ReadCfg.EnableCircularBuf = 1;
	ReadCfg.EnableSync = 1;  /* No Gen-Lock */

	ReadCfg.PointNum = 0;    /* No Gen-Lock */
	ReadCfg.EnableFrameCounter = 0; /* Endless transfers */

	ReadCfg.FixedFrameStoreAddr = 0; /* We are not doing parking */

	Status = XAxiVdma_DmaConfig(&InstancePtr, XAXIVDMA_READ, &ReadCfg);
	if (Status != XST_SUCCESS)
	{
		xil_printf("Read channel config failed %d\r\n", Status);
		return XST_FAILURE;
	}

	Addr =(u32)&(Buffer[0]);
	//ReadCount = Config->MaxFrameStoreNum;
	for (Index = 0; Index < InstancePtr.MaxNumFrames; Index++)
	{
		ReadCfg.FrameStoreStartAddr[Index] = Addr;
		Addr += TOTAL_FRAME_SIZE;
	}

	/* Set the buffer addresses for transfer in the DMA engine
	* The buffer addresses are physical addresses
	*/
	Status = XAxiVdma_DmaSetBufferAddr(&InstancePtr, XAXIVDMA_READ,ReadCfg.FrameStoreStartAddr);
	if (Status != XST_SUCCESS)
	{
		xil_printf("Read channel set buffer address failed %d\r\n", Status);
		return XST_FAILURE;
	}

	XAxiVdma_IntrEnable(&InstancePtr, XAXIVDMA_IXR_ALL_MASK, XAXIVDMA_READ);

	SetupIntrSystem(&InstancePtr,XPAR_FABRIC_AXI_VDMA_0_MM2S_INTROUT_INTR);

	drawGrid(Buffer);


	Xil_DCacheFlush();

	Status = XAxiVdma_DmaStart(&InstancePtr, XAXIVDMA_READ);
	if (Status != XST_SUCCESS)
	{
		xil_printf("Start read transfer failed %d\r\n", Status);
		return XST_FAILURE;
	}

	/* Infinite while loop to let it run */
	while(1){
	}
}

static void ReadCallBack(void *CallbackRef, u32 Mask)
{
	/* User can add his code in this call back function */
	xil_printf("Read Call back function is called\r\n");
}

static void ReadErrorCallBack(void *CallbackRef, u32 Mask)
{
	/* User can add his code in this call back function */
	xil_printf("Read Call back Error function is called\r\n");

}

static int SetupIntrSystem(XAxiVdma *AxiVdmaPtr, u16 ReadIntrId)
{
	int Status;
	XScuGic *IntcInstancePtr =&Intc;
	XScuGic_Config *IntcConfig;
	IntcConfig = XScuGic_LookupConfig(XPAR_PS7_SCUGIC_0_DEVICE_ID);
	/* Initialize the interrupt controller and connect the ISRs */
	Status = XScuGic_CfgInitialize(IntcInstancePtr,IntcConfig,IntcConfig->CpuBaseAddress);
	if (Status != XST_SUCCESS) {
		xil_printf( "Failed init intc\r\n");
		return XST_FAILURE;
	}

	Status = XScuGic_Connect(IntcInstancePtr, ReadIntrId,(Xil_InterruptHandler)XAxiVdma_ReadIntrHandler,(void *)AxiVdmaPtr);
	if (Status != XST_SUCCESS) {
		xil_printf("Failed read channel connect intc %d\r\n", Status);
		return XST_FAILURE;
	}

	/* Enable interrupts from the hardware */
	XScuGic_Enable(IntcInstancePtr, ReadIntrId);

	Xil_ExceptionInit();

	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,(Xil_ExceptionHandler)XScuGic_InterruptHandler,(void *)IntcInstancePtr);

	Xil_ExceptionEnable();

	/* Register call-back functions
	 */
	XAxiVdma_SetCallBack(AxiVdmaPtr, XAXIVDMA_HANDLER_GENERAL, ReadCallBack,
		(void *)AxiVdmaPtr, XAXIVDMA_READ);

	XAxiVdma_SetCallBack(AxiVdmaPtr, XAXIVDMA_HANDLER_ERROR,
		ReadErrorCallBack, (void *)AxiVdmaPtr, XAXIVDMA_READ);

	return XST_SUCCESS;
}

void drawGrid(unsigned char* buffer) {
    memcpy(TempBuffer, buffer, TOTAL_FRAME_SIZE);

    // Fill the buffer with green color (background)
    for (int i = 0; i < SUBFRAME_VERTICAL_SIZE; ++i) {
        for (int j = 0; j < SUBFRAME_HORIZONTAL_SIZE * 3; j += 3) {
            TempBuffer[(i * SUBFRAME_HORIZONTAL_SIZE * 3) + j] = 0x00;     // G
            TempBuffer[(i * SUBFRAME_HORIZONTAL_SIZE * 3) + j + 1] = 0xff; // B
            TempBuffer[(i * SUBFRAME_HORIZONTAL_SIZE * 3) + j + 2] = 0x00; // R
        }
    }

    int radius = 60; // Radius of the circles
    int shadowOffset = 10; // Offset for the shadow
    int circleColorR = 0xff; // Base Red
    int circleColorG = 0xff; // Base Green
    int circleColorB = 0xff; // Base Blue
    int shadowColorR = 0x50; // Shadow Red
    int shadowColorG = 0x50; // Shadow Green
    int shadowColorB = 0x50; // Shadow Blue

    // Function to check if a point is inside a circle
    int isInsideCircle(int x, int y, int cx, int cy, int r) {
        int dx = x - cx;
        int dy = y - cy;
        return (dx * dx + dy * dy) <= (r * r);
    }

    // Draw circles with shading and shadow to simulate 3D
    for (int row = 0; row < rows; ++row) {
        for (int col = 0; col < columns; ++col) {
            int centerX = (col * BlockWidth) + (BlockWidth / 2);
            int centerY = (row * BlockHeight) + (BlockHeight / 2);

            // Render the shadow
            for (int y = centerY - radius + shadowOffset; y <= centerY + radius + shadowOffset; ++y) {
                for (int x = centerX - radius + shadowOffset; x <= centerX + radius + shadowOffset; ++x) {
                    if (x >= 0 && x < SUBFRAME_HORIZONTAL_SIZE && y >= 0 && y < SUBFRAME_VERTICAL_SIZE &&
                        isInsideCircle(x, y, centerX + shadowOffset, centerY + shadowOffset, radius)) {
                        int offset = (y * SUBFRAME_HORIZONTAL_SIZE + x) * 3;
                        TempBuffer[offset] = shadowColorG;     // G
                        TempBuffer[offset + 1] = shadowColorB; // B
                        TempBuffer[offset + 2] = shadowColorR; // R
                    }
                }
            }

            // Render the circle with shading
            for (int y = centerY - radius; y <= centerY + radius; ++y) {
                for (int x = centerX - radius; x <= centerX + radius; ++x) {
                    if (x >= 0 && x < SUBFRAME_HORIZONTAL_SIZE && y >= 0 && y < SUBFRAME_VERTICAL_SIZE &&
                        isInsideCircle(x, y, centerX, centerY, radius)) {
                        // Calculate shading based on distance from a simulated light source
                        int dx = x - centerX;
                        int dy = y - centerY;

                        // Simulated light source from the top-left corner of the circle
                        int lightIntensity = (dx + dy + radius) / (2 * radius) * 128; // Scale shading to [0, 128]
                        if (lightIntensity < 0) lightIntensity = 0;
                        if (lightIntensity > 128) lightIntensity = 128;

                        // Apply shading
                        unsigned char shadedR = circleColorR - lightIntensity;
                        unsigned char shadedG = circleColorG - lightIntensity;
                        unsigned char shadedB = circleColorB - lightIntensity;

                        int offset = (y * SUBFRAME_HORIZONTAL_SIZE + x) * 3;
                        TempBuffer[offset] = shadedG;     // G
                        TempBuffer[offset + 1] = shadedB; // B
                        TempBuffer[offset + 2] = shadedR; // R
                    }
                }
            }
        }
    }

    // Copy TempBuffer back to the original buffer
    memcpy(buffer, TempBuffer, TOTAL_FRAME_SIZE);
}

//https://github.com/Xilinx/embeddedsw/blob/master/XilinxProcessorIPLib/drivers/axivdma/examples/vdma.c
//https://github.com/Xilinx/embeddedsw/blob/master/XilinxProcessorIPLib/drivers/axivdma/examples/xaxivdma_example_intr.c
//https://github.com/Xilinx/embeddedsw/blob/master/XilinxProcessorIPLib/drivers/scugic/src/xscugic.h


