library ieee; -- Import IEEE standard library
use ieee.std_logic_1164.all; -- Import standard logic package for basic logic operations
use ieee.numeric_std.all; -- Import numeric standard package for arithmetic operations

-- Entity declaration for scrolling logic
entity scrolling_logic is
    port (
        clk          : in  std_logic; -- Clock input
        reset        : in  std_logic; -- Reset signal
        scroll_speed : in  unsigned(19 downto 0); -- Speed of scrolling
        scroll_offset : out unsigned(9 downto 0) -- Scrolling offset
    );
end scrolling_logic;

-- Architecture definition of "scrolling_logic" using behavioral modeling
architecture Behavioral of scrolling_logic is
    signal scroll_counter : unsigned(19 downto 0) := (others => '0'); -- Counter for scrolling logic
begin
    -- Process for managing scrolling logic
    process(clk, reset)
    begin
        if reset = '0' then
            -- Reset the scroll counter and scroll offset to zero
            scroll_counter <= (others => '0'); -- Reset scroll counter
            scroll_offset <= (others => '0'); -- Reset scroll offset
        elsif rising_edge(clk) then
            if scroll_counter = scroll_speed then
                -- If scroll counter matches the scroll speed
                scroll_counter <= (others => '0'); -- Reset scroll counter
                if scroll_offset = to_unsigned(479, 10) then
                    -- If scroll offset reaches the maximum value (479)
                    scroll_offset <= (others => '0'); -- Reset scroll offset
                else
                    -- Increment the scroll offset
                    scroll_offset <= scroll_offset + 1;
                end if;
            else
                -- Increment the scroll counter
                scroll_counter <= scroll_counter + 1;
            end if;
        end if;
    end process;
end Behavioral;
