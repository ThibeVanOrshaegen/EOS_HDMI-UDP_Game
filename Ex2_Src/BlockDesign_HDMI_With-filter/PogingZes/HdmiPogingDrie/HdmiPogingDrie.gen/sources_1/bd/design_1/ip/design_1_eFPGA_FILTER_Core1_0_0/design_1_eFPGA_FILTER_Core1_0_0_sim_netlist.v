// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1.2 (win64) Build 5164865 Thu Sep  5 14:37:11 MDT 2024
// Date        : Sun Dec 29 13:37:37 2024
// Host        : MSI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/EOS/EOS_HDMI-UDP_Game/Ex2_Src/BlockDesign_HDMI_With-filter/PogingZes/HdmiPogingDrie/HdmiPogingDrie.gen/sources_1/bd/design_1/ip/design_1_eFPGA_FILTER_Core1_0_0/design_1_eFPGA_FILTER_Core1_0_0_sim_netlist.v
// Design      : design_1_eFPGA_FILTER_Core1_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_eFPGA_FILTER_Core1_0_0,eFPGA_FILTER_Core1,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "eFPGA_FILTER_Core1,Vivado 2024.1.2" *) 
(* NotValidForBitStream *)
module design_1_eFPGA_FILTER_Core1_0_0
   (ACLK,
    ARESETN,
    S_AXIS_TDATA,
    S_AXIS_TVALID,
    S_AXIS_TREADY,
    M_AXIS_TDATA,
    M_AXIS_TVALID,
    M_AXIS_TREADY);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 ACLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME ACLK, ASSOCIATED_BUSIF M_AXIS:S_AXIS, ASSOCIATED_RESET ARESETN, FREQ_TOLERANCE_HZ -1, FREQ_HZ 148500000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input ACLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 ARESETN RST" *) (* x_interface_parameter = "XIL_INTERFACENAME ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ARESETN;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 148500000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input [23:0]S_AXIS_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input S_AXIS_TVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output S_AXIS_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 148500000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output [23:0]M_AXIS_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output M_AXIS_TVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input M_AXIS_TREADY;

  wire \<const1> ;
  wire ACLK;
  wire ARESETN;
  wire [23:0]M_AXIS_TDATA;
  wire M_AXIS_TREADY;
  wire M_AXIS_TVALID;
  wire [23:0]S_AXIS_TDATA;
  wire S_AXIS_TVALID;

  assign S_AXIS_TREADY = \<const1> ;
  design_1_eFPGA_FILTER_Core1_0_0_eFPGA_FILTER_Core1 U0
       (.ACLK(ACLK),
        .ARESETN(ARESETN),
        .M_AXIS_TDATA(M_AXIS_TDATA),
        .M_AXIS_TREADY(M_AXIS_TREADY),
        .M_AXIS_TVALID(M_AXIS_TVALID),
        .S_AXIS_TDATA(S_AXIS_TDATA),
        .S_AXIS_TVALID(S_AXIS_TVALID));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "eFPGA_FILTER_Core1" *) 
module design_1_eFPGA_FILTER_Core1_0_0_eFPGA_FILTER_Core1
   (M_AXIS_TDATA,
    M_AXIS_TVALID,
    S_AXIS_TVALID,
    ACLK,
    S_AXIS_TDATA,
    ARESETN,
    M_AXIS_TREADY);
  output [23:0]M_AXIS_TDATA;
  output M_AXIS_TVALID;
  input S_AXIS_TVALID;
  input ACLK;
  input [23:0]S_AXIS_TDATA;
  input ARESETN;
  input M_AXIS_TREADY;

  wire ACLK;
  wire ARESETN;
  wire [23:0]M_AXIS_TDATA;
  wire M_AXIS_TREADY;
  wire M_AXIS_TVALID;
  wire [23:0]S_AXIS_TDATA;
  wire S_AXIS_TVALID;
  wire slave_stream_inst_n_0;
  wire slave_stream_inst_n_1;
  wire slave_stream_inst_n_10;
  wire slave_stream_inst_n_11;
  wire slave_stream_inst_n_12;
  wire slave_stream_inst_n_13;
  wire slave_stream_inst_n_14;
  wire slave_stream_inst_n_15;
  wire slave_stream_inst_n_16;
  wire slave_stream_inst_n_17;
  wire slave_stream_inst_n_18;
  wire slave_stream_inst_n_19;
  wire slave_stream_inst_n_2;
  wire slave_stream_inst_n_20;
  wire slave_stream_inst_n_21;
  wire slave_stream_inst_n_22;
  wire slave_stream_inst_n_23;
  wire slave_stream_inst_n_24;
  wire slave_stream_inst_n_25;
  wire slave_stream_inst_n_3;
  wire slave_stream_inst_n_4;
  wire slave_stream_inst_n_5;
  wire slave_stream_inst_n_6;
  wire slave_stream_inst_n_7;
  wire slave_stream_inst_n_8;
  wire slave_stream_inst_n_9;

  design_1_eFPGA_FILTER_Core1_0_0_eFPGA_FILTER_Core1_master_stream_v2_0_M00_AXIS master_stream_inst
       (.ACLK(ACLK),
        .I1(slave_stream_inst_n_1),
        .M_AXIS_TDATA(M_AXIS_TDATA),
        .\M_AXIS_TDATA_reg[23]_0 (slave_stream_inst_n_0),
        .M_AXIS_TVALID(M_AXIS_TVALID),
        .Q({slave_stream_inst_n_2,slave_stream_inst_n_3,slave_stream_inst_n_4,slave_stream_inst_n_5,slave_stream_inst_n_6,slave_stream_inst_n_7,slave_stream_inst_n_8,slave_stream_inst_n_9,slave_stream_inst_n_10,slave_stream_inst_n_11,slave_stream_inst_n_12,slave_stream_inst_n_13,slave_stream_inst_n_14,slave_stream_inst_n_15,slave_stream_inst_n_16,slave_stream_inst_n_17,slave_stream_inst_n_18,slave_stream_inst_n_19,slave_stream_inst_n_20,slave_stream_inst_n_21,slave_stream_inst_n_22,slave_stream_inst_n_23,slave_stream_inst_n_24,slave_stream_inst_n_25}));
  design_1_eFPGA_FILTER_Core1_0_0_eFPGA_FILTER_Core1_slave_stream_v2_0_S00_AXIS slave_stream_inst
       (.ACLK(ACLK),
        .ARESETN(ARESETN),
        .ARESETN_0(slave_stream_inst_n_0),
        .I1(slave_stream_inst_n_1),
        .M_AXIS_TREADY(M_AXIS_TREADY),
        .Q({slave_stream_inst_n_2,slave_stream_inst_n_3,slave_stream_inst_n_4,slave_stream_inst_n_5,slave_stream_inst_n_6,slave_stream_inst_n_7,slave_stream_inst_n_8,slave_stream_inst_n_9,slave_stream_inst_n_10,slave_stream_inst_n_11,slave_stream_inst_n_12,slave_stream_inst_n_13,slave_stream_inst_n_14,slave_stream_inst_n_15,slave_stream_inst_n_16,slave_stream_inst_n_17,slave_stream_inst_n_18,slave_stream_inst_n_19,slave_stream_inst_n_20,slave_stream_inst_n_21,slave_stream_inst_n_22,slave_stream_inst_n_23,slave_stream_inst_n_24,slave_stream_inst_n_25}),
        .S_AXIS_TDATA(S_AXIS_TDATA),
        .S_AXIS_TVALID(S_AXIS_TVALID));
endmodule

(* ORIG_REF_NAME = "eFPGA_FILTER_Core1_master_stream_v2_0_M00_AXIS" *) 
module design_1_eFPGA_FILTER_Core1_0_0_eFPGA_FILTER_Core1_master_stream_v2_0_M00_AXIS
   (M_AXIS_TVALID,
    M_AXIS_TDATA,
    I1,
    ACLK,
    \M_AXIS_TDATA_reg[23]_0 ,
    Q);
  output M_AXIS_TVALID;
  output [23:0]M_AXIS_TDATA;
  input I1;
  input ACLK;
  input \M_AXIS_TDATA_reg[23]_0 ;
  input [23:0]Q;

  wire ACLK;
  wire I1;
  wire [23:0]M_AXIS_TDATA;
  wire \M_AXIS_TDATA_reg[23]_0 ;
  wire M_AXIS_TVALID;
  wire [23:0]Q;

  FDCE \M_AXIS_TDATA_reg[0] 
       (.C(ACLK),
        .CE(I1),
        .CLR(\M_AXIS_TDATA_reg[23]_0 ),
        .D(Q[0]),
        .Q(M_AXIS_TDATA[0]));
  FDCE \M_AXIS_TDATA_reg[10] 
       (.C(ACLK),
        .CE(I1),
        .CLR(\M_AXIS_TDATA_reg[23]_0 ),
        .D(Q[10]),
        .Q(M_AXIS_TDATA[10]));
  FDCE \M_AXIS_TDATA_reg[11] 
       (.C(ACLK),
        .CE(I1),
        .CLR(\M_AXIS_TDATA_reg[23]_0 ),
        .D(Q[11]),
        .Q(M_AXIS_TDATA[11]));
  FDCE \M_AXIS_TDATA_reg[12] 
       (.C(ACLK),
        .CE(I1),
        .CLR(\M_AXIS_TDATA_reg[23]_0 ),
        .D(Q[12]),
        .Q(M_AXIS_TDATA[12]));
  FDCE \M_AXIS_TDATA_reg[13] 
       (.C(ACLK),
        .CE(I1),
        .CLR(\M_AXIS_TDATA_reg[23]_0 ),
        .D(Q[13]),
        .Q(M_AXIS_TDATA[13]));
  FDCE \M_AXIS_TDATA_reg[14] 
       (.C(ACLK),
        .CE(I1),
        .CLR(\M_AXIS_TDATA_reg[23]_0 ),
        .D(Q[14]),
        .Q(M_AXIS_TDATA[14]));
  FDCE \M_AXIS_TDATA_reg[15] 
       (.C(ACLK),
        .CE(I1),
        .CLR(\M_AXIS_TDATA_reg[23]_0 ),
        .D(Q[15]),
        .Q(M_AXIS_TDATA[15]));
  FDCE \M_AXIS_TDATA_reg[16] 
       (.C(ACLK),
        .CE(I1),
        .CLR(\M_AXIS_TDATA_reg[23]_0 ),
        .D(Q[16]),
        .Q(M_AXIS_TDATA[16]));
  FDCE \M_AXIS_TDATA_reg[17] 
       (.C(ACLK),
        .CE(I1),
        .CLR(\M_AXIS_TDATA_reg[23]_0 ),
        .D(Q[17]),
        .Q(M_AXIS_TDATA[17]));
  FDCE \M_AXIS_TDATA_reg[18] 
       (.C(ACLK),
        .CE(I1),
        .CLR(\M_AXIS_TDATA_reg[23]_0 ),
        .D(Q[18]),
        .Q(M_AXIS_TDATA[18]));
  FDCE \M_AXIS_TDATA_reg[19] 
       (.C(ACLK),
        .CE(I1),
        .CLR(\M_AXIS_TDATA_reg[23]_0 ),
        .D(Q[19]),
        .Q(M_AXIS_TDATA[19]));
  FDCE \M_AXIS_TDATA_reg[1] 
       (.C(ACLK),
        .CE(I1),
        .CLR(\M_AXIS_TDATA_reg[23]_0 ),
        .D(Q[1]),
        .Q(M_AXIS_TDATA[1]));
  FDCE \M_AXIS_TDATA_reg[20] 
       (.C(ACLK),
        .CE(I1),
        .CLR(\M_AXIS_TDATA_reg[23]_0 ),
        .D(Q[20]),
        .Q(M_AXIS_TDATA[20]));
  FDCE \M_AXIS_TDATA_reg[21] 
       (.C(ACLK),
        .CE(I1),
        .CLR(\M_AXIS_TDATA_reg[23]_0 ),
        .D(Q[21]),
        .Q(M_AXIS_TDATA[21]));
  FDCE \M_AXIS_TDATA_reg[22] 
       (.C(ACLK),
        .CE(I1),
        .CLR(\M_AXIS_TDATA_reg[23]_0 ),
        .D(Q[22]),
        .Q(M_AXIS_TDATA[22]));
  FDCE \M_AXIS_TDATA_reg[23] 
       (.C(ACLK),
        .CE(I1),
        .CLR(\M_AXIS_TDATA_reg[23]_0 ),
        .D(Q[23]),
        .Q(M_AXIS_TDATA[23]));
  FDCE \M_AXIS_TDATA_reg[2] 
       (.C(ACLK),
        .CE(I1),
        .CLR(\M_AXIS_TDATA_reg[23]_0 ),
        .D(Q[2]),
        .Q(M_AXIS_TDATA[2]));
  FDCE \M_AXIS_TDATA_reg[3] 
       (.C(ACLK),
        .CE(I1),
        .CLR(\M_AXIS_TDATA_reg[23]_0 ),
        .D(Q[3]),
        .Q(M_AXIS_TDATA[3]));
  FDCE \M_AXIS_TDATA_reg[4] 
       (.C(ACLK),
        .CE(I1),
        .CLR(\M_AXIS_TDATA_reg[23]_0 ),
        .D(Q[4]),
        .Q(M_AXIS_TDATA[4]));
  FDCE \M_AXIS_TDATA_reg[5] 
       (.C(ACLK),
        .CE(I1),
        .CLR(\M_AXIS_TDATA_reg[23]_0 ),
        .D(Q[5]),
        .Q(M_AXIS_TDATA[5]));
  FDCE \M_AXIS_TDATA_reg[6] 
       (.C(ACLK),
        .CE(I1),
        .CLR(\M_AXIS_TDATA_reg[23]_0 ),
        .D(Q[6]),
        .Q(M_AXIS_TDATA[6]));
  FDCE \M_AXIS_TDATA_reg[7] 
       (.C(ACLK),
        .CE(I1),
        .CLR(\M_AXIS_TDATA_reg[23]_0 ),
        .D(Q[7]),
        .Q(M_AXIS_TDATA[7]));
  FDCE \M_AXIS_TDATA_reg[8] 
       (.C(ACLK),
        .CE(I1),
        .CLR(\M_AXIS_TDATA_reg[23]_0 ),
        .D(Q[8]),
        .Q(M_AXIS_TDATA[8]));
  FDCE \M_AXIS_TDATA_reg[9] 
       (.C(ACLK),
        .CE(I1),
        .CLR(\M_AXIS_TDATA_reg[23]_0 ),
        .D(Q[9]),
        .Q(M_AXIS_TDATA[9]));
  FDCE M_AXIS_TVALID_reg
       (.C(ACLK),
        .CE(1'b1),
        .CLR(\M_AXIS_TDATA_reg[23]_0 ),
        .D(I1),
        .Q(M_AXIS_TVALID));
endmodule

(* ORIG_REF_NAME = "eFPGA_FILTER_Core1_slave_stream_v2_0_S00_AXIS" *) 
module design_1_eFPGA_FILTER_Core1_0_0_eFPGA_FILTER_Core1_slave_stream_v2_0_S00_AXIS
   (ARESETN_0,
    I1,
    Q,
    S_AXIS_TVALID,
    ACLK,
    ARESETN,
    M_AXIS_TREADY,
    S_AXIS_TDATA);
  output ARESETN_0;
  output I1;
  output [23:0]Q;
  input S_AXIS_TVALID;
  input ACLK;
  input ARESETN;
  input M_AXIS_TREADY;
  input [23:0]S_AXIS_TDATA;

  wire ACLK;
  wire ARESETN;
  wire ARESETN_0;
  wire I1;
  wire \M_AXIS_TDATA[23]_i_2_n_0 ;
  wire M_AXIS_TREADY;
  wire [23:0]Q;
  wire [23:0]S_AXIS_TDATA;
  wire S_AXIS_TVALID;
  wire intermediate_valid;
  wire [23:16]p_0_in;

  LUT6 #(
    .INIT(64'h00000002AAAAAAAA)) 
    \M_AXIS_TDATA[16]_i_1 
       (.I0(S_AXIS_TDATA[16]),
        .I1(S_AXIS_TDATA[18]),
        .I2(S_AXIS_TDATA[19]),
        .I3(S_AXIS_TDATA[17]),
        .I4(\M_AXIS_TDATA[23]_i_2_n_0 ),
        .I5(S_AXIS_TDATA[23]),
        .O(p_0_in[16]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \M_AXIS_TDATA[17]_i_1 
       (.I0(S_AXIS_TDATA[17]),
        .I1(S_AXIS_TDATA[23]),
        .O(p_0_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \M_AXIS_TDATA[18]_i_1 
       (.I0(S_AXIS_TDATA[18]),
        .I1(S_AXIS_TDATA[23]),
        .O(p_0_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \M_AXIS_TDATA[19]_i_1 
       (.I0(S_AXIS_TDATA[19]),
        .I1(S_AXIS_TDATA[23]),
        .O(p_0_in[19]));
  LUT6 #(
    .INIT(64'h00000002AAAAAAAA)) 
    \M_AXIS_TDATA[20]_i_1 
       (.I0(S_AXIS_TDATA[20]),
        .I1(S_AXIS_TDATA[18]),
        .I2(S_AXIS_TDATA[19]),
        .I3(S_AXIS_TDATA[17]),
        .I4(\M_AXIS_TDATA[23]_i_2_n_0 ),
        .I5(S_AXIS_TDATA[23]),
        .O(p_0_in[20]));
  LUT6 #(
    .INIT(64'h00000002AAAAAAAA)) 
    \M_AXIS_TDATA[21]_i_1 
       (.I0(S_AXIS_TDATA[21]),
        .I1(S_AXIS_TDATA[18]),
        .I2(S_AXIS_TDATA[19]),
        .I3(S_AXIS_TDATA[17]),
        .I4(\M_AXIS_TDATA[23]_i_2_n_0 ),
        .I5(S_AXIS_TDATA[23]),
        .O(p_0_in[21]));
  LUT6 #(
    .INIT(64'h00000002AAAAAAAA)) 
    \M_AXIS_TDATA[22]_i_1 
       (.I0(S_AXIS_TDATA[22]),
        .I1(S_AXIS_TDATA[18]),
        .I2(S_AXIS_TDATA[19]),
        .I3(S_AXIS_TDATA[17]),
        .I4(\M_AXIS_TDATA[23]_i_2_n_0 ),
        .I5(S_AXIS_TDATA[23]),
        .O(p_0_in[22]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \M_AXIS_TDATA[23]_i_1 
       (.I0(S_AXIS_TDATA[18]),
        .I1(S_AXIS_TDATA[19]),
        .I2(S_AXIS_TDATA[17]),
        .I3(\M_AXIS_TDATA[23]_i_2_n_0 ),
        .I4(S_AXIS_TDATA[23]),
        .O(p_0_in[23]));
  LUT2 #(
    .INIT(4'h8)) 
    \M_AXIS_TDATA[23]_i_1__0 
       (.I0(intermediate_valid),
        .I1(M_AXIS_TREADY),
        .O(I1));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \M_AXIS_TDATA[23]_i_2 
       (.I0(S_AXIS_TDATA[21]),
        .I1(S_AXIS_TDATA[20]),
        .I2(S_AXIS_TDATA[16]),
        .I3(S_AXIS_TDATA[22]),
        .O(\M_AXIS_TDATA[23]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \M_AXIS_TDATA[23]_i_2__0 
       (.I0(ARESETN),
        .O(ARESETN_0));
  FDCE \M_AXIS_TDATA_reg[0] 
       (.C(ACLK),
        .CE(S_AXIS_TVALID),
        .CLR(ARESETN_0),
        .D(S_AXIS_TDATA[0]),
        .Q(Q[0]));
  FDCE \M_AXIS_TDATA_reg[10] 
       (.C(ACLK),
        .CE(S_AXIS_TVALID),
        .CLR(ARESETN_0),
        .D(S_AXIS_TDATA[10]),
        .Q(Q[10]));
  FDCE \M_AXIS_TDATA_reg[11] 
       (.C(ACLK),
        .CE(S_AXIS_TVALID),
        .CLR(ARESETN_0),
        .D(S_AXIS_TDATA[11]),
        .Q(Q[11]));
  FDCE \M_AXIS_TDATA_reg[12] 
       (.C(ACLK),
        .CE(S_AXIS_TVALID),
        .CLR(ARESETN_0),
        .D(S_AXIS_TDATA[12]),
        .Q(Q[12]));
  FDCE \M_AXIS_TDATA_reg[13] 
       (.C(ACLK),
        .CE(S_AXIS_TVALID),
        .CLR(ARESETN_0),
        .D(S_AXIS_TDATA[13]),
        .Q(Q[13]));
  FDCE \M_AXIS_TDATA_reg[14] 
       (.C(ACLK),
        .CE(S_AXIS_TVALID),
        .CLR(ARESETN_0),
        .D(S_AXIS_TDATA[14]),
        .Q(Q[14]));
  FDCE \M_AXIS_TDATA_reg[15] 
       (.C(ACLK),
        .CE(S_AXIS_TVALID),
        .CLR(ARESETN_0),
        .D(S_AXIS_TDATA[15]),
        .Q(Q[15]));
  FDCE \M_AXIS_TDATA_reg[16] 
       (.C(ACLK),
        .CE(S_AXIS_TVALID),
        .CLR(ARESETN_0),
        .D(p_0_in[16]),
        .Q(Q[16]));
  FDCE \M_AXIS_TDATA_reg[17] 
       (.C(ACLK),
        .CE(S_AXIS_TVALID),
        .CLR(ARESETN_0),
        .D(p_0_in[17]),
        .Q(Q[17]));
  FDCE \M_AXIS_TDATA_reg[18] 
       (.C(ACLK),
        .CE(S_AXIS_TVALID),
        .CLR(ARESETN_0),
        .D(p_0_in[18]),
        .Q(Q[18]));
  FDCE \M_AXIS_TDATA_reg[19] 
       (.C(ACLK),
        .CE(S_AXIS_TVALID),
        .CLR(ARESETN_0),
        .D(p_0_in[19]),
        .Q(Q[19]));
  FDCE \M_AXIS_TDATA_reg[1] 
       (.C(ACLK),
        .CE(S_AXIS_TVALID),
        .CLR(ARESETN_0),
        .D(S_AXIS_TDATA[1]),
        .Q(Q[1]));
  FDCE \M_AXIS_TDATA_reg[20] 
       (.C(ACLK),
        .CE(S_AXIS_TVALID),
        .CLR(ARESETN_0),
        .D(p_0_in[20]),
        .Q(Q[20]));
  FDCE \M_AXIS_TDATA_reg[21] 
       (.C(ACLK),
        .CE(S_AXIS_TVALID),
        .CLR(ARESETN_0),
        .D(p_0_in[21]),
        .Q(Q[21]));
  FDCE \M_AXIS_TDATA_reg[22] 
       (.C(ACLK),
        .CE(S_AXIS_TVALID),
        .CLR(ARESETN_0),
        .D(p_0_in[22]),
        .Q(Q[22]));
  FDCE \M_AXIS_TDATA_reg[23] 
       (.C(ACLK),
        .CE(S_AXIS_TVALID),
        .CLR(ARESETN_0),
        .D(p_0_in[23]),
        .Q(Q[23]));
  FDCE \M_AXIS_TDATA_reg[2] 
       (.C(ACLK),
        .CE(S_AXIS_TVALID),
        .CLR(ARESETN_0),
        .D(S_AXIS_TDATA[2]),
        .Q(Q[2]));
  FDCE \M_AXIS_TDATA_reg[3] 
       (.C(ACLK),
        .CE(S_AXIS_TVALID),
        .CLR(ARESETN_0),
        .D(S_AXIS_TDATA[3]),
        .Q(Q[3]));
  FDCE \M_AXIS_TDATA_reg[4] 
       (.C(ACLK),
        .CE(S_AXIS_TVALID),
        .CLR(ARESETN_0),
        .D(S_AXIS_TDATA[4]),
        .Q(Q[4]));
  FDCE \M_AXIS_TDATA_reg[5] 
       (.C(ACLK),
        .CE(S_AXIS_TVALID),
        .CLR(ARESETN_0),
        .D(S_AXIS_TDATA[5]),
        .Q(Q[5]));
  FDCE \M_AXIS_TDATA_reg[6] 
       (.C(ACLK),
        .CE(S_AXIS_TVALID),
        .CLR(ARESETN_0),
        .D(S_AXIS_TDATA[6]),
        .Q(Q[6]));
  FDCE \M_AXIS_TDATA_reg[7] 
       (.C(ACLK),
        .CE(S_AXIS_TVALID),
        .CLR(ARESETN_0),
        .D(S_AXIS_TDATA[7]),
        .Q(Q[7]));
  FDCE \M_AXIS_TDATA_reg[8] 
       (.C(ACLK),
        .CE(S_AXIS_TVALID),
        .CLR(ARESETN_0),
        .D(S_AXIS_TDATA[8]),
        .Q(Q[8]));
  FDCE \M_AXIS_TDATA_reg[9] 
       (.C(ACLK),
        .CE(S_AXIS_TVALID),
        .CLR(ARESETN_0),
        .D(S_AXIS_TDATA[9]),
        .Q(Q[9]));
  FDCE M_AXIS_TVALID_reg
       (.C(ACLK),
        .CE(1'b1),
        .CLR(ARESETN_0),
        .D(S_AXIS_TVALID),
        .Q(intermediate_valid));
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
