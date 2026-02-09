// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1.2 (win64) Build 5164865 Thu Sep  5 14:37:11 MDT 2024
// Date        : Fri Dec 27 20:43:33 2024
// Host        : MSI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_eFPGA_AXI_HDMI_filte_0_0_sim_netlist.v
// Design      : design_1_eFPGA_AXI_HDMI_filte_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ColorFilter_axi
   (m_axis_video_tdata,
    m_axis_video_tvalid,
    s_axis_video_tready,
    m_axis_video_tready,
    ARESETN,
    s_axis_video_tdata,
    ACLK,
    s_axis_video_tvalid);
  output [23:0]m_axis_video_tdata;
  output m_axis_video_tvalid;
  output s_axis_video_tready;
  input m_axis_video_tready;
  input ARESETN;
  input [23:0]s_axis_video_tdata;
  input ACLK;
  input s_axis_video_tvalid;

  wire ACLK;
  wire ARESETN;
  wire [23:0]m_axis_video_tdata;
  wire \m_axis_video_tdata[23]_i_1_n_0 ;
  wire \m_axis_video_tdata[23]_i_2_n_0 ;
  wire \m_axis_video_tdata[23]_i_3_n_0 ;
  wire \m_axis_video_tdata[23]_i_4_n_0 ;
  wire \m_axis_video_tdata[23]_i_5_n_0 ;
  wire \m_axis_video_tdata[23]_i_6_n_0 ;
  wire \m_axis_video_tdata[23]_i_7_n_0 ;
  wire m_axis_video_tready;
  wire m_axis_video_tvalid;
  wire m_axis_video_tvalid_i_1_n_0;
  wire [23:0]s_axis_video_tdata;
  wire s_axis_video_tready;
  wire s_axis_video_tready_i_1_n_0;
  wire s_axis_video_tvalid;

  LUT4 #(
    .INIT(16'h10FF)) 
    \m_axis_video_tdata[23]_i_1 
       (.I0(\m_axis_video_tdata[23]_i_3_n_0 ),
        .I1(\m_axis_video_tdata[23]_i_4_n_0 ),
        .I2(m_axis_video_tready),
        .I3(ARESETN),
        .O(\m_axis_video_tdata[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_video_tdata[23]_i_2 
       (.I0(m_axis_video_tready),
        .I1(s_axis_video_tvalid),
        .O(\m_axis_video_tdata[23]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h557F)) 
    \m_axis_video_tdata[23]_i_3 
       (.I0(s_axis_video_tvalid),
        .I1(s_axis_video_tdata[21]),
        .I2(\m_axis_video_tdata[23]_i_5_n_0 ),
        .I3(s_axis_video_tdata[23]),
        .O(\m_axis_video_tdata[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEFFFFFFFFF)) 
    \m_axis_video_tdata[23]_i_4 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[7]),
        .I2(\m_axis_video_tdata[23]_i_6_n_0 ),
        .I3(s_axis_video_tdata[14]),
        .I4(s_axis_video_tdata[15]),
        .I5(\m_axis_video_tdata[23]_i_7_n_0 ),
        .O(\m_axis_video_tdata[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA88888)) 
    \m_axis_video_tdata[23]_i_5 
       (.I0(s_axis_video_tdata[22]),
        .I1(s_axis_video_tdata[20]),
        .I2(s_axis_video_tdata[17]),
        .I3(s_axis_video_tdata[16]),
        .I4(s_axis_video_tdata[18]),
        .I5(s_axis_video_tdata[19]),
        .O(\m_axis_video_tdata[23]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h01FFFFFF)) 
    \m_axis_video_tdata[23]_i_6 
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[5]),
        .I4(s_axis_video_tdata[4]),
        .O(\m_axis_video_tdata[23]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h01FFFFFF)) 
    \m_axis_video_tdata[23]_i_7 
       (.I0(s_axis_video_tdata[9]),
        .I1(s_axis_video_tdata[10]),
        .I2(s_axis_video_tdata[11]),
        .I3(s_axis_video_tdata[13]),
        .I4(s_axis_video_tdata[12]),
        .O(\m_axis_video_tdata[23]_i_7_n_0 ));
  FDRE \m_axis_video_tdata_reg[0] 
       (.C(ACLK),
        .CE(\m_axis_video_tdata[23]_i_2_n_0 ),
        .D(s_axis_video_tdata[0]),
        .Q(m_axis_video_tdata[0]),
        .R(\m_axis_video_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_video_tdata_reg[10] 
       (.C(ACLK),
        .CE(\m_axis_video_tdata[23]_i_2_n_0 ),
        .D(s_axis_video_tdata[10]),
        .Q(m_axis_video_tdata[10]),
        .R(\m_axis_video_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_video_tdata_reg[11] 
       (.C(ACLK),
        .CE(\m_axis_video_tdata[23]_i_2_n_0 ),
        .D(s_axis_video_tdata[11]),
        .Q(m_axis_video_tdata[11]),
        .R(\m_axis_video_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_video_tdata_reg[12] 
       (.C(ACLK),
        .CE(\m_axis_video_tdata[23]_i_2_n_0 ),
        .D(s_axis_video_tdata[12]),
        .Q(m_axis_video_tdata[12]),
        .R(\m_axis_video_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_video_tdata_reg[13] 
       (.C(ACLK),
        .CE(\m_axis_video_tdata[23]_i_2_n_0 ),
        .D(s_axis_video_tdata[13]),
        .Q(m_axis_video_tdata[13]),
        .R(\m_axis_video_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_video_tdata_reg[14] 
       (.C(ACLK),
        .CE(\m_axis_video_tdata[23]_i_2_n_0 ),
        .D(s_axis_video_tdata[14]),
        .Q(m_axis_video_tdata[14]),
        .R(\m_axis_video_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_video_tdata_reg[15] 
       (.C(ACLK),
        .CE(\m_axis_video_tdata[23]_i_2_n_0 ),
        .D(s_axis_video_tdata[15]),
        .Q(m_axis_video_tdata[15]),
        .R(\m_axis_video_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_video_tdata_reg[16] 
       (.C(ACLK),
        .CE(\m_axis_video_tdata[23]_i_2_n_0 ),
        .D(s_axis_video_tdata[16]),
        .Q(m_axis_video_tdata[16]),
        .R(\m_axis_video_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_video_tdata_reg[17] 
       (.C(ACLK),
        .CE(\m_axis_video_tdata[23]_i_2_n_0 ),
        .D(s_axis_video_tdata[17]),
        .Q(m_axis_video_tdata[17]),
        .R(\m_axis_video_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_video_tdata_reg[18] 
       (.C(ACLK),
        .CE(\m_axis_video_tdata[23]_i_2_n_0 ),
        .D(s_axis_video_tdata[18]),
        .Q(m_axis_video_tdata[18]),
        .R(\m_axis_video_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_video_tdata_reg[19] 
       (.C(ACLK),
        .CE(\m_axis_video_tdata[23]_i_2_n_0 ),
        .D(s_axis_video_tdata[19]),
        .Q(m_axis_video_tdata[19]),
        .R(\m_axis_video_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_video_tdata_reg[1] 
       (.C(ACLK),
        .CE(\m_axis_video_tdata[23]_i_2_n_0 ),
        .D(s_axis_video_tdata[1]),
        .Q(m_axis_video_tdata[1]),
        .R(\m_axis_video_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_video_tdata_reg[20] 
       (.C(ACLK),
        .CE(\m_axis_video_tdata[23]_i_2_n_0 ),
        .D(s_axis_video_tdata[20]),
        .Q(m_axis_video_tdata[20]),
        .R(\m_axis_video_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_video_tdata_reg[21] 
       (.C(ACLK),
        .CE(\m_axis_video_tdata[23]_i_2_n_0 ),
        .D(s_axis_video_tdata[21]),
        .Q(m_axis_video_tdata[21]),
        .R(\m_axis_video_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_video_tdata_reg[22] 
       (.C(ACLK),
        .CE(\m_axis_video_tdata[23]_i_2_n_0 ),
        .D(s_axis_video_tdata[22]),
        .Q(m_axis_video_tdata[22]),
        .R(\m_axis_video_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_video_tdata_reg[23] 
       (.C(ACLK),
        .CE(\m_axis_video_tdata[23]_i_2_n_0 ),
        .D(s_axis_video_tdata[23]),
        .Q(m_axis_video_tdata[23]),
        .R(\m_axis_video_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_video_tdata_reg[2] 
       (.C(ACLK),
        .CE(\m_axis_video_tdata[23]_i_2_n_0 ),
        .D(s_axis_video_tdata[2]),
        .Q(m_axis_video_tdata[2]),
        .R(\m_axis_video_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_video_tdata_reg[3] 
       (.C(ACLK),
        .CE(\m_axis_video_tdata[23]_i_2_n_0 ),
        .D(s_axis_video_tdata[3]),
        .Q(m_axis_video_tdata[3]),
        .R(\m_axis_video_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_video_tdata_reg[4] 
       (.C(ACLK),
        .CE(\m_axis_video_tdata[23]_i_2_n_0 ),
        .D(s_axis_video_tdata[4]),
        .Q(m_axis_video_tdata[4]),
        .R(\m_axis_video_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_video_tdata_reg[5] 
       (.C(ACLK),
        .CE(\m_axis_video_tdata[23]_i_2_n_0 ),
        .D(s_axis_video_tdata[5]),
        .Q(m_axis_video_tdata[5]),
        .R(\m_axis_video_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_video_tdata_reg[6] 
       (.C(ACLK),
        .CE(\m_axis_video_tdata[23]_i_2_n_0 ),
        .D(s_axis_video_tdata[6]),
        .Q(m_axis_video_tdata[6]),
        .R(\m_axis_video_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_video_tdata_reg[7] 
       (.C(ACLK),
        .CE(\m_axis_video_tdata[23]_i_2_n_0 ),
        .D(s_axis_video_tdata[7]),
        .Q(m_axis_video_tdata[7]),
        .R(\m_axis_video_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_video_tdata_reg[8] 
       (.C(ACLK),
        .CE(\m_axis_video_tdata[23]_i_2_n_0 ),
        .D(s_axis_video_tdata[8]),
        .Q(m_axis_video_tdata[8]),
        .R(\m_axis_video_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_video_tdata_reg[9] 
       (.C(ACLK),
        .CE(\m_axis_video_tdata[23]_i_2_n_0 ),
        .D(s_axis_video_tdata[9]),
        .Q(m_axis_video_tdata[9]),
        .R(\m_axis_video_tdata[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    m_axis_video_tvalid_i_1
       (.I0(m_axis_video_tvalid),
        .I1(m_axis_video_tready),
        .I2(s_axis_video_tvalid),
        .I3(ARESETN),
        .O(m_axis_video_tvalid_i_1_n_0));
  FDRE m_axis_video_tvalid_reg
       (.C(ACLK),
        .CE(1'b1),
        .D(m_axis_video_tvalid_i_1_n_0),
        .Q(m_axis_video_tvalid),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    s_axis_video_tready_i_1
       (.I0(m_axis_video_tready),
        .I1(ARESETN),
        .O(s_axis_video_tready_i_1_n_0));
  FDRE s_axis_video_tready_reg
       (.C(ACLK),
        .CE(1'b1),
        .D(s_axis_video_tready_i_1_n_0),
        .Q(s_axis_video_tready),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_eFPGA_AXI_HDMI_filte_0_0,eFPGA_AXI_HDMI_filter_Core1,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "eFPGA_AXI_HDMI_filter_Core1,Vivado 2024.1.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (ACLK,
    ARESETN,
    s_axis_video_tdata,
    s_axis_video_tvalid,
    s_axis_video_tready,
    m_axis_video_tdata,
    m_axis_video_tvalid,
    m_axis_video_tready);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 ACLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME ACLK, ASSOCIATED_RESET ARESETN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input ACLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 ARESETN RST" *) (* x_interface_parameter = "XIL_INTERFACENAME ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ARESETN;
  input [23:0]s_axis_video_tdata;
  input s_axis_video_tvalid;
  output s_axis_video_tready;
  output [23:0]m_axis_video_tdata;
  output m_axis_video_tvalid;
  input m_axis_video_tready;

  wire ACLK;
  wire ARESETN;
  wire [23:0]m_axis_video_tdata;
  wire m_axis_video_tready;
  wire m_axis_video_tvalid;
  wire [23:0]s_axis_video_tdata;
  wire s_axis_video_tready;
  wire s_axis_video_tvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_eFPGA_AXI_HDMI_filter_Core1 U0
       (.ACLK(ACLK),
        .ARESETN(ARESETN),
        .m_axis_video_tdata(m_axis_video_tdata),
        .m_axis_video_tready(m_axis_video_tready),
        .m_axis_video_tvalid(m_axis_video_tvalid),
        .s_axis_video_tdata(s_axis_video_tdata),
        .s_axis_video_tready(s_axis_video_tready),
        .s_axis_video_tvalid(s_axis_video_tvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_eFPGA_AXI_HDMI_filter_Core1
   (m_axis_video_tdata,
    m_axis_video_tvalid,
    s_axis_video_tready,
    m_axis_video_tready,
    ARESETN,
    s_axis_video_tdata,
    ACLK,
    s_axis_video_tvalid);
  output [23:0]m_axis_video_tdata;
  output m_axis_video_tvalid;
  output s_axis_video_tready;
  input m_axis_video_tready;
  input ARESETN;
  input [23:0]s_axis_video_tdata;
  input ACLK;
  input s_axis_video_tvalid;

  wire ACLK;
  wire ARESETN;
  wire [23:0]m_axis_video_tdata;
  wire m_axis_video_tready;
  wire m_axis_video_tvalid;
  wire [23:0]s_axis_video_tdata;
  wire s_axis_video_tready;
  wire s_axis_video_tvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ColorFilter_axi ColorFilter_inst
       (.ACLK(ACLK),
        .ARESETN(ARESETN),
        .m_axis_video_tdata(m_axis_video_tdata),
        .m_axis_video_tready(m_axis_video_tready),
        .m_axis_video_tvalid(m_axis_video_tvalid),
        .s_axis_video_tdata(s_axis_video_tdata),
        .s_axis_video_tready(s_axis_video_tready),
        .s_axis_video_tvalid(s_axis_video_tvalid));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
