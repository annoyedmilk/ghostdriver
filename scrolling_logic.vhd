library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity scrolling_logic is
    port (
        clk          : in  std_logic;
        reset        : in  std_logic;
        scroll_speed : in  unsigned(19 downto 0);
        scroll_offset : out unsigned(9 downto 0)
    );
end scrolling_logic;

architecture Behavioral of scrolling_logic is
    signal scroll_counter : unsigned(19 downto 0) := (others => '0');
begin
    process(clk, reset)
    begin
        if reset = '0' then
            scroll_counter <= (others => '0');
            scroll_offset <= (others => '0');
        elsif rising_edge(clk) then
            if scroll_counter = scroll_speed then
                scroll_counter <= (others => '0');
                if scroll_offset = to_unsigned(479, 10) then
                    scroll_offset <= (others => '0');
                else
                    scroll_offset <= scroll_offset + 1;
                end if;
            else
                scroll_counter <= scroll_counter + 1;
            end if;
        end if;
    end process;
end Behavioral;
