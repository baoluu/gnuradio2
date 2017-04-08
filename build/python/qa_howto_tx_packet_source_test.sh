#!/bin/sh
export VOLK_GENERIC=1
export GR_DONT_LOAD_PREFS=1
export srcdir=/home/bao/Documents/gnu-radio/gr-transmit_nodes/python
export GR_CONF_CONTROLPORT_ON=False
export PATH=/home/bao/Documents/gnu-radio/gr-transmit_nodes/build/python:$PATH
export LD_LIBRARY_PATH=/home/bao/Documents/gnu-radio/gr-transmit_nodes/build/lib:$LD_LIBRARY_PATH
export PYTHONPATH=/home/bao/Documents/gnu-radio/gr-transmit_nodes/build/swig:$PYTHONPATH
/usr/bin/python2 /home/bao/Documents/gnu-radio/gr-transmit_nodes/python/qa_howto_tx_packet_source.py 
