import os
from PIL import Image
import numpy as np

def convert_image_to_vhdl(image_path, output_path, constant_name):
    image = Image.open(image_path)
    data = np.array(image)
    
    rows, cols, _ = data.shape
    vhdl_data = []

    for row in data:
        vhdl_row = []
        for pixel in row:
            r, g, b = pixel // 16
            vhdl_pixel = (r << 8) | (g << 4) | b
            vhdl_row.append(f"X\"{vhdl_pixel:03X}\"")
        vhdl_data.append(", ".join(vhdl_row))
    
    with open(output_path, 'w') as f:
        f.write(f"constant {constant_name} : array (0 to {rows-1}, 0 to {cols-1}) of std_logic_vector(11 downto 0) := (\n")
        for row in vhdl_data:
            f.write(f"    ({row}),\n")
        f.write(");\n")

# Directories for input and output
input_dir = '4-bit'
output_dir = 'VHDL'

# Ensure output directory exists
os.makedirs(output_dir, exist_ok=True)

# List of image files to convert with their output VHDL filenames and constant names
image_files = [
    ('black_car.png', 'black_car_vhdl.vhd', 'BLACK_CAR_IMAGE'),
    ('brown_car.png', 'brown_car_vhdl.vhd', 'BROWN_CAR_IMAGE'),
    ('blue_car.png', 'blue_car_vhdl.vhd', 'BLUE_CAR_IMAGE'),
    ('red_car.png', 'red_car_vhdl.vhd', 'RED_CAR_IMAGE'),
    ('Street.png', 'street_vhdl.vhd', 'STREET_IMAGE')
]

# Convert each image and save the VHDL representation
for image_file, vhdl_file, constant_name in image_files:
    input_path = os.path.join(input_dir, image_file)
    output_path = os.path.join(output_dir, vhdl_file)
    
    convert_image_to_vhdl(input_path, output_path, constant_name)
    print(f"Converted {input_path} to {output_path}")

print("Conversion to VHDL complete.")
