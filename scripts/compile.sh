#!/bin/bash

# List all your Verilog source files here
files="../verilog/core/*.v"

# Compile the Verilog source files
iverilog -o ../build/output.vvp $files
