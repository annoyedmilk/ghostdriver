library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity car_control is
    port (
        clk         : in  std_logic;         -- Clock input
        reset       : in  std_logic;         -- Reset signal
        move_left   : in  std_logic;         -- Move left input
        move_right  : in  std_logic;         -- Move right input
        car_pos_x   : out std_logic_vector(9 downto 0) -- Car's horizontal position
    );
end car_control;

architecture Behavioral of car_control is
    signal x_pos : unsigned(9 downto 0) := to_unsigned(320, 10); -- Initial position in the middle
    signal left_prev : std_logic := '0';
    signal right_prev : std_logic := '0';
begin
    process(clk, reset)
    begin
        if reset = '0' then
            x_pos <= to_unsigned(320, 10); -- Reset position to middle
            left_prev <= '0';
            right_prev <= '0';
        elsif rising_edge(clk) then
            -- Detect rising edge for move_left
            if (move_left = '1' and left_prev = '0') and x_pos > to_unsigned(10, 10) then
                x_pos <= x_pos - 10;
            end if;
            left_prev <= move_left;

            -- Detect rising edge for move_right
            if (move_right = '1' and right_prev = '0') and x_pos < to_unsigned(629, 10) then
                x_pos <= x_pos + 10;
            end if;
            right_prev <= move_right;
        end if;
    end process;

    car_pos_x <= std_logic_vector(x_pos);
end Behavioral;
