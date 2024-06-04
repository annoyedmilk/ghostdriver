-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "06/04/2024 21:54:52"
                                                            
-- Vhdl Test Bench template for design  :  racegame_top
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY racegame_top_vhd_tst IS
END racegame_top_vhd_tst;

ARCHITECTURE racegame_top_arch OF racegame_top_vhd_tst IS
    -- Constants
    constant clk_period : time := 20 ns;

    -- Signals
    SIGNAL btn_left : STD_LOGIC := '0';
    SIGNAL btn_right : STD_LOGIC := '0';
    SIGNAL clk_50 : STD_LOGIC := '0';
    SIGNAL hsync : STD_LOGIC;
    SIGNAL led_left : STD_LOGIC;
    SIGNAL led_right : STD_LOGIC;
    SIGNAL leds : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL reset : STD_LOGIC := '0';
    SIGNAL rgb_b : STD_LOGIC_VECTOR(3 DOWNTO 0);
    SIGNAL rgb_g : STD_LOGIC_VECTOR(3 DOWNTO 0);
    SIGNAL rgb_r : STD_LOGIC_VECTOR(3 DOWNTO 0);
    SIGNAL Segment0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
    SIGNAL Segment1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
    SIGNAL Segment2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
    SIGNAL Segment3 : STD_LOGIC_VECTOR(6 DOWNTO 0);
    SIGNAL vsync : STD_LOGIC;

    COMPONENT racegame_top
        PORT (
            btn_left : IN STD_LOGIC;
            btn_right : IN STD_LOGIC;
            clk_50 : IN STD_LOGIC;
            hsync : BUFFER STD_LOGIC;
            led_left : BUFFER STD_LOGIC;
            led_right : BUFFER STD_LOGIC;
            leds : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
            reset : IN STD_LOGIC;
            rgb_b : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
            rgb_g : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
            rgb_r : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
            Segment0 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
            Segment1 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
            Segment2 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
            Segment3 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
            vsync : BUFFER STD_LOGIC
        );
    END COMPONENT;

BEGIN
    i1 : racegame_top
        PORT MAP (
            btn_left => btn_left,
            btn_right => btn_right,
            clk_50 => clk_50,
            hsync => hsync,
            led_left => led_left,
            led_right => led_right,
            leds => leds,
            reset => reset,
            rgb_b => rgb_b,
            rgb_g => rgb_g,
            rgb_r => rgb_r,
            Segment0 => Segment0,
            Segment1 => Segment1,
            Segment2 => Segment2,
            Segment3 => Segment3,
            vsync => vsync
        );

    -- Clock generation process
    clk_process : PROCESS
    BEGIN
        while true loop
            clk_50 <= '0';
            wait for clk_period / 2;
            clk_50 <= '1';
            wait for clk_period / 2;
        end loop;
    END PROCESS;

    -- Stimulus process
    stim_proc: PROCESS
    BEGIN
        -- Initialize inputs
        reset <= '1';
        wait for 100 ns;
        
        -- Release reset
        reset <= '0';
        wait for 100 ns;

        -- Simulate button left press for 50 ms
        btn_left <= '1';
        wait for 50 ms;
        btn_left <= '0';
        wait for 200 ms;

        -- Simulate button right press for 50 ms
        btn_right <= '1';
        wait for 50 ms;
        btn_right <= '0';
        wait for 200 ms;

        -- Additional button presses with assertions
        assert (false) report "Simulating button left press..." severity note;
        btn_left <= '1';
        wait for 50 ms;
        btn_left <= '0';
        wait for 200 ms;

        assert (false) report "Simulating button right press..." severity note;
        btn_right <= '1';
        wait for 50 ms;
        btn_right <= '0';
        wait for 200 ms;

        -- Wait for some more time to observe outputs
        wait for 1 ms;

        -- End simulation
        wait;
    END PROCESS;

END racegame_top_arch;
