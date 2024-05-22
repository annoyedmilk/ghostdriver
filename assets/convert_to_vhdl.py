import os
from PIL import Image
import numpy as np

# Function to apply 4-bit RGB
def apply_4bit_rgb(image):
    image = image.convert('RGB')
    data = np.array(image)
    
    # Scale down the RGB values to 4 bits and then back to 8 bits
    data = (data // 16) * 16 + 8  # ((value // 16) * 16) centers the values in 4-bit range
    
    # Create a new image from the modified data
    new_image = Image.fromarray(data.astype(np.uint8))
    return new_image

# Function to convert image to VHDL format
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
        f.write("library ieee;\n")
        f.write("use ieee.std_logic_1164.all;\n\n")
        f.write(f"package {constant_name.lower()}_graphic is\n")
        f.write(f"    constant {constant_name} : array (0 to {rows-1}, 0 to {cols-1}) of std_logic_vector(11 downto 0) := (\n")
        for row in vhdl_data:
            f.write(f"        ({row}),\n")
        f.write("    );\n")
        f.write(f"end package;\n")

# Directories for input and output
input_dir = 'original'  # Adjusted for the environment
output_image_dir = '4-bit'
output_vhdl_dir = 'VHDL'

# Ensure output directories exist
os.makedirs(output_image_dir, exist_ok=True)
os.makedirs(output_vhdl_dir, exist_ok=True)

# List of image files to convert with their output VHDL filenames and constant names
image_files = [
    ('black_car.png', 'black_car.vhd', 'BLACK_CAR_IMAGE'),
    ('brown_car.png', 'brown_car.vhd', 'BROWN_CAR_IMAGE'),
    ('blue_car.png', 'blue_car.vhd', 'BLUE_CAR_IMAGE'),
    ('red_car.png', 'red_car.vhd', 'RED_CAR_IMAGE'),
    ('street.png', 'street.vhd', 'STREET_IMAGE')
]

# Process each image
for image_file, vhdl_file, constant_name in image_files:
    input_path = os.path.join(input_dir, image_file)
    image_output_path = os.path.join(output_image_dir, image_file)
    vhdl_output_path = os.path.join(output_vhdl_dir, vhdl_file)
    
    if os.path.isfile(input_path):
        # Apply 4-bit RGB reduction
        image = Image.open(input_path)
        converted_image = apply_4bit_rgb(image)
        converted_image.save(image_output_path)
        print(f"Converted {input_path} to {image_output_path}")
        
        # Convert to VHDL
        convert_image_to_vhdl(image_output_path, vhdl_output_path, constant_name)
        print(f"Converted {image_output_path} to {vhdl_output_path}")
    else:
        print(f"File {input_path} does not exist. Skipping.")

print("Image processing and conversion to VHDL complete.")
