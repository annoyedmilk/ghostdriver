library ieee; -- Import IEEE standard library
use ieee.std_logic_1164.all; -- Import standard logic package for basic logic operations
use ieee.numeric_std.all; -- Import numeric standard package for arithmetic operations

-- Import the car graphic data
library work;
use work.red_car_graphic.all;
use work.street_graphic.all;

-- Entity declaration for rendering logic
entity rendering_logic is
    port (
        clk               : in  std_logic; -- Clock input
        display_on        : in  std_logic; -- Display enable signal
        hpos              : in  std_logic_vector(9 downto 0); -- Horizontal pixel position
        vpos              : in  std_logic_vector(9 downto 0); -- Vertical pixel position
        car_pos_x         : in  std_logic_vector(9 downto 0); -- Car's horizontal position
        obstacle_present  : in  std_logic; -- Signal indicating an obstacle is present
        obstacle_hit      : in  std_logic; -- Signal indicating a collision
        obs_rgb_r         : in  std_logic_vector(3 downto 0); -- Obstacle red color component
        obs_rgb_g         : in  std_logic_vector(3 downto 0); -- Obstacle green color component
        obs_rgb_b         : in  std_logic_vector(3 downto 0); -- Obstacle blue color component
        scroll_offset     : in  unsigned(9 downto 0); -- Vertical scroll offset
        rgb_r             : out std_logic_vector(3 downto 0); -- Red color output
        rgb_g             : out std_logic_vector(3 downto 0); -- Green color output
        rgb_b             : out std_logic_vector(3 downto 0)  -- Blue color output
    );
end rendering_logic;

-- Architecture definition of "rendering_logic" using behavioral modeling
architecture Behavioral of rendering_logic is
    signal vpos_scroll : unsigned(9 downto 0); -- Signal for scrolled vertical position
begin
    -- Process for rendering the game graphics
    process(clk)
    begin
        if rising_edge(clk) then
            -- Default to black
            rgb_r <= x"0"; -- Default red component to black
            rgb_g <= x"0"; -- Default green component to black
            rgb_b <= x"0"; -- Default blue component to black

            if display_on = '1' then
                -- Calculate wrapped vertical position for scrolling
                vpos_scroll <= (480 + unsigned(vpos) - scroll_offset) mod to_unsigned(480, 10);

                -- Render track
                rgb_r <= STREET_IMAGE(to_integer(vpos_scroll), to_integer(unsigned(hpos)))(11 downto 8); -- Red component of the track
                rgb_g <= STREET_IMAGE(to_integer(vpos_scroll), to_integer(unsigned(hpos)))(7 downto 4); -- Green component of the track
                rgb_b <= STREET_IMAGE(to_integer(vpos_scroll), to_integer(unsigned(hpos)))(3 downto 0); -- Blue component of the track

                -- Render car on top of the track
                if unsigned(hpos) >= unsigned(car_pos_x) and unsigned(hpos) < unsigned(car_pos_x) + red_car_width and
                   unsigned(vpos) >= 390 and unsigned(vpos) < 390 + red_car_height then
                    -- Draw car using the RED_CAR_IMAGE
                    rgb_r <= RED_CAR_IMAGE(to_integer(unsigned(vpos) - 390), to_integer(unsigned(hpos) - unsigned(car_pos_x)))(11 downto 8); -- Red component of the car
                    rgb_g <= RED_CAR_IMAGE(to_integer(unsigned(vpos) - 390), to_integer(unsigned(hpos) - unsigned(car_pos_x)))(7 downto 4); -- Green component of the car
                    rgb_b <= RED_CAR_IMAGE(to_integer(unsigned(vpos) - 390), to_integer(unsigned(hpos) - unsigned(car_pos_x)))(3 downto 0); -- Blue component of the car
                end if;

                -- Render obstacles on top of the track
                if obstacle_present = '1' then
                    rgb_r <= obs_rgb_r; -- Red component of the obstacle
                    rgb_g <= obs_rgb_g; -- Green component of the obstacle
                    rgb_b <= obs_rgb_b; -- Blue component of the obstacle
                end if;

                -- Handle collision
                if obstacle_hit = '1' then
                    -- If a collision occurs, set the screen to red
                    rgb_r <= x"F"; -- Set red component to maximum
                    rgb_g <= x"0"; -- Set green component to zero
                    rgb_b <= x"0"; -- Set blue component to zero
                end if;
            end if;
        end if;
    end process;
end Behavioral;
