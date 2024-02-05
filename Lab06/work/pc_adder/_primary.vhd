library verilog;
use verilog.vl_types.all;
entity pc_adder is
    port(
        pc_in           : in     vl_logic_vector(31 downto 0);
        pc_out          : out    vl_logic_vector(31 downto 0)
    );
end pc_adder;
