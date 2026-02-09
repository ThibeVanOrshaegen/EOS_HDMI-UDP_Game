library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity eFPGA_FILTER_Core1_master_stream_v2_0_M00_AXIS is
    Port (
        -- Klok en reset
        ACLK : in STD_LOGIC;
        ARESETN : in STD_LOGIC;

        -- Interne input van de slave
        S_AXIS_TDATA : in STD_LOGIC_VECTOR(23 downto 0);
        S_AXIS_TVALID : in STD_LOGIC;
        S_AXIS_TREADY : out STD_LOGIC;

        -- AXI4-Stream Master Interface
        M_AXIS_TDATA : out STD_LOGIC_VECTOR(23 downto 0);
        M_AXIS_TVALID : out STD_LOGIC;
        M_AXIS_TREADY : in STD_LOGIC
    );
end eFPGA_FILTER_Core1_master_stream_v2_0_M00_AXIS;

architecture Behavioral of eFPGA_FILTER_Core1_master_stream_v2_0_M00_AXIS is
begin
    process(ACLK)
    begin
        if (ARESETN = '0') then
            M_AXIS_TDATA <= (others => '0');
            M_AXIS_TVALID <= '0';
        elsif rising_edge(ACLK) then
            if S_AXIS_TVALID = '1' and M_AXIS_TREADY = '1' then
                -- Stuur data door van slave naar master
                M_AXIS_TDATA <= S_AXIS_TDATA;
                M_AXIS_TVALID <= '1';
            else
                M_AXIS_TVALID <= '0';
            end if;
        end if;
    end process;

    -- Altijd klaar om data te ontvangen
    S_AXIS_TREADY <= '1';
end Behavioral;
