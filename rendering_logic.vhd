library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Import the car graphic data
library work;
use work.red_car_graphic.all;
use work.street_graphic.all;
use work.blue_car_graphic.all;
use work.black_car_graphic.all;
use work.brown_car_graphic.all;

entity rendering_logic is
    port (
        clk               : in  std_logic;
        display_on        : in  std_logic;
        hpos              : in  std_logic_vector(9 downto 0);
        vpos              : in  std_logic_vector(9 downto 0);
        car_pos_x         : in  std_logic_vector(9 downto 0);
        obstacle_present  : in  std_logic;
        obstacle_hit      : in  std_logic;
        obs_rgb_r         : in  std_logic_vector(3 downto 0);
        obs_rgb_g         : in  std_logic_vector(3 downto 0);
        obs_rgb_b         : in  std_logic_vector(3 downto 0);
        scroll_offset     : in  unsigned(9 downto 0);
        rgb_r             : out std_logic_vector(3 downto 0);
        rgb_g             : out std_logic_vector(3 downto 0);
        rgb_b             : out std_logic_vector(3 downto 0)
    );
end rendering_logic;

architecture Behavioral of rendering_logic is
    signal vpos_scroll : unsigned(9 downto 0);
begin
    process(clk)
    begin
        if rising_edge(clk) then
            -- Default to black
            rgb_r <= x"0";
            rgb_g <= x"0";
            rgb_b <= x"0";

            if display_on = '1' then
                -- Calculate wrapped vertical position for scrolling
                vpos_scroll <= (480 + unsigned(vpos) - scroll_offset) mod to_unsigned(480, 10);

                -- Render track
                rgb_r <= STREET_IMAGE(to_integer(vpos_scroll), to_integer(unsigned(hpos)))(11 downto 8);
                rgb_g <= STREET_IMAGE(to_integer(vpos_scroll), to_integer(unsigned(hpos)))(7 downto 4);
                rgb_b <= STREET_IMAGE(to_integer(vpos_scroll), to_integer(unsigned(hpos)))(3 downto 0);

                -- Render car on top of the track
                if unsigned(hpos) >= unsigned(car_pos_x) and unsigned(hpos) < unsigned(car_pos_x) + red_car_width and
                   unsigned(vpos) >= 390 and unsigned(vpos) < 390 + red_car_height then
                    -- Draw car using the RED_CAR_IMAGE
                    rgb_r <= RED_CAR_IMAGE(to_integer(unsigned(vpos) - 390), to_integer(unsigned(hpos) - unsigned(car_pos_x)))(11 downto 8);
                    rgb_g <= RED_CAR_IMAGE(to_integer(unsigned(vpos) - 390), to_integer(unsigned(hpos) - unsigned(car_pos_x)))(7 downto 4);
                    rgb_b <= RED_CAR_IMAGE(to_integer(unsigned(vpos) - 390), to_integer(unsigned(hpos) - unsigned(car_pos_x)))(3 downto 0);
                end if;

                -- Render obstacles on top of the track
                if obstacle_present = '1' then
                    rgb_r <= obs_rgb_r;
                    rgb_g <= obs_rgb_g;
                    rgb_b <= obs_rgb_b;
                end if;

                -- Handle collision
                if obstacle_hit = '1' then
                    -- If a collision occurs, set the screen to red
                    rgb_r <= x"F";
                    rgb_g <= x"0";
                    rgb_b <= x"0";
                end if;
            end if;
        end if;
    end process;
end Behavioral;
