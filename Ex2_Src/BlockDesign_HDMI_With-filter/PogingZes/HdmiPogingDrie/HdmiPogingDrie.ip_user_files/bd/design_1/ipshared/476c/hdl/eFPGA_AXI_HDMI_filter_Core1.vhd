library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity eFPGA_AXI_HDMI_filter_Core1 is
  Port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    s_axis_video_tdata : in STD_LOGIC_VECTOR(23 downto 0);
    s_axis_video_tvalid : in STD_LOGIC;
    s_axis_video_tready : out STD_LOGIC;
    m_axis_video_tdata : out STD_LOGIC_VECTOR(23 downto 0);
    m_axis_video_tvalid : out STD_LOGIC;
    m_axis_video_tready : in STD_LOGIC
  );
end eFPGA_AXI_HDMI_filter_Core1;

architecture Behavioral of eFPGA_AXI_HDMI_filter_Core1 is
  component ColorFilter_axi
    Port (
      ACLK : in STD_LOGIC;
      ARESETN : in STD_LOGIC;
      s_axis_video_tdata : in STD_LOGIC_VECTOR(23 downto 0);
      s_axis_video_tvalid : in STD_LOGIC;
      s_axis_video_tready : out STD_LOGIC;
      m_axis_video_tdata : out STD_LOGIC_VECTOR(23 downto 0);
      m_axis_video_tvalid : out STD_LOGIC;
      m_axis_video_tready : in STD_LOGIC
    );
  end component;

begin
  ColorFilter_inst: ColorFilter_axi
    port map (
      ACLK => ACLK,
      ARESETN => ARESETN,
      s_axis_video_tdata => s_axis_video_tdata,
      s_axis_video_tvalid => s_axis_video_tvalid,
      s_axis_video_tready => s_axis_video_tready,
      m_axis_video_tdata => m_axis_video_tdata,
      m_axis_video_tvalid => m_axis_video_tvalid,
      m_axis_video_tready => m_axis_video_tready
    );
end Behavioral;
