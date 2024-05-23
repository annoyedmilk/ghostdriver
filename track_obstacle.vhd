library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity track_obstacle is
    port (
        clk          : in  std_logic;  -- Clock input
        reset        : in  std_logic;  -- Reset signal
        car_pos_x    : in  std_logic_vector(9 downto 0); -- Car's horizontal position
        hpos         : in  unsigned(9 downto 0); -- Horizontal position
        vpos         : in  unsigned(9 downto 0); -- Vertical position
        obstacle_hit : out std_logic;  -- Obstacle hit signal
        rgb_r        : out std_logic_vector(3 downto 0); -- 4-bit red output
        rgb_g        : out std_logic_vector(3 downto 0); -- 4-bit green output
        rgb_b        : out std_logic_vector(3 downto 0)  -- 4-bit blue output
    );
end track_obstacle;

architecture Behavioral of track_obstacle is
    use work.blue_car_graphic.all;  -- Use the blue car graphic package

    constant OBSTACLE_WIDTH  : integer := blue_car_width;
    constant OBSTACLE_HEIGHT : integer := blue_car_height;
    constant CAR_WIDTH       : integer := 50;  -- Increase hitbox width for the car
    constant CAR_HEIGHT      : integer := 50;  -- Increase hitbox height for the car
    constant CAR_Y_POSITION  : unsigned(9 downto 0) := to_unsigned(400, 10); -- Car's vertical position
    constant SLOW_DOWN_FACTOR : integer := 200000; -- Reduce to make obstacles move faster

    type obstacle_array is array (0 to 3) of unsigned(9 downto 0);
    signal obstacle_x : obstacle_array := (others => to_unsigned(200, 10));
    signal obstacle_y : obstacle_array := (others => to_unsigned(0, 10));
    signal slow_counter : integer := 0;
    signal random_seed : unsigned(9 downto 0) := to_unsigned(12345, 10); -- Seed for LFSR
    signal collision_detected : std_logic := '0';
    
    -- Linear Feedback Shift Register (LFSR) for pseudo-random number generation
    function lfsr(seed: unsigned(9 downto 0)) return unsigned is
        variable lfsr_reg : unsigned(9 downto 0) := seed;
    begin
        lfsr_reg := lfsr_reg(8 downto 0) & (lfsr_reg(9) xor lfsr_reg(5) xor lfsr_reg(4) xor lfsr_reg(3));
        return lfsr_reg;
    end function;
begin
    process(clk, reset)
    begin
        if reset = '0' then
            for i in 0 to 3 loop
                random_seed <= lfsr(random_seed);
                obstacle_x(i) <= random_seed mod 560 + 80; -- Random horizontal position within bounds
                obstacle_y(i) <= to_unsigned(0, 10);
            end loop;
            slow_counter <= 0;
            collision_detected <= '0';
        elsif rising_edge(clk) then
            if slow_counter = SLOW_DOWN_FACTOR then
                slow_counter <= 0;
                for i in 0 to 3 loop
                    if obstacle_y(i) > to_unsigned(480, 10) then
                        random_seed <= lfsr(random_seed);
                        obstacle_x(i) <= random_seed mod 560 + 80; -- Random horizontal position within bounds
                        obstacle_y(i) <= to_unsigned(0, 10);
                    else
                        obstacle_y(i) <= obstacle_y(i) + 1;
                    end if;
                end loop;
            else
                slow_counter <= slow_counter + 1;
            end if;
            
            -- Collision detection
            collision_detected <= '0';
            for i in 0 to 3 loop
                if unsigned(car_pos_x) + to_unsigned(CAR_WIDTH, 10) >= obstacle_x(i) and unsigned(car_pos_x) <= obstacle_x(i) + to_unsigned(OBSTACLE_WIDTH, 10) and
                   CAR_Y_POSITION + to_unsigned(CAR_HEIGHT, 10) >= obstacle_y(i) and CAR_Y_POSITION <= obstacle_y(i) + to_unsigned(OBSTACLE_HEIGHT, 10) then
                    collision_detected <= '1';
                end if;
            end loop;
        end if;
    end process;

    -- Render obstacles (blue car) on top of the track
    process(clk)
    begin
        if rising_edge(clk) then
            -- Default to black
            rgb_r <= x"0";               
            rgb_g <= x"0";
            rgb_b <= x"0";

            for i in 0 to 3 loop
                if unsigned(hpos) >= obstacle_x(i) and unsigned(hpos) < obstacle_x(i) + OBSTACLE_WIDTH and
                   unsigned(vpos) >= obstacle_y(i) and unsigned(vpos) < obstacle_y(i) + OBSTACLE_HEIGHT then
                    -- Draw blue car obstacle
                    rgb_r <= BLUE_CAR_IMAGE(to_integer(unsigned(vpos) - obstacle_y(i)), to_integer(unsigned(hpos) - obstacle_x(i)))(11 downto 8);
                    rgb_g <= BLUE_CAR_IMAGE(to_integer(unsigned(vpos) - obstacle_y(i)), to_integer(unsigned(hpos) - obstacle_x(i)))(7 downto 4);
                    rgb_b <= BLUE_CAR_IMAGE(to_integer(unsigned(vpos) - obstacle_y(i)), to_integer(unsigned(hpos) - obstacle_x(i)))(3 downto 0);
                end if;
            end loop;
        end if;
    end process;

    obstacle_hit <= collision_detected;

end Behavioral;
