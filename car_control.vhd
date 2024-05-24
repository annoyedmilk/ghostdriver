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
    -- Define constants for the lane positions
    constant LANE_1 : unsigned(9 downto 0) := to_unsigned(134, 10);
    constant LANE_2 : unsigned(9 downto 0) := to_unsigned(234, 10);
    constant LANE_3 : unsigned(9 downto 0) := to_unsigned(334, 10);
    constant LANE_4 : unsigned(9 downto 0) := to_unsigned(434, 10);

    signal x_pos : unsigned(9 downto 0) := LANE_3; -- Start at lane 3 (position 368)
    signal left_prev : std_logic := '0';
    signal right_prev : std_logic := '0';

    signal lane_index : integer range 1 to 4 := 3; -- Start at lane 3
begin
    process(clk, reset)
    begin
        if reset = '0' then
            x_pos <= LANE_3; -- Reset position to lane 3
            lane_index <= 3;
            left_prev <= '0';
            right_prev <= '0';
        elsif rising_edge(clk) then
            -- Detect rising edge for move_left
            if (move_left = '1' and left_prev = '0') then
                if lane_index > 1 then
                    lane_index <= lane_index - 1;
                end if;
            end if;
            left_prev <= move_left;

            -- Detect rising edge for move_right
            if (move_right = '1' and right_prev = '0') then
                if lane_index < 4 then
                    lane_index <= lane_index + 1;
                end if;
            end if;
            right_prev <= move_right;

            -- Update x_pos based on lane_index
            case lane_index is
                when 1 => x_pos <= LANE_1;
                when 2 => x_pos <= LANE_2;
                when 3 => x_pos <= LANE_3;
                when 4 => x_pos <= LANE_4;
                when others => x_pos <= LANE_3; -- Default to lane 3 for safety
            end case;
        end if;
    end process;

    car_pos_x <= std_logic_vector(x_pos);
end Behavioral;
