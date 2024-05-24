library ieee; -- Import IEEE standard library
use ieee.std_logic_1164.all; -- Import standard logic package for basic logic operations

-- Entity declaration for LED control
entity led_control is
    port (
        clk       : in  std_logic; -- Clock input
        btn_left  : in  std_logic; -- Left button input
        btn_right : in  std_logic; -- Right button input
        led_left  : out std_logic; -- LED output for left button
        led_right : out std_logic  -- LED output for right button
    );
end led_control;

-- Architecture definition of "led_control" using behavioral modeling
architecture Behavioral of led_control is
begin
    -- Process for managing LED control
    process(clk)
    begin
        if rising_edge(clk) then
            -- Invert the button signals to control the LEDs
            led_left <= not btn_left; -- LED for left button
            led_right <= not btn_right; -- LED for right button
        end if;
    end process;
end Behavioral;
