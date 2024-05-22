import os
from PIL import Image
import numpy as np

def apply_fixed_palette(image, palette):
    image = image.convert('RGB')
    data = np.array(image)
    
    # Create a new image with the same size and fixed palette
    new_image = Image.new('P', image.size)
    new_image.putpalette(palette)
    
    # Quantize the original image to use the fixed palette
    image = image.quantize(palette=new_image)
    return image.convert('RGB')

# Define a fixed palette (8 colors, 24 values in RGB format)
fixed_palette = [
    0, 0, 0,        # Black
    255, 255, 255,  # White
    255, 0, 0,      # Red
    0, 255, 0,      # Green
    0, 0, 255,      # Blue
    255, 255, 0,    # Yellow
    0, 255, 255,    # Cyan
    255, 0, 255     # Magenta
] * 32  # Repeat to fill the palette (256 colors)

# Directories for input and output
input_dir = 'original'
output_dir = '4-bit'

# Ensure output directory exists
os.makedirs(output_dir, exist_ok=True)

# List of image files to convert
image_files = [
    'black_car.png',
    'brown_car.png',
    'blue_car.png',
    'red_car.png',
    'cars.png',
    'Street.png',
    'Overview.png'
]

# Convert each image and save the result
for image_file in image_files:
    input_path = os.path.join(input_dir, image_file)
    output_path = os.path.join(output_dir, image_file)
    
    image = Image.open(input_path)
    converted_image = apply_fixed_palette(image, fixed_palette)
    converted_image.save(output_path)
    print(f"Converted {input_path} to {output_path}")

print("Conversion complete.")
