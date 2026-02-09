library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL; 

-- AXI-stream Color Filter module
entity ColorFilter_axi is
    Port (
           -- AXI streaming interface
           ACLK               : in  STD_LOGIC;  -- Klok signaal
           ARESETN            : in  STD_LOGIC;  -- Asynchrone reset (actief low)
           
           -- AXI Stream Invoer
           s_axis_video_tdata : in  STD_LOGIC_VECTOR(23 downto 0);  -- RGB video stream
           s_axis_video_tvalid : in  STD_LOGIC;  -- Tvalid signaal voor invoer
           s_axis_video_tready : out  STD_LOGIC;  
           
           -- AXI Stream Uitvoer
           m_axis_video_tdata : out STD_LOGIC_VECTOR(23 downto 0); 
           m_axis_video_tvalid : out STD_LOGIC;  
           m_axis_video_tready : in  STD_LOGIC   
         );
end ColorFilter_axi;

architecture Behavioral of ColorFilter_axi is
    -- RGB componenten van de inkomende pixel
    signal R, G, B : STD_LOGIC_VECTOR(7 downto 0);
    signal R_int, G_int, B_int : unsigned(7 downto 0);  -- Unsigned signalen voor numerieke vergelijkingen
begin
    -- Splitst de RGB-componenten van de inkomende pixel
    R <= s_axis_video_tdata(23 downto 16);
    G <= s_axis_video_tdata(15 downto 8);
    B <= s_axis_video_tdata(7 downto 0);
    
    R_int <= unsigned(R);
    G_int <= unsigned(G);
    B_int <= unsigned(B);

    process(ACLK)
    begin
        if (ARESETN = '0') then
            m_axis_video_tdata <= (others => '0'); -- Reset output naar zwart
            m_axis_video_tvalid <= '0';  -- Zet valid naar 0
        elsif rising_edge(ACLK) then
            if (R_int > to_unsigned(100, 8)) and (G_int < to_unsigned(50, 8)) and (B_int < to_unsigned(50, 8)) then
                -- Rode pixel, zet op zwart
                m_axis_video_tdata <= "000000000000000000000000"; -- zwart
            else
                -- Anders stuur de originele pixel door
                m_axis_video_tdata <= s_axis_video_tdata;
            end if;

            -- Zet valid-signaal naar '1' om aan te geven dat er een geldige pixel beschikbaar is
            if s_axis_video_tvalid = '1' then
                m_axis_video_tvalid <= '1';
            else
                m_axis_video_tvalid <= '0';
            end if;

        end if;
    end process;
    
    s_axis_video_tready <= '1'; -- Altijd klaar om gegevens te ontvangen
    -- m_axis_video_tready blijft een input die gecontroleerd moet worden door de master
end Behavioral;
