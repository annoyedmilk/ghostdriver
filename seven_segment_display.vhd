library ieee; -- Import IEEE standard library
use ieee.std_logic_1164.all; -- Import standard logic package for basic logic operations
use ieee.numeric_std.all; -- Import numeric standard package for arithmetic operations

-- Entity declaration for seven-segment display controller
entity seven_segment_display is
    port (
        clk          : in  std_logic;                  -- Clock input
        reset        : in  std_logic;                  -- Reset input
        score        : in  unsigned(15 downto 0);      -- 16-bit score input
        Segment0     : out std_logic_vector(6 downto 0); -- Seven-segment display segments for digit 3 (thousands)
        Segment1     : out std_logic_vector(6 downto 0); -- Seven-segment display segments for digit 2 (hundreds)
        Segment2     : out std_logic_vector(6 downto 0); -- Seven-segment display segments for digit 1 (tens)
        Segment3     : out std_logic_vector(6 downto 0); -- Seven-segment display segments for digit 0 (units)
        leds         : out std_logic_vector(7 downto 0)  -- LED indicators
    );
end seven_segment_display;

-- Architecture definition of "seven_segment_display" using behavioral modeling
architecture Behavioral of seven_segment_display is
    -- Internal signals for each digit
    signal digit0, digit1, digit2, digit3 : std_logic_vector(3 downto 0);
    signal bcd : std_logic_vector(15 downto 0); -- BCD representation of the score

    -- Function to decode a 4-bit binary value to a seven-segment display pattern
    function decode_digit(digit: std_logic_vector(3 downto 0)) return std_logic_vector is
    begin
        case digit is
            when "0000" => return "1000000"; -- 0
            when "0001" => return "1111001"; -- 1
            when "0010" => return "0100100"; -- 2
            when "0011" => return "0110000"; -- 3
            when "0100" => return "0011001"; -- 4
            when "0101" => return "0010010"; -- 5
            when "0110" => return "0000010"; -- 6
            when "0111" => return "1111000"; -- 7
            when "1000" => return "0000000"; -- 8
            when "1001" => return "0010000"; -- 9
            when others => return "1111111"; -- Blank (default case)
        end case;
    end function;

begin
    -- Process for updating the seven-segment displays and LEDs
    process(clk, reset)
    begin

        if rising_edge(clk) then
            -- Convert score to BCD format
            bcd <= std_logic_vector(to_unsigned(to_integer(score mod 10), 4)) &
                   std_logic_vector(to_unsigned(to_integer((score / 10) mod 10), 4)) &
                   std_logic_vector(to_unsigned(to_integer((score / 100) mod 10), 4)) &
                   std_logic_vector(to_unsigned(to_integer(score / 1000), 4));

            -- Extract each digit from the BCD representation
            digit0 <= bcd(3 downto 0);   -- Units place
            digit1 <= bcd(7 downto 4);   -- Tens place
            digit2 <= bcd(11 downto 8);  -- Hundreds place
            digit3 <= bcd(15 downto 12); -- Thousands place

            -- Decode each digit to the corresponding seven-segment display
            Segment3 <= decode_digit(digit0); -- Units place
            Segment2 <= decode_digit(digit1); -- Tens place
            Segment1 <= decode_digit(digit2); -- Hundreds place
            Segment0 <= decode_digit(digit3); -- Thousands place

            -- Set LEDs to 1 to ensure they are off by default
            leds <= "00000000"; -- Turn off LEDs

            -- Reset all digits and LEDs
            if reset = '0' then
                digit0 <= "0000"; -- Reset units digit
                digit1 <= "0000"; -- Reset tens digit
                digit2 <= "0000"; -- Reset hundreds digit
                digit3 <= "0000"; -- Reset thousands digit
                leds <= "00000000"; -- Reset LEDs
            end if;
        end if;
    end process;

end Behavioral;
