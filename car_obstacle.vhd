library ieee; -- Import IEEE standard library
use ieee.std_logic_1164.all; -- Import standard logic package for basic logic operations
use ieee.numeric_std.all; -- Import numeric standard package for arithmetic operations

-- Entity declaration for the car_obstacle
-- This module simulates a car moving and detecting obstacles on a road
entity car_obstacle is
    port (
        clk              : in  std_logic;  -- Clock input
        reset            : in  std_logic;  -- Reset signal
        car_pos_x        : in  std_logic_vector(9 downto 0); -- Car's horizontal position
        hpos             : in  unsigned(9 downto 0); -- Horizontal position of the pixel
        vpos             : in  unsigned(9 downto 0); -- Vertical position of the pixel
        obstacle_hit     : out std_logic;  -- Signal indicating collision with an obstacle
        rgb_r            : out std_logic_vector(3 downto 0); -- 4-bit red color output
        rgb_g            : out std_logic_vector(3 downto 0); -- 4-bit green color output
        rgb_b            : out std_logic_vector(3 downto 0); -- 4-bit blue color output
        obstacle_present : out std_logic;  -- Signal indicating presence of an obstacle
        score            : out unsigned(15 downto 0) -- 16-bit score output
    );
end car_obstacle;

architecture Behavioral of car_obstacle is
    -- Import graphic packages for car images
    use work.blue_car_graphic.all;
    use work.black_car_graphic.all;
    use work.brown_car_graphic.all;

    -- Constants for obstacle and car dimensions
    constant OBSTACLE_WIDTH  : integer := blue_car_width;
    constant OBSTACLE_HEIGHT : integer := blue_car_height;
    constant CAR_WIDTH       : integer := 50;
    constant CAR_HEIGHT      : integer := 50;
    constant CAR_Y_POSITION  : unsigned(9 downto 0) := to_unsigned(400, 10);
    constant SLOW_DOWN_FACTOR : integer := 50000; -- Factor to slow down obstacle movement

    -- Constants for lane positions
    constant LANE_1 : unsigned(9 downto 0) := to_unsigned(134, 10);
    constant LANE_2 : unsigned(9 downto 0) := to_unsigned(234, 10);
    constant LANE_3 : unsigned(9 downto 0) := to_unsigned(334, 10);
    constant LANE_4 : unsigned(9 downto 0) := to_unsigned(434, 10);

    -- Type declarations for arrays of obstacles and car types
    type obstacle_array is array (0 to 3) of unsigned(9 downto 0);
    type car_type_array is array (0 to 3) of integer;

    -- Signal declarations for obstacle positions, car types, and control signals
    signal obstacle_x : obstacle_array := (LANE_1, LANE_2, LANE_3, LANE_4);
    signal obstacle_y : obstacle_array := (others => to_unsigned(0, 10));
    signal car_types : car_type_array := (others => 0);  -- 0: blue, 1: black, 2: brown
    signal slow_counter : integer := 0;
    signal random_seed : unsigned(9 downto 0) := to_unsigned(12345, 10);
    signal collision_detected : std_logic := '0';
    signal obstacle_present_internal : std_logic := '0';
    signal current_score : unsigned(15 downto 0) := (others => '0');

    -- Linear Feedback Shift Register (LFSR) function for random number generation
    function lfsr(seed: unsigned(9 downto 0)) return unsigned is
        variable lfsr_reg : unsigned(9 downto 0) := seed;
    begin
        lfsr_reg := lfsr_reg(8 downto 0) & (lfsr_reg(9) xor lfsr_reg(5) xor lfsr_reg(4) xor lfsr_reg(3));
        return lfsr_reg;
    end function;

begin
    -- Main process for obstacle generation and movement
    process(clk, reset, random_seed)
    begin

        if rising_edge(clk) then
            if slow_counter = SLOW_DOWN_FACTOR then
                -- Move obstacles downwards
                slow_counter <= 0;
                for i in 0 to 3 loop
                    if obstacle_y(i) > to_unsigned(480, 10) then
                        random_seed <= lfsr(random_seed);
                        case to_integer(random_seed mod 4) is
                            when 0 => obstacle_x(i) <= LANE_1;
                            when 1 => obstacle_x(i) <= LANE_2;
                            when 2 => obstacle_x(i) <= LANE_3;
                            when 3 => obstacle_x(i) <= LANE_4;
                            when others => obstacle_x(i) <= LANE_1;
                        end case;
                        obstacle_y(i) <= to_unsigned(0, 10);
                        car_types(i) <= to_integer(random_seed mod 3); -- Randomly assign car type
                        if collision_detected = '0' then
                            current_score <= current_score + 1; -- Increment score on new car spawn if no collision
                        end if;
                    else
                        obstacle_y(i) <= obstacle_y(i) + 1; -- Move obstacle downwards
                    end if;
                end loop;
            else
                slow_counter <= slow_counter + 1;
            end if;

            -- Check for collisions
            collision_detected <= '0';
            obstacle_present_internal <= '0';
            for i in 0 to 3 loop
                if unsigned(car_pos_x) + to_unsigned(CAR_WIDTH, 10) >= obstacle_x(i) and unsigned(car_pos_x) <= obstacle_x(i) + to_unsigned(OBSTACLE_WIDTH, 10) and
                   CAR_Y_POSITION + to_unsigned(CAR_HEIGHT, 10) >= obstacle_y(i) and CAR_Y_POSITION <= obstacle_y(i) + to_unsigned(OBSTACLE_HEIGHT, 10) then
                    collision_detected <= '1';
                    current_score <= (others => '0'); -- Reset score on collision
                end if;

                -- Check if the current pixel corresponds to an obstacle
                if unsigned(hpos) >= obstacle_x(i) and unsigned(hpos) < obstacle_x(i) + OBSTACLE_WIDTH and
                   unsigned(vpos) >= obstacle_y(i) and unsigned(vpos) < obstacle_y(i) + OBSTACLE_HEIGHT then
                    obstacle_present_internal <= '1';
                end if;
            end loop;

            -- Initialize obstacles and random seed on reset
            if reset = '0' then
                for i in 0 to 3 loop
                    random_seed <= lfsr(random_seed);
                    case to_integer(random_seed mod 4) is
                        when 0 => obstacle_x(i) <= LANE_1;
                        when 1 => obstacle_x(i) <= LANE_2;
                        when 2 => obstacle_x(i) <= LANE_3;
                        when 3 => obstacle_x(i) <= LANE_4;
                        when others => obstacle_x(i) <= LANE_1;
                    end case;
                    obstacle_y(i) <= to_unsigned(0, 10);
                    car_types(i) <= to_integer(random_seed mod 3); -- Randomly assign car type
                end loop;
                slow_counter <= 0;
                collision_detected <= '0';
                obstacle_present_internal <= '0';
                current_score <= (others => '0');
            end if;
        end if;
    end process;

    -- Process to update RGB values based on the current pixel position
    process(clk)
    begin
        if rising_edge(clk) then
            rgb_r <= x"0";               
            rgb_g <= x"0";
            rgb_b <= x"0";

            for i in 0 to 3 loop
                if unsigned(hpos) >= obstacle_x(i) and unsigned(hpos) < obstacle_x(i) + OBSTACLE_WIDTH and
                   unsigned(vpos) >= obstacle_y(i) and unsigned(vpos) < obstacle_y(i) + OBSTACLE_HEIGHT then
                    case car_types(i) is
                        when 0 =>
                            -- Assign RGB values from blue car image
                            rgb_r <= BLUE_CAR_IMAGE(to_integer(unsigned(vpos) - obstacle_y(i)), to_integer(unsigned(hpos) - obstacle_x(i)))(11 downto 8);
                            rgb_g <= BLUE_CAR_IMAGE(to_integer(unsigned(vpos) - obstacle_y(i)), to_integer(unsigned(hpos) - obstacle_x(i)))(7 downto 4);
                            rgb_b <= BLUE_CAR_IMAGE(to_integer(unsigned(vpos) - obstacle_y(i)), to_integer(unsigned(hpos) - obstacle_x(i)))(3 downto 0);
                        when 1 =>
                            -- Assign RGB values from black car image
                            rgb_r <= BLACK_CAR_IMAGE(to_integer(unsigned(vpos) - obstacle_y(i)), to_integer(unsigned(hpos) - obstacle_x(i)))(11 downto 8);
                            rgb_g <= BLACK_CAR_IMAGE(to_integer(unsigned(vpos) - obstacle_y(i)), to_integer(unsigned(hpos) - obstacle_x(i)))(7 downto 4);
                            rgb_b <= BLACK_CAR_IMAGE(to_integer(unsigned(vpos) - obstacle_y(i)), to_integer(unsigned(hpos) - obstacle_x(i)))(3 downto 0);
                        when 2 =>
                            -- Assign RGB values from brown car image
                            rgb_r <= BROWN_CAR_IMAGE(to_integer(unsigned(vpos) - obstacle_y(i)), to_integer(unsigned(hpos) - obstacle_x(i)))(11 downto 8);
                            rgb_g <= BROWN_CAR_IMAGE(to_integer(unsigned(vpos) - obstacle_y(i)), to_integer(unsigned(hpos) - obstacle_x(i)))(7 downto 4);
                            rgb_b <= BROWN_CAR_IMAGE(to_integer(unsigned(vpos) - obstacle_y(i)), to_integer(unsigned(hpos) - obstacle_x(i)))(3 downto 0);
                        when others =>
                            -- Default to blue car image
                            rgb_r <= BLUE_CAR_IMAGE(to_integer(unsigned(vpos) - obstacle_y(i)), to_integer(unsigned(hpos) - obstacle_x(i)))(11 downto 8);
                            rgb_g <= BLUE_CAR_IMAGE(to_integer(unsigned(vpos) - obstacle_y(i)), to_integer(unsigned(hpos) - obstacle_x(i)))(7 downto 4);
                            rgb_b <= BLUE_CAR_IMAGE(to_integer(unsigned(vpos) - obstacle_y(i)), to_integer(unsigned(hpos) - obstacle_x(i)))(3 downto 0);
                    end case;
                end if;
            end loop;
        end if;
    end process;

    -- Assign output signals
    obstacle_hit <= collision_detected;
    obstacle_present <= obstacle_present_internal;
    score <= current_score;

end Behavioral;
