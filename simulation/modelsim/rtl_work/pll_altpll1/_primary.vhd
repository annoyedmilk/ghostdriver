library verilog;
use verilog.vl_types.all;
entity pll_altpll1 is
    port(
        clk             : out    vl_logic_vector(4 downto 0);
        inclk           : in     vl_logic_vector(1 downto 0)
    );
end pll_altpll1;
