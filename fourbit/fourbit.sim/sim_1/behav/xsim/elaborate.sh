#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2019.1 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Tue Nov 26 15:20:26 +03 2024
# SW Build 2552052 on Fri May 24 14:47:09 MDT 2019
#
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
#
# usage: elaborate.sh
#
# ****************************************************************************
set -Eeuo pipefail
echo "xelab -wto cb4d9dd71bae43b69d73c5f7492bac83 --incr --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot tb_bit8_adder_behav xil_defaultlib.tb_bit8_adder xil_defaultlib.glbl -log elaborate.log"
xelab -wto cb4d9dd71bae43b69d73c5f7492bac83 --incr --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot tb_bit8_adder_behav xil_defaultlib.tb_bit8_adder xil_defaultlib.glbl -log elaborate.log

