-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1.2 (win64) Build 5164865 Thu Sep  5 14:37:11 MDT 2024
-- Date        : Sun Dec 29 13:37:37 2024
-- Host        : MSI running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/EOS/EOS_HDMI-UDP_Game/Ex2_Src/BlockDesign_HDMI_With-filter/PogingZes/HdmiPogingDrie/HdmiPogingDrie.gen/sources_1/bd/design_1/ip/design_1_eFPGA_FILTER_Core1_0_0/design_1_eFPGA_FILTER_Core1_0_0_sim_netlist.vhdl
-- Design      : design_1_eFPGA_FILTER_Core1_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_eFPGA_FILTER_Core1_0_0_eFPGA_FILTER_Core1_master_stream_v2_0_M00_AXIS is
  port (
    M_AXIS_TVALID : out STD_LOGIC;
    M_AXIS_TDATA : out STD_LOGIC_VECTOR ( 23 downto 0 );
    I1 : in STD_LOGIC;
    ACLK : in STD_LOGIC;
    \M_AXIS_TDATA_reg[23]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_eFPGA_FILTER_Core1_0_0_eFPGA_FILTER_Core1_master_stream_v2_0_M00_AXIS : entity is "eFPGA_FILTER_Core1_master_stream_v2_0_M00_AXIS";
end design_1_eFPGA_FILTER_Core1_0_0_eFPGA_FILTER_Core1_master_stream_v2_0_M00_AXIS;

architecture STRUCTURE of design_1_eFPGA_FILTER_Core1_0_0_eFPGA_FILTER_Core1_master_stream_v2_0_M00_AXIS is
begin
\M_AXIS_TDATA_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => I1,
      CLR => \M_AXIS_TDATA_reg[23]_0\,
      D => Q(0),
      Q => M_AXIS_TDATA(0)
    );
\M_AXIS_TDATA_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => I1,
      CLR => \M_AXIS_TDATA_reg[23]_0\,
      D => Q(10),
      Q => M_AXIS_TDATA(10)
    );
\M_AXIS_TDATA_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => I1,
      CLR => \M_AXIS_TDATA_reg[23]_0\,
      D => Q(11),
      Q => M_AXIS_TDATA(11)
    );
\M_AXIS_TDATA_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => I1,
      CLR => \M_AXIS_TDATA_reg[23]_0\,
      D => Q(12),
      Q => M_AXIS_TDATA(12)
    );
\M_AXIS_TDATA_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => I1,
      CLR => \M_AXIS_TDATA_reg[23]_0\,
      D => Q(13),
      Q => M_AXIS_TDATA(13)
    );
\M_AXIS_TDATA_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => I1,
      CLR => \M_AXIS_TDATA_reg[23]_0\,
      D => Q(14),
      Q => M_AXIS_TDATA(14)
    );
\M_AXIS_TDATA_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => I1,
      CLR => \M_AXIS_TDATA_reg[23]_0\,
      D => Q(15),
      Q => M_AXIS_TDATA(15)
    );
\M_AXIS_TDATA_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => I1,
      CLR => \M_AXIS_TDATA_reg[23]_0\,
      D => Q(16),
      Q => M_AXIS_TDATA(16)
    );
\M_AXIS_TDATA_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => I1,
      CLR => \M_AXIS_TDATA_reg[23]_0\,
      D => Q(17),
      Q => M_AXIS_TDATA(17)
    );
\M_AXIS_TDATA_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => I1,
      CLR => \M_AXIS_TDATA_reg[23]_0\,
      D => Q(18),
      Q => M_AXIS_TDATA(18)
    );
\M_AXIS_TDATA_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => I1,
      CLR => \M_AXIS_TDATA_reg[23]_0\,
      D => Q(19),
      Q => M_AXIS_TDATA(19)
    );
\M_AXIS_TDATA_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => I1,
      CLR => \M_AXIS_TDATA_reg[23]_0\,
      D => Q(1),
      Q => M_AXIS_TDATA(1)
    );
\M_AXIS_TDATA_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => I1,
      CLR => \M_AXIS_TDATA_reg[23]_0\,
      D => Q(20),
      Q => M_AXIS_TDATA(20)
    );
\M_AXIS_TDATA_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => I1,
      CLR => \M_AXIS_TDATA_reg[23]_0\,
      D => Q(21),
      Q => M_AXIS_TDATA(21)
    );
\M_AXIS_TDATA_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => I1,
      CLR => \M_AXIS_TDATA_reg[23]_0\,
      D => Q(22),
      Q => M_AXIS_TDATA(22)
    );
\M_AXIS_TDATA_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => I1,
      CLR => \M_AXIS_TDATA_reg[23]_0\,
      D => Q(23),
      Q => M_AXIS_TDATA(23)
    );
\M_AXIS_TDATA_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => I1,
      CLR => \M_AXIS_TDATA_reg[23]_0\,
      D => Q(2),
      Q => M_AXIS_TDATA(2)
    );
\M_AXIS_TDATA_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => I1,
      CLR => \M_AXIS_TDATA_reg[23]_0\,
      D => Q(3),
      Q => M_AXIS_TDATA(3)
    );
\M_AXIS_TDATA_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => I1,
      CLR => \M_AXIS_TDATA_reg[23]_0\,
      D => Q(4),
      Q => M_AXIS_TDATA(4)
    );
\M_AXIS_TDATA_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => I1,
      CLR => \M_AXIS_TDATA_reg[23]_0\,
      D => Q(5),
      Q => M_AXIS_TDATA(5)
    );
\M_AXIS_TDATA_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => I1,
      CLR => \M_AXIS_TDATA_reg[23]_0\,
      D => Q(6),
      Q => M_AXIS_TDATA(6)
    );
\M_AXIS_TDATA_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => I1,
      CLR => \M_AXIS_TDATA_reg[23]_0\,
      D => Q(7),
      Q => M_AXIS_TDATA(7)
    );
\M_AXIS_TDATA_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => I1,
      CLR => \M_AXIS_TDATA_reg[23]_0\,
      D => Q(8),
      Q => M_AXIS_TDATA(8)
    );
\M_AXIS_TDATA_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => I1,
      CLR => \M_AXIS_TDATA_reg[23]_0\,
      D => Q(9),
      Q => M_AXIS_TDATA(9)
    );
M_AXIS_TVALID_reg: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => '1',
      CLR => \M_AXIS_TDATA_reg[23]_0\,
      D => I1,
      Q => M_AXIS_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_eFPGA_FILTER_Core1_0_0_eFPGA_FILTER_Core1_slave_stream_v2_0_S00_AXIS is
  port (
    ARESETN_0 : out STD_LOGIC;
    I1 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 23 downto 0 );
    S_AXIS_TVALID : in STD_LOGIC;
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M_AXIS_TREADY : in STD_LOGIC;
    S_AXIS_TDATA : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_eFPGA_FILTER_Core1_0_0_eFPGA_FILTER_Core1_slave_stream_v2_0_S00_AXIS : entity is "eFPGA_FILTER_Core1_slave_stream_v2_0_S00_AXIS";
end design_1_eFPGA_FILTER_Core1_0_0_eFPGA_FILTER_Core1_slave_stream_v2_0_S00_AXIS;

architecture STRUCTURE of design_1_eFPGA_FILTER_Core1_0_0_eFPGA_FILTER_Core1_slave_stream_v2_0_S00_AXIS is
  signal \^aresetn_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[23]_i_2_n_0\ : STD_LOGIC;
  signal intermediate_valid : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 23 downto 16 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \M_AXIS_TDATA[17]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \M_AXIS_TDATA[18]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \M_AXIS_TDATA[19]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \M_AXIS_TDATA[23]_i_1\ : label is "soft_lutpair0";
begin
  ARESETN_0 <= \^aresetn_0\;
\M_AXIS_TDATA[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000002AAAAAAAA"
    )
        port map (
      I0 => S_AXIS_TDATA(16),
      I1 => S_AXIS_TDATA(18),
      I2 => S_AXIS_TDATA(19),
      I3 => S_AXIS_TDATA(17),
      I4 => \M_AXIS_TDATA[23]_i_2_n_0\,
      I5 => S_AXIS_TDATA(23),
      O => p_0_in(16)
    );
\M_AXIS_TDATA[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => S_AXIS_TDATA(17),
      I1 => S_AXIS_TDATA(23),
      O => p_0_in(17)
    );
\M_AXIS_TDATA[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => S_AXIS_TDATA(18),
      I1 => S_AXIS_TDATA(23),
      O => p_0_in(18)
    );
\M_AXIS_TDATA[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => S_AXIS_TDATA(19),
      I1 => S_AXIS_TDATA(23),
      O => p_0_in(19)
    );
\M_AXIS_TDATA[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000002AAAAAAAA"
    )
        port map (
      I0 => S_AXIS_TDATA(20),
      I1 => S_AXIS_TDATA(18),
      I2 => S_AXIS_TDATA(19),
      I3 => S_AXIS_TDATA(17),
      I4 => \M_AXIS_TDATA[23]_i_2_n_0\,
      I5 => S_AXIS_TDATA(23),
      O => p_0_in(20)
    );
\M_AXIS_TDATA[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000002AAAAAAAA"
    )
        port map (
      I0 => S_AXIS_TDATA(21),
      I1 => S_AXIS_TDATA(18),
      I2 => S_AXIS_TDATA(19),
      I3 => S_AXIS_TDATA(17),
      I4 => \M_AXIS_TDATA[23]_i_2_n_0\,
      I5 => S_AXIS_TDATA(23),
      O => p_0_in(21)
    );
\M_AXIS_TDATA[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000002AAAAAAAA"
    )
        port map (
      I0 => S_AXIS_TDATA(22),
      I1 => S_AXIS_TDATA(18),
      I2 => S_AXIS_TDATA(19),
      I3 => S_AXIS_TDATA(17),
      I4 => \M_AXIS_TDATA[23]_i_2_n_0\,
      I5 => S_AXIS_TDATA(23),
      O => p_0_in(22)
    );
\M_AXIS_TDATA[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => S_AXIS_TDATA(18),
      I1 => S_AXIS_TDATA(19),
      I2 => S_AXIS_TDATA(17),
      I3 => \M_AXIS_TDATA[23]_i_2_n_0\,
      I4 => S_AXIS_TDATA(23),
      O => p_0_in(23)
    );
\M_AXIS_TDATA[23]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => intermediate_valid,
      I1 => M_AXIS_TREADY,
      O => I1
    );
\M_AXIS_TDATA[23]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => S_AXIS_TDATA(21),
      I1 => S_AXIS_TDATA(20),
      I2 => S_AXIS_TDATA(16),
      I3 => S_AXIS_TDATA(22),
      O => \M_AXIS_TDATA[23]_i_2_n_0\
    );
\M_AXIS_TDATA[23]_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ARESETN,
      O => \^aresetn_0\
    );
\M_AXIS_TDATA_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => S_AXIS_TVALID,
      CLR => \^aresetn_0\,
      D => S_AXIS_TDATA(0),
      Q => Q(0)
    );
\M_AXIS_TDATA_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => S_AXIS_TVALID,
      CLR => \^aresetn_0\,
      D => S_AXIS_TDATA(10),
      Q => Q(10)
    );
\M_AXIS_TDATA_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => S_AXIS_TVALID,
      CLR => \^aresetn_0\,
      D => S_AXIS_TDATA(11),
      Q => Q(11)
    );
\M_AXIS_TDATA_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => S_AXIS_TVALID,
      CLR => \^aresetn_0\,
      D => S_AXIS_TDATA(12),
      Q => Q(12)
    );
\M_AXIS_TDATA_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => S_AXIS_TVALID,
      CLR => \^aresetn_0\,
      D => S_AXIS_TDATA(13),
      Q => Q(13)
    );
\M_AXIS_TDATA_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => S_AXIS_TVALID,
      CLR => \^aresetn_0\,
      D => S_AXIS_TDATA(14),
      Q => Q(14)
    );
\M_AXIS_TDATA_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => S_AXIS_TVALID,
      CLR => \^aresetn_0\,
      D => S_AXIS_TDATA(15),
      Q => Q(15)
    );
\M_AXIS_TDATA_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => S_AXIS_TVALID,
      CLR => \^aresetn_0\,
      D => p_0_in(16),
      Q => Q(16)
    );
\M_AXIS_TDATA_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => S_AXIS_TVALID,
      CLR => \^aresetn_0\,
      D => p_0_in(17),
      Q => Q(17)
    );
\M_AXIS_TDATA_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => S_AXIS_TVALID,
      CLR => \^aresetn_0\,
      D => p_0_in(18),
      Q => Q(18)
    );
\M_AXIS_TDATA_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => S_AXIS_TVALID,
      CLR => \^aresetn_0\,
      D => p_0_in(19),
      Q => Q(19)
    );
\M_AXIS_TDATA_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => S_AXIS_TVALID,
      CLR => \^aresetn_0\,
      D => S_AXIS_TDATA(1),
      Q => Q(1)
    );
\M_AXIS_TDATA_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => S_AXIS_TVALID,
      CLR => \^aresetn_0\,
      D => p_0_in(20),
      Q => Q(20)
    );
\M_AXIS_TDATA_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => S_AXIS_TVALID,
      CLR => \^aresetn_0\,
      D => p_0_in(21),
      Q => Q(21)
    );
\M_AXIS_TDATA_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => S_AXIS_TVALID,
      CLR => \^aresetn_0\,
      D => p_0_in(22),
      Q => Q(22)
    );
\M_AXIS_TDATA_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => S_AXIS_TVALID,
      CLR => \^aresetn_0\,
      D => p_0_in(23),
      Q => Q(23)
    );
\M_AXIS_TDATA_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => S_AXIS_TVALID,
      CLR => \^aresetn_0\,
      D => S_AXIS_TDATA(2),
      Q => Q(2)
    );
\M_AXIS_TDATA_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => S_AXIS_TVALID,
      CLR => \^aresetn_0\,
      D => S_AXIS_TDATA(3),
      Q => Q(3)
    );
\M_AXIS_TDATA_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => S_AXIS_TVALID,
      CLR => \^aresetn_0\,
      D => S_AXIS_TDATA(4),
      Q => Q(4)
    );
\M_AXIS_TDATA_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => S_AXIS_TVALID,
      CLR => \^aresetn_0\,
      D => S_AXIS_TDATA(5),
      Q => Q(5)
    );
\M_AXIS_TDATA_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => S_AXIS_TVALID,
      CLR => \^aresetn_0\,
      D => S_AXIS_TDATA(6),
      Q => Q(6)
    );
\M_AXIS_TDATA_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => S_AXIS_TVALID,
      CLR => \^aresetn_0\,
      D => S_AXIS_TDATA(7),
      Q => Q(7)
    );
\M_AXIS_TDATA_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => S_AXIS_TVALID,
      CLR => \^aresetn_0\,
      D => S_AXIS_TDATA(8),
      Q => Q(8)
    );
\M_AXIS_TDATA_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => S_AXIS_TVALID,
      CLR => \^aresetn_0\,
      D => S_AXIS_TDATA(9),
      Q => Q(9)
    );
M_AXIS_TVALID_reg: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => '1',
      CLR => \^aresetn_0\,
      D => S_AXIS_TVALID,
      Q => intermediate_valid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_eFPGA_FILTER_Core1_0_0_eFPGA_FILTER_Core1 is
  port (
    M_AXIS_TDATA : out STD_LOGIC_VECTOR ( 23 downto 0 );
    M_AXIS_TVALID : out STD_LOGIC;
    S_AXIS_TVALID : in STD_LOGIC;
    ACLK : in STD_LOGIC;
    S_AXIS_TDATA : in STD_LOGIC_VECTOR ( 23 downto 0 );
    ARESETN : in STD_LOGIC;
    M_AXIS_TREADY : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_eFPGA_FILTER_Core1_0_0_eFPGA_FILTER_Core1 : entity is "eFPGA_FILTER_Core1";
end design_1_eFPGA_FILTER_Core1_0_0_eFPGA_FILTER_Core1;

architecture STRUCTURE of design_1_eFPGA_FILTER_Core1_0_0_eFPGA_FILTER_Core1 is
  signal slave_stream_inst_n_0 : STD_LOGIC;
  signal slave_stream_inst_n_1 : STD_LOGIC;
  signal slave_stream_inst_n_10 : STD_LOGIC;
  signal slave_stream_inst_n_11 : STD_LOGIC;
  signal slave_stream_inst_n_12 : STD_LOGIC;
  signal slave_stream_inst_n_13 : STD_LOGIC;
  signal slave_stream_inst_n_14 : STD_LOGIC;
  signal slave_stream_inst_n_15 : STD_LOGIC;
  signal slave_stream_inst_n_16 : STD_LOGIC;
  signal slave_stream_inst_n_17 : STD_LOGIC;
  signal slave_stream_inst_n_18 : STD_LOGIC;
  signal slave_stream_inst_n_19 : STD_LOGIC;
  signal slave_stream_inst_n_2 : STD_LOGIC;
  signal slave_stream_inst_n_20 : STD_LOGIC;
  signal slave_stream_inst_n_21 : STD_LOGIC;
  signal slave_stream_inst_n_22 : STD_LOGIC;
  signal slave_stream_inst_n_23 : STD_LOGIC;
  signal slave_stream_inst_n_24 : STD_LOGIC;
  signal slave_stream_inst_n_25 : STD_LOGIC;
  signal slave_stream_inst_n_3 : STD_LOGIC;
  signal slave_stream_inst_n_4 : STD_LOGIC;
  signal slave_stream_inst_n_5 : STD_LOGIC;
  signal slave_stream_inst_n_6 : STD_LOGIC;
  signal slave_stream_inst_n_7 : STD_LOGIC;
  signal slave_stream_inst_n_8 : STD_LOGIC;
  signal slave_stream_inst_n_9 : STD_LOGIC;
begin
master_stream_inst: entity work.design_1_eFPGA_FILTER_Core1_0_0_eFPGA_FILTER_Core1_master_stream_v2_0_M00_AXIS
     port map (
      ACLK => ACLK,
      I1 => slave_stream_inst_n_1,
      M_AXIS_TDATA(23 downto 0) => M_AXIS_TDATA(23 downto 0),
      \M_AXIS_TDATA_reg[23]_0\ => slave_stream_inst_n_0,
      M_AXIS_TVALID => M_AXIS_TVALID,
      Q(23) => slave_stream_inst_n_2,
      Q(22) => slave_stream_inst_n_3,
      Q(21) => slave_stream_inst_n_4,
      Q(20) => slave_stream_inst_n_5,
      Q(19) => slave_stream_inst_n_6,
      Q(18) => slave_stream_inst_n_7,
      Q(17) => slave_stream_inst_n_8,
      Q(16) => slave_stream_inst_n_9,
      Q(15) => slave_stream_inst_n_10,
      Q(14) => slave_stream_inst_n_11,
      Q(13) => slave_stream_inst_n_12,
      Q(12) => slave_stream_inst_n_13,
      Q(11) => slave_stream_inst_n_14,
      Q(10) => slave_stream_inst_n_15,
      Q(9) => slave_stream_inst_n_16,
      Q(8) => slave_stream_inst_n_17,
      Q(7) => slave_stream_inst_n_18,
      Q(6) => slave_stream_inst_n_19,
      Q(5) => slave_stream_inst_n_20,
      Q(4) => slave_stream_inst_n_21,
      Q(3) => slave_stream_inst_n_22,
      Q(2) => slave_stream_inst_n_23,
      Q(1) => slave_stream_inst_n_24,
      Q(0) => slave_stream_inst_n_25
    );
slave_stream_inst: entity work.design_1_eFPGA_FILTER_Core1_0_0_eFPGA_FILTER_Core1_slave_stream_v2_0_S00_AXIS
     port map (
      ACLK => ACLK,
      ARESETN => ARESETN,
      ARESETN_0 => slave_stream_inst_n_0,
      I1 => slave_stream_inst_n_1,
      M_AXIS_TREADY => M_AXIS_TREADY,
      Q(23) => slave_stream_inst_n_2,
      Q(22) => slave_stream_inst_n_3,
      Q(21) => slave_stream_inst_n_4,
      Q(20) => slave_stream_inst_n_5,
      Q(19) => slave_stream_inst_n_6,
      Q(18) => slave_stream_inst_n_7,
      Q(17) => slave_stream_inst_n_8,
      Q(16) => slave_stream_inst_n_9,
      Q(15) => slave_stream_inst_n_10,
      Q(14) => slave_stream_inst_n_11,
      Q(13) => slave_stream_inst_n_12,
      Q(12) => slave_stream_inst_n_13,
      Q(11) => slave_stream_inst_n_14,
      Q(10) => slave_stream_inst_n_15,
      Q(9) => slave_stream_inst_n_16,
      Q(8) => slave_stream_inst_n_17,
      Q(7) => slave_stream_inst_n_18,
      Q(6) => slave_stream_inst_n_19,
      Q(5) => slave_stream_inst_n_20,
      Q(4) => slave_stream_inst_n_21,
      Q(3) => slave_stream_inst_n_22,
      Q(2) => slave_stream_inst_n_23,
      Q(1) => slave_stream_inst_n_24,
      Q(0) => slave_stream_inst_n_25,
      S_AXIS_TDATA(23 downto 0) => S_AXIS_TDATA(23 downto 0),
      S_AXIS_TVALID => S_AXIS_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_eFPGA_FILTER_Core1_0_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    S_AXIS_TDATA : in STD_LOGIC_VECTOR ( 23 downto 0 );
    S_AXIS_TVALID : in STD_LOGIC;
    S_AXIS_TREADY : out STD_LOGIC;
    M_AXIS_TDATA : out STD_LOGIC_VECTOR ( 23 downto 0 );
    M_AXIS_TVALID : out STD_LOGIC;
    M_AXIS_TREADY : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_eFPGA_FILTER_Core1_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_eFPGA_FILTER_Core1_0_0 : entity is "design_1_eFPGA_FILTER_Core1_0_0,eFPGA_FILTER_Core1,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_eFPGA_FILTER_Core1_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_eFPGA_FILTER_Core1_0_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of design_1_eFPGA_FILTER_Core1_0_0 : entity is "eFPGA_FILTER_Core1,Vivado 2024.1.2";
end design_1_eFPGA_FILTER_Core1_0_0;

architecture STRUCTURE of design_1_eFPGA_FILTER_Core1_0_0 is
  signal \<const1>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of ACLK : signal is "xilinx.com:signal:clock:1.0 ACLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of ACLK : signal is "XIL_INTERFACENAME ACLK, ASSOCIATED_BUSIF M_AXIS:S_AXIS, ASSOCIATED_RESET ARESETN, FREQ_TOLERANCE_HZ -1, FREQ_HZ 148500000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of ARESETN : signal is "xilinx.com:signal:reset:1.0 ARESETN RST";
  attribute x_interface_parameter of ARESETN : signal is "XIL_INTERFACENAME ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of M_AXIS_TREADY : signal is "xilinx.com:interface:axis:1.0 M_AXIS TREADY";
  attribute x_interface_info of M_AXIS_TVALID : signal is "xilinx.com:interface:axis:1.0 M_AXIS TVALID";
  attribute x_interface_info of S_AXIS_TREADY : signal is "xilinx.com:interface:axis:1.0 S_AXIS TREADY";
  attribute x_interface_info of S_AXIS_TVALID : signal is "xilinx.com:interface:axis:1.0 S_AXIS TVALID";
  attribute x_interface_info of M_AXIS_TDATA : signal is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute x_interface_parameter of M_AXIS_TDATA : signal is "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 148500000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of S_AXIS_TDATA : signal is "xilinx.com:interface:axis:1.0 S_AXIS TDATA";
  attribute x_interface_parameter of S_AXIS_TDATA : signal is "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 148500000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
begin
  S_AXIS_TREADY <= \<const1>\;
U0: entity work.design_1_eFPGA_FILTER_Core1_0_0_eFPGA_FILTER_Core1
     port map (
      ACLK => ACLK,
      ARESETN => ARESETN,
      M_AXIS_TDATA(23 downto 0) => M_AXIS_TDATA(23 downto 0),
      M_AXIS_TREADY => M_AXIS_TREADY,
      M_AXIS_TVALID => M_AXIS_TVALID,
      S_AXIS_TDATA(23 downto 0) => S_AXIS_TDATA(23 downto 0),
      S_AXIS_TVALID => S_AXIS_TVALID
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
