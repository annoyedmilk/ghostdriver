library ieee; -- Import IEEE standard library
use ieee.std_logic_1164.all; -- Import standard logic package for basic logic operations
use ieee.numeric_std.all; -- Import numeric standard package for arithmetic operations

-- Entity declaration for car control
entity car_control is
    port (
        clk         : in  std_logic;         -- Clock input
        reset       : in  std_logic;         -- Reset signal
        move_left   : in  std_logic;         -- Move left input
        move_right  : in  std_logic;         -- Move right input
        car_pos_x   : out std_logic_vector(9 downto 0) -- Car's horizontal position
    );
end car_control;

-- Architecture definition of "car_control" using behavioral modeling
architecture Behavioral of car_control is
    -- Define constants for the lane positions
    constant LANE_1 : unsigned(9 downto 0) := to_unsigned(134, 10); -- Position of lane 1
    constant LANE_2 : unsigned(9 downto 0) := to_unsigned(234, 10); -- Position of lane 2
    constant LANE_3 : unsigned(9 downto 0) := to_unsigned(334, 10); -- Position of lane 3
    constant LANE_4 : unsigned(9 downto 0) := to_unsigned(434, 10); -- Position of lane 4

    signal x_pos : unsigned(9 downto 0) := LANE_3; -- Start at lane 3 (default position)
    signal left_prev : std_logic := '0'; -- Previous state of move_left signal
    signal right_prev : std_logic := '0'; -- Previous state of move_right signal

    signal lane_index : integer range 1 to 4 := 3; -- Index of the current lane, starting at lane 3
begin
    -- Process for handling car movement
    process(clk, reset)
    begin

        if rising_edge(clk) then
            -- Detect rising edge for move_left signal
            if (move_left = '1' and left_prev = '0') then
                if lane_index > 1 then
                    lane_index <= lane_index - 1; -- Move to the left lane
                end if;
            end if;
            left_prev <= move_left; -- Update previous left signal

            -- Detect rising edge for move_right signal
            if (move_right = '1' and right_prev = '0') then
                if lane_index < 4 then
                    lane_index <= lane_index + 1; -- Move to the right lane
                end if;
            end if;
            right_prev <= move_right; -- Update previous right signal

            -- Update x_pos based on lane_index
            case lane_index is
                when 1 => x_pos <= LANE_1; -- Move to lane 1
                when 2 => x_pos <= LANE_2; -- Move to lane 2
                when 3 => x_pos <= LANE_3; -- Move to lane 3
                when 4 => x_pos <= LANE_4; -- Move to lane 4
                when others => x_pos <= LANE_3; -- Default to lane 3 for safety
            end case;
				    if reset = '0' then
            -- Reset all signals to default values
            x_pos <= LANE_3; -- Reset position to lane 3
            lane_index <= 3; -- Reset lane index to 3
            left_prev <= '0'; -- Reset previous left signal
            right_prev <= '0'; -- Reset previous right signal
						end if;
					end if;
    end process;

    -- Assign the car's horizontal position to the output port
    car_pos_x <= std_logic_vector(x_pos);
end Behavioral;
