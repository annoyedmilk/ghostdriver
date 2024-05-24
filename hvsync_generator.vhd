library ieee; -- Import IEEE standard library
use ieee.std_logic_1164.all; -- Import standard logic package for basic logic operations
use ieee.numeric_std.all; -- Import numeric standard package for arithmetic operations
use ieee.std_logic_unsigned.all; -- Import package for unsigned operations on std_logic_vector

-- Entity declaration for the horizontal and vertical sync generator
entity hvsync_generator is
    port (
        clk         : in  std_logic;         -- Input for the clock
        reset       : in  std_logic;         -- Input for the reset signal
        hsync       : out std_logic;         -- Output for the horizontal sync signal
        vsync       : out std_logic;         -- Output for the vertical sync signal
        display_on  : out std_logic;         -- Output signal indicating if the display is active
        hpos        : buffer std_logic_vector(9 downto 0); -- Buffer for the horizontal position
        vpos        : buffer std_logic_vector(9 downto 0)  -- Buffer for the vertical position
    );
end hvsync_generator;

-- Architecture definition of "hvsync_generator" using behavioral modeling
architecture Behavioral of hvsync_generator is

    -- Constants for the VGA sync parameters
    constant H_DISPLAY : integer := 640; -- Width of the horizontal display area
    constant H_BACK    : integer := 48;  -- Horizontal back porch
    constant H_FRONT   : integer := 16;  -- Horizontal front porch
    constant H_SYNC    : integer := 96;  -- Width of the horizontal sync pulse
    constant V_DISPLAY : integer := 480; -- Height of the vertical display area
    constant V_TOP     : integer := 33;  -- Top border of the vertical display area
    constant V_BOTTOM  : integer := 10;  -- Bottom border of the vertical display area
    constant V_SYNC    : integer := 2;   -- Width of the vertical sync pulse

    -- Derived constants for the sync timings
    constant H_SYNC_START : integer := H_DISPLAY + H_FRONT; -- Start of horizontal sync
    constant H_SYNC_END   : integer := H_DISPLAY + H_FRONT + H_SYNC - 1; -- End of horizontal sync
    constant H_MAX        : integer := H_DISPLAY + H_BACK + H_FRONT + H_SYNC - 1; -- Total horizontal cycle
    constant V_SYNC_START : integer := V_DISPLAY + V_BOTTOM - 1; -- Start of vertical sync
    constant V_SYNC_END   : integer := V_DISPLAY + V_BOTTOM + V_SYNC - 1; -- End of vertical sync
    constant V_MAX        : integer := V_DISPLAY + V_TOP + V_BOTTOM + V_SYNC - 1; -- Total vertical cycle

    -- Signals for horizontal and vertical positions
    signal local_hpos : unsigned(9 downto 0) := (others => '0'); -- Horizontal position counter
    signal local_vpos : unsigned(9 downto 0) := (others => '0'); -- Vertical position counter

begin

    -- Process for synchronization and reset logic
    process(clk, reset)
    begin
        if reset = '0' then
            -- Reset all positions and sync signals when reset is active
            local_hpos <= (others => '0'); -- Reset horizontal position
            local_vpos <= (others => '0'); -- Reset vertical position
            hsync      <= '0'; -- Reset horizontal sync signal
            vsync      <= '0'; -- Reset vertical sync signal
        elsif rising_edge(clk) then
            -- Horizontal sync signal generation
            if local_hpos >= H_SYNC_START and local_hpos <= H_SYNC_END then
                hsync <= '0'; -- Activate horizontal sync
            else
                hsync <= '1'; -- Deactivate horizontal sync
            end if;

            -- Horizontal position counter increment or reset
            if local_hpos = H_MAX then
                local_hpos <= (others => '0'); -- Reset horizontal position at end of line
            else
                local_hpos <= local_hpos + 1; -- Increment horizontal position
            end if;

            -- Vertical sync signal generation
            if local_vpos >= V_SYNC_START and local_vpos <= V_SYNC_END then
                vsync <= '0'; -- Activate vertical sync
            else
                vsync <= '1'; -- Deactivate vertical sync
            end if;

            -- Vertical position counter increment or reset
            if local_hpos = H_MAX then
                if local_vpos = V_MAX then
                    local_vpos <= (others => '0'); -- Reset vertical position at end of frame
                else
                    local_vpos <= local_vpos + 1; -- Increment vertical position
                end if;
            end if;
        end if;
    end process;

    -- Assignment of output signals
    hpos <= std_logic_vector(local_hpos); -- Assign horizontal position
    vpos <= std_logic_vector(local_vpos); -- Assign vertical position
    display_on <= '1' when (unsigned(hpos) < H_DISPLAY and unsigned(vpos) < V_DISPLAY) else '0'; -- Display active signal

end Behavioral;
