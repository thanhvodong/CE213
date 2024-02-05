library verilog;
use verilog.vl_types.all;
entity pc is
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        address         : out    vl_logic_vector(31 downto 0)
    );
end pc;
