library verilog;
use verilog.vl_types.all;
entity reg_file is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        ReadAddress1    : in     vl_logic_vector(4 downto 0);
        ReadAddress2    : in     vl_logic_vector(4 downto 0);
        WriteAddress    : in     vl_logic_vector(4 downto 0);
        WriteData       : in     vl_logic_vector(31 downto 0);
        WE3             : in     vl_logic;
        ReadData1       : out    vl_logic_vector(31 downto 0);
        ReadData2       : out    vl_logic_vector(31 downto 0)
    );
end reg_file;
