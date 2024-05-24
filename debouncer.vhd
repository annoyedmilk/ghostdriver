library ieee; -- Import IEEE standard library
use ieee.std_logic_1164.all; -- Import standard logic package for basic logic operations
use ieee.numeric_std.all; -- Import numeric standard package for arithmetic operations

-- Entity declaration for the debouncer
-- This module debounces a noisy input signal to produce a clean output signal
entity debouncer is
    port (
        clk        : in std_logic;  -- Clock signal
        reset      : in std_logic;  -- Reset signal
        noisy      : in std_logic;  -- Noisy input signal
        clean      : out std_logic  -- Debounced output signal
    );
end entity;

architecture rtl of debouncer is
    -- Constant for debounce time: 50MHz clock, 500000 cycles = 10ms
    constant C_DEBOUNCE_TIME : integer := 500000;
    -- Signal to hold the debounce counter
    signal counter : integer := 0;
    -- Signal to hold the debounced output
    signal debounced_signal : std_logic := '0';
begin
    -- Process for debounce logic
    process(clk, reset)
    begin
        if reset = '0' then
            -- Asynchronous reset
            counter <= 0; -- Reset counter
            debounced_signal <= '0'; -- Reset debounced signal
        elsif rising_edge(clk) then
            -- On clock rising edge
            if noisy = debounced_signal then
                -- If noisy input matches the debounced signal
                counter <= 0; -- Reset counter
            elsif counter < C_DEBOUNCE_TIME then
                -- If counter is less than debounce time
                counter <= counter + 1; -- Increment counter
            else
                -- If counter reaches debounce time
                counter <= 0; -- Reset counter
                debounced_signal <= noisy; -- Update debounced signal
            end if;
        end if;
    end process;

    -- Assign the debounced signal to the clean output
    clean <= debounced_signal;
end architecture;
