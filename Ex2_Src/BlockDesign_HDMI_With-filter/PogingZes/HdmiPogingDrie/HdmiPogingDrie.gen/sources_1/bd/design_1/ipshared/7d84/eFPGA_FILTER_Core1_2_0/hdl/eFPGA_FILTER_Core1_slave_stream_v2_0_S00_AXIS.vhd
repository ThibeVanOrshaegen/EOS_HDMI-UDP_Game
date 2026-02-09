library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity eFPGA_FILTER_Core1_slave_stream_v2_0_S00_AXIS is
    Port (
        -- Klok en reset
        ACLK : in STD_LOGIC;
        ARESETN : in STD_LOGIC;

        -- AXI4-Stream Slave Interface
        S_AXIS_TDATA : in STD_LOGIC_VECTOR(23 downto 0);
        S_AXIS_TVALID : in STD_LOGIC;
        S_AXIS_TREADY : out STD_LOGIC;

        -- Interne output naar de master
        M_AXIS_TDATA : out STD_LOGIC_VECTOR(23 downto 0);
        M_AXIS_TVALID : out STD_LOGIC;
        M_AXIS_TREADY : in STD_LOGIC
    );
end eFPGA_FILTER_Core1_slave_stream_v2_0_S00_AXIS;

architecture Behavioral of eFPGA_FILTER_Core1_slave_stream_v2_0_S00_AXIS is
begin
    process(ACLK)
    begin
        if (ARESETN = '0') then
            M_AXIS_TDATA <= (others => '0');
            M_AXIS_TVALID <= '0';
        elsif rising_edge(ACLK) then
            if S_AXIS_TVALID = '1' then
                -- Verwerk de inkomende data (bijvoorbeeld rode pixels filteren)
                if S_AXIS_TDATA(23 downto 16) > "10000000" then  -- Filter rode kleur
                    M_AXIS_TDATA <= "00000000" & S_AXIS_TDATA(15 downto 0); -- Rood naar 0
                else
                    M_AXIS_TDATA <= S_AXIS_TDATA; -- Stuur originele data
                end if;
                M_AXIS_TVALID <= '1';
            else
                M_AXIS_TVALID <= '0';
            end if;
        end if;
    end process;

    -- Altijd klaar om data te ontvangen
    S_AXIS_TREADY <= '1';
end Behavioral;
