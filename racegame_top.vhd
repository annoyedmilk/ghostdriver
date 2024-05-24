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

    component car_obstacle is
        port (
            clk              : in  std_logic;         -- Clock input
            reset            : in  std_logic;         -- Reset signal
            car_pos_x        : in  std_logic_vector(9 downto 0); -- Car's horizontal position
            hpos             : in  unsigned(9 downto 0); -- Horizontal position
            vpos             : in  unsigned(9 downto 0); -- Vertical position
            obstacle_hit     : out std_logic;         -- Signal indicating a collision
            rgb_r            : out std_logic_vector(3 downto 0); -- 4-bit red output
            rgb_g            : out std_logic_vector(3 downto 0); -- 4-bit green output
            rgb_b            : out std_logic_vector(3 downto 0); -- 4-bit blue output
            obstacle_present : out std_logic          -- Signal indicating an obstacle is present
        );
    end component;

    component rendering_logic is
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
    end component;

    component scrolling_logic is
        port (
            clk          : in  std_logic;
            reset        : in  std_logic;
            scroll_speed : in  unsigned(19 downto 0);
            scroll_offset : out unsigned(9 downto 0)
        );
    end component;

    component led_control is
        port (
            clk       : in  std_logic;
            btn_left  : in  std_logic;
            btn_right : in  std_logic;
            led_left  : out std_logic;
            led_right : out std_logic
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
    signal obstacle_hit : std_logic;
    signal obs_rgb_r : std_logic_vector(3 downto 0);
    signal obs_rgb_g : std_logic_vector(3 downto 0);
    signal obs_rgb_b : std_logic_vector(3 downto 0);
    signal obstacle_present : std_logic;

    signal scroll_offset : unsigned(9 downto 0); -- Vertical scroll offset
    constant SCROLL_SPEED : unsigned(19 downto 0) := to_unsigned(150000, 20); -- Adjust this for scroll speed

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

    car_obstacle_inst : car_obstacle
        port map (
            clk              => clk,
            reset            => reset,
            car_pos_x        => car_pos_x,
            hpos             => unsigned(hpos),
            vpos             => unsigned(vpos),
            obstacle_hit     => obstacle_hit,
            rgb_r            => obs_rgb_r,
            rgb_g            => obs_rgb_g,
            rgb_b            => obs_rgb_b,
            obstacle_present => obstacle_present
        );

    led_ctrl : led_control
        port map (
            clk       => clk,
            btn_left  => btn_left_clean,
            btn_right => btn_right_clean,
            led_left  => led_left,
            led_right => led_right
        );

    scrolling_ctrl : scrolling_logic
        port map (
            clk          => clk,
            reset        => reset,
            scroll_speed => SCROLL_SPEED,
            scroll_offset => scroll_offset
        );

    render_ctrl : rendering_logic
        port map (
            clk               => clk,
            display_on        => display_on,
            hpos              => hpos,
            vpos              => vpos,
            car_pos_x         => car_pos_x,
            obstacle_present  => obstacle_present,
            obstacle_hit      => obstacle_hit,
            obs_rgb_r         => obs_rgb_r,
            obs_rgb_g         => obs_rgb_g,
            obs_rgb_b         => obs_rgb_b,
            scroll_offset     => scroll_offset,
            rgb_r             => rgb_r,
            rgb_g             => rgb_g,
            rgb_b             => rgb_b
        );

end architecture;
