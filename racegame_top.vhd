library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity racegame_top is
    generic (
        USE_PLL : boolean := true
    );  
    port (
        clk_50    : in std_logic; -- 50 MHz input clock
        reset     : in std_logic; -- input signal for reset
        btn_left  : in std_logic; -- button for moving left
        btn_right : in std_logic; -- button for moving right
        hsync     : out std_logic; -- output signal for horizontal sync
        vsync     : out std_logic; -- output signal for vertical sync
        rgb_r     : out std_logic_vector(3 downto 0); -- 4-bit red output
        rgb_g     : out std_logic_vector(3 downto 0); -- 4-bit green output
        rgb_b     : out std_logic_vector(3 downto 0); -- 4-bit blue output
        led_left  : out std_logic; -- LED for left button
        led_right : out std_logic  -- LED for right button
    );
end entity;

architecture rtl of racegame_top is

    component hvsync_generator is
        port (
            clk        : in std_logic; -- clock
            reset      : in std_logic; -- reset
            hsync      : out std_logic; -- horizontal sync signal
            vsync      : out std_logic; -- vertical sync signal
            display_on : out std_logic; -- display control signal
            hpos       : out std_logic_vector(9 downto 0); -- horizontal position
            vpos       : out std_logic_vector(9 downto 0)  -- vertical position
        );
    end component;

    component debouncer is
        port (
            clk        : in std_logic;  -- Clock signal
            reset      : in std_logic;  -- Reset signal
            noisy      : in std_logic;  -- Noisy input signal
            clean      : out std_logic  -- Debounced output signal
        );
    end component;

    component car_control is
        port (
            clk         : in  std_logic;         -- Clock input
            reset       : in  std_logic;         -- Reset signal
            move_left   : in  std_logic;         -- Move left input
            move_right  : in  std_logic;         -- Move right input
            car_pos_x   : out std_logic_vector(9 downto 0) -- Car's horizontal position
        );
    end component;

    component track_obstacle is
        port (
            clk          : in  std_logic;         -- Clock input
            reset        : in  std_logic;         -- Reset signal
            hpos         : in  std_logic_vector(9 downto 0); -- Horizontal position from VGA controller
            vpos         : in  std_logic_vector(9 downto 0); -- Vertical position from VGA controller
            track_color  : out std_logic_vector(11 downto 0); -- RGB color output for the track
            obstacle_hit : out std_logic         -- Signal indicating a collision
        );
    end component;

    signal clk        : std_logic; -- internal clock
    signal locked     : std_logic; -- PLL lock signal
    
    signal display_on : std_logic; 
    signal hpos       : std_logic_vector(9 downto 0); -- horizontal position
    signal vpos       : std_logic_vector(9 downto 0); -- vertical position

    signal btn_left_clean : std_logic;
    signal btn_right_clean : std_logic;

    signal car_pos_x : std_logic_vector(9 downto 0);
    signal track_color : std_logic_vector(11 downto 0);
    signal obstacle_hit : std_logic;

    -- Import the car graphic data
    use work.red_car_graphic.all;

begin
    PLL: if USE_PLL generate -- executed during Quartus compilation
        pll1: entity work.pll
        port map (
            inclk0 => clk_50,
            c0     => clk,
            locked => locked
        );
    end generate PLL;

    Simu_PLL: if not USE_PLL generate -- executed during Modelsim simulation
        clk <= clk_50; -- The clock input is directly connected to the global clock of the design
    end generate Simu_PLL;

    hvsync_gen : hvsync_generator
        port map (
            clk        => clk,
            reset      => reset,
            hsync      => hsync,
            vsync      => vsync,
            display_on => display_on,
            hpos       => hpos,
            vpos       => vpos
        );

    debouncer_left : debouncer
        port map (
            clk    => clk,
            reset  => reset,
            noisy  => btn_left,
            clean  => btn_left_clean
        );

    debouncer_right : debouncer
        port map (
            clk    => clk,
            reset  => reset,
            noisy  => btn_right,
            clean  => btn_right_clean
        );

    car_control_inst : car_control
        port map (
            clk        => clk,
            reset      => reset,
            move_left  => btn_left_clean,
            move_right => btn_right_clean,
            car_pos_x  => car_pos_x
        );

    track_obstacle_inst : track_obstacle
        port map (
            clk          => clk,
            reset        => reset,
            hpos         => hpos,
            vpos         => vpos,
            track_color  => track_color,
            obstacle_hit => obstacle_hit
        );

    -- Synchronize button inputs to the clock
    process(clk)
    begin
        if rising_edge(clk) then
            led_left <= btn_left_clean;
            led_right <= btn_right_clean;
        end if;
    end process;

    process(clk)
    begin
        if rising_edge(clk) then
            -- Default to black
            rgb_r <= x"0";               
            rgb_g <= x"0";
            rgb_b <= x"0";

            if display_on = '1' then
                -- Render track
                rgb_r <= track_color(11 downto 8);
                rgb_g <= track_color(7 downto 4);
                rgb_b <= track_color(3 downto 0);

                -- Render car on top of the track
            if unsigned(hpos) >= unsigned(car_pos_x) and unsigned(hpos) < unsigned(car_pos_x) + car_width and
               unsigned(vpos) >= 390 and unsigned(vpos) < 390 + car_height then
                -- Draw car using the RED_CAR_IMAGE
                rgb_r <= RED_CAR_IMAGE(to_integer(unsigned(vpos) - 390), to_integer(unsigned(hpos) - unsigned(car_pos_x)))(11 downto 8);
                rgb_g <= RED_CAR_IMAGE(to_integer(unsigned(vpos) - 390), to_integer(unsigned(hpos) - unsigned(car_pos_x)))(7 downto 4);
                rgb_b <= RED_CAR_IMAGE(to_integer(unsigned(vpos) - 390), to_integer(unsigned(hpos) - unsigned(car_pos_x)))(3 downto 0);
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

end architecture;
