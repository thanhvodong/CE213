library verilog;
use verilog.vl_types.all;
entity controller is
    generic(
        \ADD\           : vl_logic_vector(0 to 5) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        ADDI            : vl_logic_vector(0 to 5) := (Hi0, Hi0, Hi1, Hi0, Hi0, Hi0);
        LOAD            : vl_logic_vector(0 to 5) := (Hi1, Hi0, Hi0, Hi0, Hi1, Hi1);
        STORE           : vl_logic_vector(0 to 5) := (Hi1, Hi0, Hi1, Hi0, Hi1, Hi1);
        comp            : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi0);
        andd            : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi1);
        xorr            : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi0);
        orr             : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi1);
        dec             : vl_logic_vector(0 to 2) := (Hi1, Hi0, Hi0);
        add             : vl_logic_vector(0 to 2) := (Hi1, Hi0, Hi1);
        sub             : vl_logic_vector(0 to 2) := (Hi1, Hi1, Hi0);
        inc             : vl_logic_vector(0 to 2) := (Hi1, Hi1, Hi1)
    );
    port(
        opcode          : in     vl_logic_vector(5 downto 0);
        RegDst          : out    vl_logic;
        RegWrite        : out    vl_logic;
        ALUsrc          : out    vl_logic;
        MemWrite        : out    vl_logic;
        MemRead         : out    vl_logic;
        MemToReg        : out    vl_logic;
        alu_control     : out    vl_logic_vector(2 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of \ADD\ : constant is 1;
    attribute mti_svvh_generic_type of ADDI : constant is 1;
    attribute mti_svvh_generic_type of LOAD : constant is 1;
    attribute mti_svvh_generic_type of STORE : constant is 1;
    attribute mti_svvh_generic_type of comp : constant is 1;
    attribute mti_svvh_generic_type of andd : constant is 1;
    attribute mti_svvh_generic_type of xorr : constant is 1;
    attribute mti_svvh_generic_type of orr : constant is 1;
    attribute mti_svvh_generic_type of dec : constant is 1;
    attribute mti_svvh_generic_type of add : constant is 1;
    attribute mti_svvh_generic_type of sub : constant is 1;
    attribute mti_svvh_generic_type of inc : constant is 1;
end controller;
