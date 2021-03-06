/*
 * Copyright 2012 Free Software Foundation, Inc.
 *
 * This file is part of GNU Radio
 *
 * GNU Radio is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3, or (at your option)
 * any later version.
 *
 * GNU Radio is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with GNU Radio; see the file COPYING.  If not, write to
 * the Free Software Foundation, Inc., 51 Franklin Street,
 * Boston, MA 02110-1301, USA.
 */

/*
 * This class gathers together all the test cases for the gr-filter
 * directory into a single test suite.  As you create new test cases,
 * add them here.
 */

#include "qa_transmit_nodes.h"
#include "qa_howto_bfweight2_cc.h"
#include "qa_howto_ekf2_ff.h"
#include "qa_howto_lo_estimation_cf.h"
#include "qa_howto_randphpert2_ff.h"
#include "qa_howto_tx_packet_source.h"

CppUnit::TestSuite *
qa_transmit_nodes::suite()
{
  CppUnit::TestSuite *s = new CppUnit::TestSuite("transmit_nodes");
  s->addTest(gr::transmit_nodes::qa_howto_bfweight2_cc::suite());
  s->addTest(gr::transmit_nodes::qa_howto_ekf2_ff::suite());
  s->addTest(gr::transmit_nodes::qa_howto_lo_estimation_cf::suite());
  s->addTest(gr::transmit_nodes::qa_howto_randphpert2_ff::suite());
  s->addTest(gr::transmit_nodes::qa_howto_tx_packet_source::suite());

  return s;
}
