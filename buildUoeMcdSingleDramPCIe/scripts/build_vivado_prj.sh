#!/bin/sh
################################################################################
# Author: Lisa Liu
# Date:	2016/11/07
#
# Usage:
#			./build_system.sh
# Vivado_hls version:
#			2015.1
# Vivado version:
#			2016.2
################################################################################

HLS_2015_1="/home/pratik0509/xillinx/SDK/2018.2/settings64.sh"
VIVADO_USED="/home/pratik0509/xillinx/SDK/2018.2/settings64.sh"
VIVADO_2015_3="/home/pratik0509/xillinx/SDK/2018.2/settings64.sh"
VIVADO_2015_4="/home/pratik0509/xillinx/SDK/2018.2/settings64.sh"
VIVADO_2016_1="/home/pratik0509/xillinx/SDK/2018.2/settings64.sh"
VIVADO_2016_2="/home/pratik0509/xillinx/SDK/2018.2/settings64.sh"
VIVADO_2016_3="/home/pratik0509/xillinx/SDK/2018.2/settings64.sh"

./build_hls_2015_1.sh "$HLS_2015_1"
./build_tcp_ip_2015_1.sh "$HLS_2015_1"
source "$VIVADO_2015_3"
vivado -mode tcl -source create_prj_2015_3.tcl

source "$VIVADO_2015_4"
vivado -mode tcl -source create_prj_2015_4.tcl

source "$VIVADO_2016_1"
vivado -mode tcl -source create_prj_2016_1.tcl

source "$VIVADO_2016_2"
vivado -mode tcl -source create_prj_2016_2.tcl

source "$VIVADO_2016_3"
vivado -mode tcl -source create_prj_2016_3.tcl

exit 0
