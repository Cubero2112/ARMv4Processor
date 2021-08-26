# imgtomif
Image to .MIF converter for FPGA 

# Requirements
This script requires the PIL library for image processing.
Install using `pip install Pillow`

# Usage
1. Place all required images in the same folder as `convert.py`
2. Run with `python convert.py <file1> <file2> ...`

# Notes
Currently the script outputs 3-bit words, so color channels will be approximated to 1 bit.
