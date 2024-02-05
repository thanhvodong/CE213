library verilog;
use verilog.vl_types.all;
entity dmem is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        address         : in     vl_logic_vector(31 downto 0);
        DataW           : in     vl_logic_vector(31 downto 0);
        MemRW           : in     vl_logic;
        DataR           : out    vl_logic_vector(31 downto 0)
    );
end dmem;
