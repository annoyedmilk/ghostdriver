library ieee; -- Import IEEE standard library
use ieee.std_logic_1164.all; -- Import standard logic package for basic logic operations
use ieee.numeric_std.all; -- Import numeric standard package for arithmetic operations

-- Entity declaration for the top-level race game
entity racegame_top is
    generic (
        USE_PLL : boolean := true -- Generic parameter to control the use of PLL
    );  
    port (
        clk_50       : in std_logic; -- 50 MHz input clock
        reset        : in std_logic; -- Input signal for reset
        btn_left     : in std_logic; -- Button for moving left
        btn_right    : in std_logic; -- Button for moving right
        hsync        : out std_logic; -- Output signal for horizontal sync
        vsync        : out std_logic; -- Output signal for vertical sync
        rgb_r        : out std_logic_vector(3 downto 0); -- 4-bit red output
        rgb_g        : out std_logic_vector(3 downto 0); -- 4-bit green output
        rgb_b        : out std_logic_vector(3 downto 0); -- 4-bit blue output
        led_left     : out std_logic; -- LED for left button
        led_right    : out std_logic; -- LED for right button
        Segment0     : out std_logic_vector(6 downto 0); -- Seven-segment display segments for digit 0
        Segment1     : out std_logic_vector(6 downto 0); -- Seven-segment display segments for digit 1
        Segment2     : out std_logic_vector(6 downto 0); -- Seven-segment display segments for digit 2
        Segment3     : out std_logic_vector(6 downto 0); -- Seven-segment display segments for digit 3
        leds         : out std_logic_vector(7 downto 0) -- Additional 8 LEDs
    );
end entity;

architecture rtl of racegame_top is

    -- Component declaration for horizontal and vertical sync generator
    component hvsync_generator is
        port (
            clk        : in std_logic; -- Clock
            reset      : in std_logic; -- Reset
            hsync      : out std_logic; -- Horizontal sync signal
            vsync      : out std_logic; -- Vertical sync signal
            display_on : out std_logic; -- Display control signal
            hpos       : buffer std_logic_vector(9 downto 0); -- Horizontal position
            vpos       : buffer std_logic_vector(9 downto 0) -- Vertical position
        );
    end component;

    -- Component declaration for debouncer
    component debouncer is
        port (
            clk    : in std_logic; -- Clock signal
            reset  : in std_logic; -- Reset signal
            noisy  : in std_logic; -- Noisy input signal
            clean  : out std_logic -- Debounced output signal
        );
    end component;

    -- Component declaration for car control
    component car_control is
        port (
            clk        : in std_logic; -- Clock input
            reset      : in std_logic; -- Reset signal
            move_left  : in std_logic; -- Move left input
            move_right : in std_logic; -- Move right input
            car_pos_x  : out std_logic_vector(9 downto 0) -- Car's horizontal position
        );
    end component;

    -- Component declaration for car obstacle management
    component car_obstacle is
        port (
            clk              : in std_logic; -- Clock input
            reset            : in std_logic; -- Reset signal
            car_pos_x        : in std_logic_vector(9 downto 0); -- Car's horizontal position
            hpos             : in unsigned(9 downto 0); -- Horizontal position
            vpos             : in unsigned(9 downto 0); -- Vertical position
            obstacle_hit     : out std_logic; -- Signal indicating a collision
            rgb_r            : out std_logic_vector(3 downto 0); -- 4-bit red output
            rgb_g            : out std_logic_vector(3 downto 0); -- 4-bit green output
            rgb_b            : out std_logic_vector(3 downto 0); -- 4-bit blue output
            obstacle_present : out std_logic; -- Signal indicating an obstacle is present
            score            : out unsigned(15 downto 0) -- 16-bit score output
        );
    end component;

    -- Component declaration for rendering logic
    component rendering_logic is
        port (
            clk               : in std_logic; -- Clock input
            display_on        : in std_logic; -- Display control signal
            hpos              : in std_logic_vector(9 downto 0); -- Horizontal position
            vpos              : in std_logic_vector(9 downto 0); -- Vertical position
            car_pos_x         : in std_logic_vector(9 downto 0); -- Car's horizontal position
            obstacle_present  : in std_logic; -- Obstacle present signal
            obstacle_hit      : in std_logic; -- Obstacle hit signal
            obs_rgb_r         : in std_logic_vector(3 downto 0); -- 4-bit red obstacle color
            obs_rgb_g         : in std_logic_vector(3 downto 0); -- 4-bit green obstacle color
            obs_rgb_b         : in std_logic_vector(3 downto 0); -- 4-bit blue obstacle color
            scroll_offset     : in unsigned(9 downto 0); -- Scroll offset
            rgb_r             : out std_logic_vector(3 downto 0); -- 4-bit red output
            rgb_g             : out std_logic_vector(3 downto 0); -- 4-bit green output
            rgb_b             : out std_logic_vector(3 downto 0) -- 4-bit blue output
        );
    end component;

    -- Component declaration for scrolling logic
    component scrolling_logic is
        port (
            clk          : in std_logic; -- Clock input
            reset        : in std_logic; -- Reset signal
            scroll_speed : in unsigned(19 downto 0); -- Scroll speed
            scroll_offset : out unsigned(9 downto 0) -- Scroll offset output
        );
    end component;

    -- Component declaration for LED control
    component led_control is
        port (
            clk       : in std_logic; -- Clock input
            btn_left  : in std_logic; -- Button left input
            btn_right : in std_logic; -- Button right input
            led_left  : out std_logic; -- LED left output
            led_right : out std_logic -- LED right output
        );
    end component;

    -- Component declaration for seven-segment display
    component seven_segment_display is
        port (
            clk      : in std_logic; -- Clock input
            reset    : in std_logic; -- Reset input
            score    : in unsigned(15 downto 0); -- 16-bit score input
            Segment0 : out std_logic_vector(6 downto 0); -- Seven-segment display segments for digit 0
            Segment1 : out std_logic_vector(6 downto 0); -- Seven-segment display segments for digit 1
            Segment2 : out std_logic_vector(6 downto 0); -- Seven-segment display segments for digit 2
            Segment3 : out std_logic_vector(6 downto 0); -- Seven-segment display segments for digit 3
            leds     : out std_logic_vector(7 downto 0) -- Additional 8 LEDs
        );
    end component;

    -- Signal declarations
    signal clk                : std_logic; -- Internal clock
    signal display_on         : std_logic; -- Display control signal
    signal hpos               : std_logic_vector(9 downto 0); -- Horizontal position
    signal vpos               : std_logic_vector(9 downto 0); -- Vertical position
    signal btn_left_clean     : std_logic; -- Cleaned left button signal
    signal btn_right_clean    : std_logic; -- Cleaned right button signal
    signal car_pos_x          : std_logic_vector(9 downto 0); -- Car's horizontal position
    signal obstacle_hit       : std_logic; -- Obstacle hit signal
    signal obs_rgb_r          : std_logic_vector(3 downto 0); -- 4-bit red obstacle color
    signal obs_rgb_g          : std_logic_vector(3 downto 0); -- 4-bit green obstacle color
    signal obs_rgb_b          : std_logic_vector(3 downto 0); -- 4-bit blue obstacle color
    signal obstacle_present   : std_logic; -- Obstacle present signal
    signal score              : unsigned(15 downto 0); -- 16-bit score
    signal scroll_offset      : unsigned(9 downto 0); -- Vertical scroll offset

    -- Constant for scroll speed
    constant SCROLL_SPEED : unsigned(19 downto 0) := to_unsigned(150000, 20); -- Adjust this for scroll speed

begin

    -- PLL instantiation for clock generation
    PLL: if USE_PLL generate
        pll1: entity work.pll
        port map (
            inclk0 => clk_50, -- Input clock
            c0     => clk -- Generated clock
        );
    end generate PLL;

    -- Direct clock connection for simulation
    Simu_PLL: if not USE_PLL generate
        clk <= clk_50; -- The clock input is directly connected to the global clock of the design
    end generate Simu_PLL;

    -- Horizontal and vertical sync generator instantiation
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

    -- Debouncer instantiation for left button
    debouncer_left : debouncer
        port map (
            clk    => clk,
            reset  => reset,
            noisy  => btn_left,
            clean  => btn_left_clean
        );

    -- Debouncer instantiation for right button
    debouncer_right : debouncer
        port map (
            clk    => clk,
            reset  => reset,
            noisy  => btn_right,
            clean  => btn_right_clean
        );

    -- Car control instantiation
    car_control_inst : car_control
        port map (
            clk        => clk,
            reset      => reset,
            move_left  => btn_left_clean,
            move_right => btn_right_clean,
            car_pos_x  => car_pos_x
        );

    -- Car obstacle instantiation
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
            obstacle_present => obstacle_present,
            score            => score
        );

    -- LED control instantiation
    led_ctrl : led_control
        port map (
            clk       => clk,
            btn_left  => btn_left_clean,
            btn_right => btn_right_clean,
            led_left  => led_left,
            led_right => led_right
        );

    -- Scrolling logic instantiation
    scrolling_ctrl : scrolling_logic
        port map (
            clk          => clk,
            reset        => reset,
            scroll_speed => SCROLL_SPEED,
            scroll_offset => scroll_offset
        );

    -- Rendering logic instantiation
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

    -- Seven-segment display controller instantiation
    seven_segment_ctrl : seven_segment_display
        port map (
            clk          => clk,
            reset        => reset,
            score        => score,
            Segment0     => Segment0,
            Segment1     => Segment1,
            Segment2     => Segment2,
            Segment3     => Segment3,
            leds         => leds
        );

end architecture;
