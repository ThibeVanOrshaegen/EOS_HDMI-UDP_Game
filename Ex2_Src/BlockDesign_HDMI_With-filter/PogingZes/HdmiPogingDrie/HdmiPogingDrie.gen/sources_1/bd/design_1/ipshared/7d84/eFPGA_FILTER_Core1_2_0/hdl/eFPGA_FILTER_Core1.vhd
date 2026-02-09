library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity eFPGA_FILTER_Core1 is
    Port (
        -- Klok en Reset
        ACLK : in STD_LOGIC;
        ARESETN : in STD_LOGIC;

        -- Slave Interface
        S_AXIS_TDATA : in STD_LOGIC_VECTOR(23 downto 0);
        S_AXIS_TVALID : in STD_LOGIC;
        S_AXIS_TREADY : out STD_LOGIC;

        -- Master Interface
        M_AXIS_TDATA : out STD_LOGIC_VECTOR(23 downto 0);
        M_AXIS_TVALID : out STD_LOGIC;
        M_AXIS_TREADY : in STD_LOGIC
    );
end eFPGA_FILTER_Core1;

architecture Behavioral of eFPGA_FILTER_Core1 is

    -- Signalen tussen master en slave
    signal intermediate_data : STD_LOGIC_VECTOR(23 downto 0);
    signal intermediate_valid : STD_LOGIC;
    signal intermediate_ready : STD_LOGIC;

begin

    -- Instantieer Slave AXI Stream Interface
    slave_stream_inst : entity work.eFPGA_FILTER_Core1_slave_stream_v2_0_S00_AXIS
        port map (
            ACLK => ACLK,
            ARESETN => ARESETN,
            S_AXIS_TDATA => S_AXIS_TDATA,
            S_AXIS_TVALID => S_AXIS_TVALID,
            S_AXIS_TREADY => S_AXIS_TREADY,
            M_AXIS_TDATA => intermediate_data,
            M_AXIS_TVALID => intermediate_valid,
            M_AXIS_TREADY => intermediate_ready
        );

    -- Instantieer Master AXI Stream Interface
    master_stream_inst : entity work.eFPGA_FILTER_Core1_master_stream_v2_0_M00_AXIS
        port map (
            ACLK => ACLK,
            ARESETN => ARESETN,
            S_AXIS_TDATA => intermediate_data,
            S_AXIS_TVALID => intermediate_valid,
            S_AXIS_TREADY => intermediate_ready,
            M_AXIS_TDATA => M_AXIS_TDATA,
            M_AXIS_TVALID => M_AXIS_TVALID,
            M_AXIS_TREADY => M_AXIS_TREADY
        );

end Behavioral;
