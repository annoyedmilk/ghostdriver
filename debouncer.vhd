library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity debouncer is
    port (
        clk        : in std_logic;  -- Clock signal
        reset      : in std_logic;  -- Reset signal
        noisy      : in std_logic;  -- Noisy input signal
        clean      : out std_logic  -- Debounced output signal
    );
end entity;

architecture rtl of debouncer is
    constant C_DEBOUNCE_TIME : integer := 500000; -- 50MHz clock, 500000 cycles = 10ms
    signal counter : integer := 0;
    signal debounced_signal : std_logic := '0';
    signal debouncing : boolean := false;
begin
    process(clk, reset)
    begin
        if reset = '0' then
            counter <= 0;
            debounced_signal <= '0';
            debouncing <= false;
        elsif rising_edge(clk) then
            if not (noisy /= debounced_signal) then
                if not debouncing then
                    debouncing <= true;
                    counter <= 0;
                elsif counter < C_DEBOUNCE_TIME then
                    counter <= counter + 1;
                else
                    debouncing <= false;
                    debounced_signal <= not noisy;
                end if;
            else
                debouncing <= false;
                counter <= 0;
            end if;
        end if;
    end process;
    clean <= debounced_signal;
end architecture;
