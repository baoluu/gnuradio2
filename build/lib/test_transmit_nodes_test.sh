#!/bin/sh
export VOLK_GENERIC=1
export GR_DONT_LOAD_PREFS=1
export srcdir=/home/bao/Documents/gnu-radio/gr-transmit_nodes/lib
export GR_CONF_CONTROLPORT_ON=False
export PATH=/home/bao/Documents/gnu-radio/gr-transmit_nodes/build/lib:$PATH
export LD_LIBRARY_PATH=/home/bao/Documents/gnu-radio/gr-transmit_nodes/build/lib:$LD_LIBRARY_PATH
export PYTHONPATH=$PYTHONPATH
test-transmit_nodes 
