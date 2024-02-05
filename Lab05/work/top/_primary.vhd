library verilog;
use verilog.vl_types.all;
entity top is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        instr           : in     vl_logic_vector(31 downto 0);
        iszero          : out    vl_logic;
        alu_control     : in     vl_logic_vector(3 downto 0);
        RegDst          : in     vl_logic;
        RegWrite        : in     vl_logic;
        ALUsrc          : in     vl_logic;
        MemWrite        : in     vl_logic;
        MemRead         : in     vl_logic;
        MemToReg        : in     vl_logic
    );
end top;
