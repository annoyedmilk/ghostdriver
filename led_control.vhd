library ieee;
use ieee.std_logic_1164.all;

entity led_control is
    port (
        clk       : in  std_logic;
        btn_left  : in  std_logic;
        btn_right : in  std_logic;
        led_left  : out std_logic;
        led_right : out std_logic
    );
end led_control;

architecture Behavioral of led_control is
begin
    process(clk)
    begin
        if rising_edge(clk) then
            led_left <= btn_left;
            led_right <= btn_right;
        end if;
    end process;
end Behavioral;
