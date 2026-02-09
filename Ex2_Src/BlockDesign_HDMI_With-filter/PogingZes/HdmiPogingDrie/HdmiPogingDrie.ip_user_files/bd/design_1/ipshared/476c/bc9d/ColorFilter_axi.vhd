library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ColorFilter_axi is
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
end ColorFilter_axi;

architecture Behavioral of ColorFilter_axi is
  signal R, G, B : STD_LOGIC_VECTOR(7 downto 0);
  signal R_int, G_int, B_int : unsigned(7 downto 0);
begin
  R <= s_axis_video_tdata(23 downto 16);
  G <= s_axis_video_tdata(15 downto 8);
  B <= s_axis_video_tdata(7 downto 0);
  
  R_int <= unsigned(R);
  G_int <= unsigned(G);
  B_int <= unsigned(B);

  process(ACLK)
  begin
    if rising_edge(ACLK) then
      if ARESETN = '0' then
        m_axis_video_tdata <= (others => '0');
        m_axis_video_tvalid <= '0';
        s_axis_video_tready <= '0';
      else
        if m_axis_video_tready = '1' then
          s_axis_video_tready <= '1';
          if s_axis_video_tvalid = '1' then
            if (R_int > to_unsigned(100, 8)) and (G_int < to_unsigned(50, 8)) and (B_int < to_unsigned(50, 8)) then
              m_axis_video_tdata <= "000000000000000000000000";
            else
              m_axis_video_tdata <= s_axis_video_tdata;
            end if;
            m_axis_video_tvalid <= '1';
          else
            m_axis_video_tvalid <= '0';
          end if;
        else
          s_axis_video_tready <= '0';
        end if;
      end if;
    end if;
  end process;
end Behavioral;
