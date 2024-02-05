library verilog;
use verilog.vl_types.all;
entity imm_gen is
    port(
        instr           : in     vl_logic_vector(15 downto 0);
        imm_out         : out    vl_logic_vector(31 downto 0)
    );
end imm_gen;
