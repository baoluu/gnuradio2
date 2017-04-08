/* -*- c++ -*- */

#define TRANSMIT_NODES_API

%include "gnuradio.i"			// the common stuff

//load generated python docstrings
%include "transmit_nodes_swig_doc.i"

%{
#include "transmit_nodes/howto_bfweight2_cc.h"
#include "transmit_nodes/howto_ekf2_ff.h"
#include "transmit_nodes/howto_lo_estimation_cf.h"
#include "transmit_nodes/howto_randphpert2_ff.h"
#include "transmit_nodes/howto_tx_packet_source.h"
%}


%include "transmit_nodes/howto_bfweight2_cc.h"
GR_SWIG_BLOCK_MAGIC2(transmit_nodes, howto_bfweight2_cc);
%include "transmit_nodes/howto_ekf2_ff.h"
GR_SWIG_BLOCK_MAGIC2(transmit_nodes, howto_ekf2_ff);
%include "transmit_nodes/howto_lo_estimation_cf.h"
GR_SWIG_BLOCK_MAGIC2(transmit_nodes, howto_lo_estimation_cf);
%include "transmit_nodes/howto_randphpert2_ff.h"
GR_SWIG_BLOCK_MAGIC2(transmit_nodes, howto_randphpert2_ff);
%include "transmit_nodes/howto_tx_packet_source.h"
GR_SWIG_BLOCK_MAGIC2(transmit_nodes, howto_tx_packet_source);
