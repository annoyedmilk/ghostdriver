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
begin
    process(clk, reset)
    begin
        if reset = '0' then
            counter <= 0;
            debounced_signal <= '0';
        elsif rising_edge(clk) then
            if noisy = debounced_signal then
                counter <= 0;
            elsif counter < C_DEBOUNCE_TIME then
                counter <= counter + 1;
            else
                counter <= 0;
                debounced_signal <= noisy;
            end if;
        end if;
    end process;
    clean <= debounced_signal;
end architecture;
