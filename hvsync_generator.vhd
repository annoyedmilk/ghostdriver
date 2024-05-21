-- Import libraries and packages for using standardized logic and numeric functions
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

-- Definition of the entity "hvsync_generator" with its ports
entity hvsync_generator is
    port (
        clk         : in  std_logic;         -- Input for the clock
        reset       : in  std_logic;         -- Input for the reset signal
        hsync       : out std_logic;         -- Output for the horizontal sync signal
        vsync       : out std_logic;         -- Output for the vertical sync signal
        display_on  : out std_logic;         -- Output signal indicating if the display is active
        rgb_r       : out std_logic_vector(3 downto 0); -- 4-bit red output
        rgb_g       : out std_logic_vector(3 downto 0); -- 4-bit green output
        rgb_b       : out std_logic_vector(3 downto 0); -- 4-bit blue output
        hpos        : buffer std_logic_vector(9 downto 0); -- Buffer for the horizontal position
        vpos        : buffer std_logic_vector(9 downto 0)  -- Buffer for the vertical position
    );
end hvsync_generator;

-- Architecture definition of "hvsync_generator", uses behavioral modeling
architecture Behavioral of hvsync_generator is

    -- Constants for the VGA sync parameters
    constant H_DISPLAY : integer := 640; -- Width of the horizontal display
    constant H_BACK    : integer := 48;  -- Horizontal back porch
    constant H_FRONT   : integer := 16;  -- Horizontal front porch
    constant H_SYNC    : integer := 96;  -- Width of the horizontal sync pulse
    constant V_DISPLAY : integer := 480; -- Height of the vertical display
    constant V_TOP     : integer := 33;  -- Top border of the vertical display
    constant V_BOTTOM  : integer := 10;  -- Bottom border of the vertical display
    constant V_SYNC    : integer := 2;   -- Width of the vertical sync pulse

    -- Derived constants for the sync timings
    constant H_SYNC_START : integer := H_DISPLAY + H_FRONT; 
    constant H_SYNC_END   : integer := H_DISPLAY + H_FRONT + H_SYNC - 1;
    constant H_MAX        : integer := H_DISPLAY + H_BACK + H_FRONT + H_SYNC - 1;
    constant V_SYNC_START : integer := V_DISPLAY + V_BOTTOM - 1;  
    constant V_SYNC_END   : integer := V_DISPLAY + V_BOTTOM + V_SYNC - 1;
    constant V_MAX        : integer := V_DISPLAY + V_TOP + V_BOTTOM + V_SYNC - 1;

    -- Signals for positioning
    signal local_hpos : unsigned(9 downto 0) := (others => '0');
    signal local_vpos : unsigned(9 downto 0) := (others => '0');

begin

    -- Process for synchronization and reset logic
    process(clk, reset)
    begin
        if reset = '0' then
            -- Resets all positions and sync signals when the reset signal is active
            local_hpos <= (others => '0');
            local_vpos <= (others => '0');
            hsync      <= '0';
            vsync      <= '0';
            rgb_r      <= (others => '0');
            rgb_g      <= (others => '0');
            rgb_b      <= (others => '0');
        elsif rising_edge(clk) then
            -- Logic for the horizontal sync signal
            if local_hpos >= H_SYNC_START and local_hpos <= H_SYNC_END then
                hsync <= '0';
            else
                hsync <= '1';
            end if;

            -- Logic for position increment or reset
            if local_hpos = H_MAX then
                local_hpos <= (others => '0');
            else
                local_hpos <= local_hpos + 1;
            end if;

            -- Logic for the vertical sync signal
            if local_vpos >= V_SYNC_START and local_vpos <= V_SYNC_END then
                vsync <= '0';
            else
                vsync <= '1';
            end if;

            -- Logic for vertical position increment or reset
            if local_hpos = H_MAX then
                if local_vpos = V_MAX then
                    local_vpos <= (others => '0');
                else
                    local_vpos <= local_vpos + 1;
                end if;
            end if;
        end if;
    end process;

    -- Assignment of output signals
    hpos <= std_logic_vector(local_hpos);
    vpos <= std_logic_vector(local_vpos);
    display_on <= '1' when (unsigned(hpos) < H_DISPLAY and unsigned(vpos) < V_DISPLAY) else '0';

end Behavioral;
