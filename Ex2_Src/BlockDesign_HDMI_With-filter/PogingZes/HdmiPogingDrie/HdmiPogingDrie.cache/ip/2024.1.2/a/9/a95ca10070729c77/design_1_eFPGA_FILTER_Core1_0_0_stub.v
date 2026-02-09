// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1.2 (win64) Build 5164865 Thu Sep  5 14:37:11 MDT 2024
// Date        : Sun Dec 29 13:37:37 2024
// Host        : MSI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_eFPGA_FILTER_Core1_0_0_stub.v
// Design      : design_1_eFPGA_FILTER_Core1_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "eFPGA_FILTER_Core1,Vivado 2024.1.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(ACLK, ARESETN, S_AXIS_TDATA, S_AXIS_TVALID, 
  S_AXIS_TREADY, M_AXIS_TDATA, M_AXIS_TVALID, M_AXIS_TREADY)
/* synthesis syn_black_box black_box_pad_pin="ARESETN,S_AXIS_TDATA[23:0],S_AXIS_TVALID,S_AXIS_TREADY,M_AXIS_TDATA[23:0],M_AXIS_TVALID,M_AXIS_TREADY" */
/* synthesis syn_force_seq_prim="ACLK" */;
  input ACLK /* synthesis syn_isclock = 1 */;
  input ARESETN;
  input [23:0]S_AXIS_TDATA;
  input S_AXIS_TVALID;
  output S_AXIS_TREADY;
  output [23:0]M_AXIS_TDATA;
  output M_AXIS_TVALID;
  input M_AXIS_TREADY;
endmodule
