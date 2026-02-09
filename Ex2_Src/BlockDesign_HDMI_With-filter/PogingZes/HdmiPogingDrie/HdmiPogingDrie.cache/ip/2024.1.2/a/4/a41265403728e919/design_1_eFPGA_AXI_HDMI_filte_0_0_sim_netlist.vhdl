-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1.2 (win64) Build 5164865 Thu Sep  5 14:37:11 MDT 2024
-- Date        : Fri Dec 27 20:43:33 2024
-- Host        : MSI running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_eFPGA_AXI_HDMI_filte_0_0_sim_netlist.vhdl
-- Design      : design_1_eFPGA_AXI_HDMI_filte_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ColorFilter_axi is
  port (
    m_axis_video_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_video_tvalid : out STD_LOGIC;
    s_axis_video_tready : out STD_LOGIC;
    m_axis_video_tready : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    s_axis_video_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    ACLK : in STD_LOGIC;
    s_axis_video_tvalid : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ColorFilter_axi;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ColorFilter_axi is
  signal \m_axis_video_tdata[23]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_video_tdata[23]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_video_tdata[23]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_video_tdata[23]_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_video_tdata[23]_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_video_tdata[23]_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_video_tdata[23]_i_7_n_0\ : STD_LOGIC;
  signal \^m_axis_video_tvalid\ : STD_LOGIC;
  signal m_axis_video_tvalid_i_1_n_0 : STD_LOGIC;
  signal s_axis_video_tready_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of m_axis_video_tvalid_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of s_axis_video_tready_i_1 : label is "soft_lutpair0";
begin
  m_axis_video_tvalid <= \^m_axis_video_tvalid\;
\m_axis_video_tdata[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10FF"
    )
        port map (
      I0 => \m_axis_video_tdata[23]_i_3_n_0\,
      I1 => \m_axis_video_tdata[23]_i_4_n_0\,
      I2 => m_axis_video_tready,
      I3 => ARESETN,
      O => \m_axis_video_tdata[23]_i_1_n_0\
    );
\m_axis_video_tdata[23]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_axis_video_tready,
      I1 => s_axis_video_tvalid,
      O => \m_axis_video_tdata[23]_i_2_n_0\
    );
\m_axis_video_tdata[23]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"557F"
    )
        port map (
      I0 => s_axis_video_tvalid,
      I1 => s_axis_video_tdata(21),
      I2 => \m_axis_video_tdata[23]_i_5_n_0\,
      I3 => s_axis_video_tdata(23),
      O => \m_axis_video_tdata[23]_i_3_n_0\
    );
\m_axis_video_tdata[23]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEFFFFFFFFF"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => s_axis_video_tdata(7),
      I2 => \m_axis_video_tdata[23]_i_6_n_0\,
      I3 => s_axis_video_tdata(14),
      I4 => s_axis_video_tdata(15),
      I5 => \m_axis_video_tdata[23]_i_7_n_0\,
      O => \m_axis_video_tdata[23]_i_4_n_0\
    );
\m_axis_video_tdata[23]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAA88888"
    )
        port map (
      I0 => s_axis_video_tdata(22),
      I1 => s_axis_video_tdata(20),
      I2 => s_axis_video_tdata(17),
      I3 => s_axis_video_tdata(16),
      I4 => s_axis_video_tdata(18),
      I5 => s_axis_video_tdata(19),
      O => \m_axis_video_tdata[23]_i_5_n_0\
    );
\m_axis_video_tdata[23]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FFFFFF"
    )
        port map (
      I0 => s_axis_video_tdata(1),
      I1 => s_axis_video_tdata(2),
      I2 => s_axis_video_tdata(3),
      I3 => s_axis_video_tdata(5),
      I4 => s_axis_video_tdata(4),
      O => \m_axis_video_tdata[23]_i_6_n_0\
    );
\m_axis_video_tdata[23]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FFFFFF"
    )
        port map (
      I0 => s_axis_video_tdata(9),
      I1 => s_axis_video_tdata(10),
      I2 => s_axis_video_tdata(11),
      I3 => s_axis_video_tdata(13),
      I4 => s_axis_video_tdata(12),
      O => \m_axis_video_tdata[23]_i_7_n_0\
    );
\m_axis_video_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \m_axis_video_tdata[23]_i_2_n_0\,
      D => s_axis_video_tdata(0),
      Q => m_axis_video_tdata(0),
      R => \m_axis_video_tdata[23]_i_1_n_0\
    );
\m_axis_video_tdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \m_axis_video_tdata[23]_i_2_n_0\,
      D => s_axis_video_tdata(10),
      Q => m_axis_video_tdata(10),
      R => \m_axis_video_tdata[23]_i_1_n_0\
    );
\m_axis_video_tdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \m_axis_video_tdata[23]_i_2_n_0\,
      D => s_axis_video_tdata(11),
      Q => m_axis_video_tdata(11),
      R => \m_axis_video_tdata[23]_i_1_n_0\
    );
\m_axis_video_tdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \m_axis_video_tdata[23]_i_2_n_0\,
      D => s_axis_video_tdata(12),
      Q => m_axis_video_tdata(12),
      R => \m_axis_video_tdata[23]_i_1_n_0\
    );
\m_axis_video_tdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \m_axis_video_tdata[23]_i_2_n_0\,
      D => s_axis_video_tdata(13),
      Q => m_axis_video_tdata(13),
      R => \m_axis_video_tdata[23]_i_1_n_0\
    );
\m_axis_video_tdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \m_axis_video_tdata[23]_i_2_n_0\,
      D => s_axis_video_tdata(14),
      Q => m_axis_video_tdata(14),
      R => \m_axis_video_tdata[23]_i_1_n_0\
    );
\m_axis_video_tdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \m_axis_video_tdata[23]_i_2_n_0\,
      D => s_axis_video_tdata(15),
      Q => m_axis_video_tdata(15),
      R => \m_axis_video_tdata[23]_i_1_n_0\
    );
\m_axis_video_tdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \m_axis_video_tdata[23]_i_2_n_0\,
      D => s_axis_video_tdata(16),
      Q => m_axis_video_tdata(16),
      R => \m_axis_video_tdata[23]_i_1_n_0\
    );
\m_axis_video_tdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \m_axis_video_tdata[23]_i_2_n_0\,
      D => s_axis_video_tdata(17),
      Q => m_axis_video_tdata(17),
      R => \m_axis_video_tdata[23]_i_1_n_0\
    );
\m_axis_video_tdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \m_axis_video_tdata[23]_i_2_n_0\,
      D => s_axis_video_tdata(18),
      Q => m_axis_video_tdata(18),
      R => \m_axis_video_tdata[23]_i_1_n_0\
    );
\m_axis_video_tdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \m_axis_video_tdata[23]_i_2_n_0\,
      D => s_axis_video_tdata(19),
      Q => m_axis_video_tdata(19),
      R => \m_axis_video_tdata[23]_i_1_n_0\
    );
\m_axis_video_tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \m_axis_video_tdata[23]_i_2_n_0\,
      D => s_axis_video_tdata(1),
      Q => m_axis_video_tdata(1),
      R => \m_axis_video_tdata[23]_i_1_n_0\
    );
\m_axis_video_tdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \m_axis_video_tdata[23]_i_2_n_0\,
      D => s_axis_video_tdata(20),
      Q => m_axis_video_tdata(20),
      R => \m_axis_video_tdata[23]_i_1_n_0\
    );
\m_axis_video_tdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \m_axis_video_tdata[23]_i_2_n_0\,
      D => s_axis_video_tdata(21),
      Q => m_axis_video_tdata(21),
      R => \m_axis_video_tdata[23]_i_1_n_0\
    );
\m_axis_video_tdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \m_axis_video_tdata[23]_i_2_n_0\,
      D => s_axis_video_tdata(22),
      Q => m_axis_video_tdata(22),
      R => \m_axis_video_tdata[23]_i_1_n_0\
    );
\m_axis_video_tdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \m_axis_video_tdata[23]_i_2_n_0\,
      D => s_axis_video_tdata(23),
      Q => m_axis_video_tdata(23),
      R => \m_axis_video_tdata[23]_i_1_n_0\
    );
\m_axis_video_tdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \m_axis_video_tdata[23]_i_2_n_0\,
      D => s_axis_video_tdata(2),
      Q => m_axis_video_tdata(2),
      R => \m_axis_video_tdata[23]_i_1_n_0\
    );
\m_axis_video_tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \m_axis_video_tdata[23]_i_2_n_0\,
      D => s_axis_video_tdata(3),
      Q => m_axis_video_tdata(3),
      R => \m_axis_video_tdata[23]_i_1_n_0\
    );
\m_axis_video_tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \m_axis_video_tdata[23]_i_2_n_0\,
      D => s_axis_video_tdata(4),
      Q => m_axis_video_tdata(4),
      R => \m_axis_video_tdata[23]_i_1_n_0\
    );
\m_axis_video_tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \m_axis_video_tdata[23]_i_2_n_0\,
      D => s_axis_video_tdata(5),
      Q => m_axis_video_tdata(5),
      R => \m_axis_video_tdata[23]_i_1_n_0\
    );
\m_axis_video_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \m_axis_video_tdata[23]_i_2_n_0\,
      D => s_axis_video_tdata(6),
      Q => m_axis_video_tdata(6),
      R => \m_axis_video_tdata[23]_i_1_n_0\
    );
\m_axis_video_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \m_axis_video_tdata[23]_i_2_n_0\,
      D => s_axis_video_tdata(7),
      Q => m_axis_video_tdata(7),
      R => \m_axis_video_tdata[23]_i_1_n_0\
    );
\m_axis_video_tdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \m_axis_video_tdata[23]_i_2_n_0\,
      D => s_axis_video_tdata(8),
      Q => m_axis_video_tdata(8),
      R => \m_axis_video_tdata[23]_i_1_n_0\
    );
\m_axis_video_tdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \m_axis_video_tdata[23]_i_2_n_0\,
      D => s_axis_video_tdata(9),
      Q => m_axis_video_tdata(9),
      R => \m_axis_video_tdata[23]_i_1_n_0\
    );
m_axis_video_tvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \^m_axis_video_tvalid\,
      I1 => m_axis_video_tready,
      I2 => s_axis_video_tvalid,
      I3 => ARESETN,
      O => m_axis_video_tvalid_i_1_n_0
    );
m_axis_video_tvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => m_axis_video_tvalid_i_1_n_0,
      Q => \^m_axis_video_tvalid\,
      R => '0'
    );
s_axis_video_tready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_axis_video_tready,
      I1 => ARESETN,
      O => s_axis_video_tready_i_1_n_0
    );
s_axis_video_tready_reg: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => s_axis_video_tready_i_1_n_0,
      Q => s_axis_video_tready,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_eFPGA_AXI_HDMI_filter_Core1 is
  port (
    m_axis_video_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_video_tvalid : out STD_LOGIC;
    s_axis_video_tready : out STD_LOGIC;
    m_axis_video_tready : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    s_axis_video_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    ACLK : in STD_LOGIC;
    s_axis_video_tvalid : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_eFPGA_AXI_HDMI_filter_Core1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_eFPGA_AXI_HDMI_filter_Core1 is
begin
ColorFilter_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ColorFilter_axi
     port map (
      ACLK => ACLK,
      ARESETN => ARESETN,
      m_axis_video_tdata(23 downto 0) => m_axis_video_tdata(23 downto 0),
      m_axis_video_tready => m_axis_video_tready,
      m_axis_video_tvalid => m_axis_video_tvalid,
      s_axis_video_tdata(23 downto 0) => s_axis_video_tdata(23 downto 0),
      s_axis_video_tready => s_axis_video_tready,
      s_axis_video_tvalid => s_axis_video_tvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    s_axis_video_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_video_tvalid : in STD_LOGIC;
    s_axis_video_tready : out STD_LOGIC;
    m_axis_video_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_video_tvalid : out STD_LOGIC;
    m_axis_video_tready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_eFPGA_AXI_HDMI_filte_0_0,eFPGA_AXI_HDMI_filter_Core1,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "eFPGA_AXI_HDMI_filter_Core1,Vivado 2024.1.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of ACLK : signal is "xilinx.com:signal:clock:1.0 ACLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of ACLK : signal is "XIL_INTERFACENAME ACLK, ASSOCIATED_RESET ARESETN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of ARESETN : signal is "xilinx.com:signal:reset:1.0 ARESETN RST";
  attribute x_interface_parameter of ARESETN : signal is "XIL_INTERFACENAME ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_eFPGA_AXI_HDMI_filter_Core1
     port map (
      ACLK => ACLK,
      ARESETN => ARESETN,
      m_axis_video_tdata(23 downto 0) => m_axis_video_tdata(23 downto 0),
      m_axis_video_tready => m_axis_video_tready,
      m_axis_video_tvalid => m_axis_video_tvalid,
      s_axis_video_tdata(23 downto 0) => s_axis_video_tdata(23 downto 0),
      s_axis_video_tready => s_axis_video_tready,
      s_axis_video_tvalid => s_axis_video_tvalid
    );
end STRUCTURE;
