library verilog;
use verilog.vl_types.all;
entity mux5bit is
    port(
        a               : in     vl_logic_vector(4 downto 0);
        b               : in     vl_logic_vector(4 downto 0);
        s               : in     vl_logic;
        c               : out    vl_logic_vector(4 downto 0)
    );
end mux5bit;
