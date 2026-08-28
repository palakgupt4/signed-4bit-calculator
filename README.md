It's already visible in your screenshot — bottom-right of the Vivado window.

You don't actually need it, though. Let's use the simpler method.

Do this:
In Vivado, look at Sources.
Under Design Sources, you have:
signed_4bit_calculator.v
Right-click signed_4bit_calculator.v.
Look for Open File Location.

If Open File Location isn't there:

Double-click signed_4bit_calculator.v to open the code.
Then use File → Save As.
The Save As window will show you the exact folder where the .v file is located.
Cancel after checking the location.

For your current project, we already know the project folder is:

C:\Users\palak\signed_4bit_calculator\

So don't worry about Source File Properties. We just need to locate the .v files and upload copies to GitHub.

C:/Users/palak/signed_4bit_calculator/signed_4bit_calculator.srcs/sources_1/new

Perfect. That's the exact folder containing your RTL Verilog file.

C:\Users\palak\signed_4bit_calculator\
└── signed_4bit_calculator.srcs
    └── sources_1
        └── new
            └── signed_4bit_calculator.v
Do this now
Open File Explorer.
Copy this path into the address bar:
C:\Users\palak\signed_4bit_calculator\signed_4bit_calculator.srcs\sources_1\new
Press Enter.
You should see:
signed_4bit_calculator.v
Copy that .v file to somewhere easy, such as your Desktop.

Then you'll have the file ready to upload to GitHub.

Next: Testbench

Now go back to Vivado and expand:

Simulation Sources

Tell me the path shown for tb_signed_4bit_calculator.v, just like you gave me for the RTL file.

Then we'll get both files into GitHub and move on.

testbecnh and veirlog uploaded

Perfect. RTL + testbench are uploaded.

Now finish the repository in this order:

1. Upload README

Use the README.md from the package I created:

Download README

GitHub → Add file → Upload files → select README.md.

2. Upload waveform

Create a folder:

waveform

Upload your Vivado screenshot as:

signed_calculator_waveform.png
3. Upload schematic

Create another folder:

schematic

Upload your schematic screenshot as:

signed_calculator_rtl_schematic.png
4. Final structure

You should have:

signed-4bit-calculator
│
├── README.md
├── signed_4bit_calculator.v
├── tb_signed_4bit_calculator.v
│
├── waveform
│   └── signed_calculator_waveform.png
│
└── schematic
    └── signed_calculator_rtl_schematic.png

Then commit the changes.

Once that's done, send me a screenshot of the repository page and I'll check it before we move to the next project.

README.md
Document

Library
/
README.md
Signed 4-bit Calculator
Overview

A combinational signed 4-bit calculator designed and verified using Verilog HDL. The calculator performs addition, subtraction, multiplication, and division with support for negative operands.

Operations
OP	Operation
00	Addition
01	Subtraction
10	Multiplication
11	Division

The design also includes a divide-by-zero detection output.

Design Specifications
Input A: Signed 4-bit
Input B: Signed 4-bit
Operation Select: 2-bit
Result: Signed 8-bit
Division-by-zero flag: 1-bit
Design type: Combinational
Tools Used
Verilog HDL
Xilinx Vivado
Vivado Behavioral Simulation
Xilinx ISE schematic design
Verification

A Verilog testbench was developed to verify:

Addition
Subtraction
Negative arithmetic
Multiplication
Division
Division by zero

The design was functionally verified through Vivado behavioral simulation.

RTL Schematic

An RTL/hardware schematic was also developed for the calculator to visualize the datapath and arithmetic blocks, including the adder, subtractor, multiplier, divider, buffers, and multiplexer.

Schematic image can be placed in schematic/ for documentation and LinkedIn presentation.

Simulation Result

The Vivado behavioral simulation waveform demonstrates the calculator response for multiple signed arithmetic operations and divide-by-zero handling.

Waveform image can be placed in waveform/.

Files
signed_4bit_calculator.v — RTL design
tb_signed_4bit_calculator.v — Testbench
waveform/ — Vivado simulation waveform
schematic/ — RTL/hardware schematic
Author

Palak Gupta
