# VHDL Race Game: Ghost Driver

This project implements a simple car racing game using VHDL (VHSIC Hardware Description Language) for FPGA (Field-Programmable Gate Array) implementation. The game features a car that can be moved left and right to avoid obstacles, a scrolling background, and a score display.

## Features
- **Car Control**: Move the car left and right using buttons.
- **Obstacle Avoidance**: Avoid oncoming obstacles to score points.
- **Scrolling Background**: The track scrolls vertically to simulate movement.
- **Score Display**: A seven-segment display shows the player's score.
- **Collision Detection**: The game detects collisions between the car and obstacles.
- **VGA Output**: The game is displayed on a VGA monitor.
- **Multiple Obstacle Types**: Obstacles come in three different car colors (blue, black, brown).

## Files

### VHDL Files
- **car_control.vhd**: Handles car movement based on button inputs. The car's position is updated according to the left and right button inputs.
- **car_obstacle.vhd**: Manages obstacle generation, movement, collision detection, and score updates. Obstacle positions are updated, and collisions with the car are detected.
- **debouncer.vhd**: Debounces button inputs to prevent glitches. Ensures that button presses are registered correctly without noise.
- **hvsync_generator.vhd**: Generates horizontal and vertical sync signals for VGA display. Responsible for video signal synchronization.
- **led_control.vhd**: Controls LEDs based on button inputs. The LED state toggles based on clock and reset signals.
- **racegame_top.vhd**: Top-level module connecting all components. It integrates all sub-modules and handles the overall game logic.
- **rendering_logic.vhd**: Renders the game graphics on the VGA display. Manages the pixel data and display output.
- **scrolling_logic.vhd**: Handles the scrolling of the background. Updates the scroll position to simulate movement.
- **seven_segment_display.vhd**: Controls the seven-segment display for the score. Converts the score value to the appropriate display format.
- **pll.vhd**: Phase-locked loop for clock generation.

### Image Files
- **original/**: Contains the original PNG images for the car and track.
- **VHDL/**: Contains VHDL files generated from the PNG images using a Python script. These files define constants for image data used in the game.

### Python Scripts
- **convert_images.py**: Converts PNG images into VHDL constants.
- **run_conversion.py**: Runs the conversion process.
- **setup.py**: Sets up the environment for running the Python scripts.

## How to Play
1. **Synthesis and Implementation**: Synthesize and implement the VHDL code using your preferred FPGA development tools (e.g., Xilinx Vivado, Intel Quartus).
2. **Programming**: Program the generated bitstream onto your FPGA development board.
3. **Connect VGA**: Connect a VGA monitor to the FPGA board.
4. **Start the Game**: The game should start automatically after programming.
5. **Control**: Use the left and right buttons to move the car and avoid obstacles.
6. **Scoring**: Your score increases as you successfully avoid obstacles.
7. **Game Over**: The game ends if you collide with an obstacle.

## Customization
- **Obstacle Speed**: Adjust the `SLOW_DOWN_FACTOR` in `car_obstacle.vhd` to control the speed of obstacles.
- **Scroll Speed**: Modify the `SCROLL_SPEED` constant in `racegame_top.vhd` to change the scrolling speed.
- **Car/Obstacle Graphics**: Replace the car image data in the `_car_graphic.vhd` files to use different car sprites.
- **Track Graphics**: Modify the `STREET_IMAGE` data in `rendering_logic.vhd` to change the track appearance.

## Dependencies
- **Python Packages**: `Pillow`, `numpy` (listed in `requirements.txt`)
- **IEEE Libraries**: `std_logic_1164`, `numeric_std`, `std_logic_unsigned`
- **Custom Libraries**: `red_car_graphic`, `street_graphic`, `blue_car_graphic`, `black_car_graphic`, `brown_car_graphic` (these should be included in your project)

## Python Script Details

### convert_images.py
This script converts PNG images into VHDL constants. The images are processed and the pixel data is extracted and formatted into VHDL syntax to be used in the game.

#### Usage:
1. Ensure you have `Pillow` and `numpy` installed. You can install them using:
    ```bash
    pip install -r requirements.txt
    ```
2. Run the script:
    ```bash
    python convert_images.py
    ```

### run_conversion.py
This script automates the conversion process by calling `convert_images.py` for all necessary images.

#### Usage:
1. Run the script:
    ```bash
    python run_conversion.py
    ```

### setup.py
This script sets up the environment needed to run the image conversion scripts.

#### Usage:
1. Run the script:
    ```bash
    python setup.py install
    ```

## Notes
- This project is intended for educational purposes and can be expanded with additional features.
- Ensure that the PLL module (`pll.vhd`) is correctly configured for your FPGA board if you are using it.
- The Python script in the `racegame/assets` directory is used to convert PNG images into VHDL files for the car and track graphics.
