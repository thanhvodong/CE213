library verilog;
use verilog.vl_types.all;
entity imem is
    port(
        address         : in     vl_logic;
        RD              : out    vl_logic_vector(31 downto 0)
    );
end imem;
