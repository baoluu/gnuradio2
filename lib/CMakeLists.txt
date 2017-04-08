# Copyright 2011,2012 Free Software Foundation, Inc.
#
# This file is part of GNU Radio
#
# GNU Radio is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3, or (at your option)
# any later version.
#
# GNU Radio is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with GNU Radio; see the file COPYING.  If not, write to
# the Free Software Foundation, Inc., 51 Franklin Street,
# Boston, MA 02110-1301, USA.

########################################################################
# Setup library
########################################################################
include(GrPlatform) #define LIB_SUFFIX

include_directories(${Boost_INCLUDE_DIR})
link_directories(${Boost_LIBRARY_DIRS})

list(APPEND transmit_nodes_sources
    howto_bfweight2_cc_impl.cc
    howto_ekf2_ff_impl.cc
    howto_lo_estimation_cf_impl.cc
    howto_randphpert2_ff_impl.cc
    howto_tx_packet_source_impl.cc
)

set(transmit_nodes_sources "${transmit_nodes_sources}" PARENT_SCOPE)
if(NOT transmit_nodes_sources)
	MESSAGE(STATUS "No C++ sources... skipping lib/")
	return()
endif(NOT transmit_nodes_sources)

add_library(gnuradio-transmit_nodes SHARED ${transmit_nodes_sources})
target_link_libraries(gnuradio-transmit_nodes ${Boost_LIBRARIES} ${GNURADIO_ALL_LIBRARIES})
set_target_properties(gnuradio-transmit_nodes PROPERTIES DEFINE_SYMBOL "gnuradio_transmit_nodes_EXPORTS")

if(APPLE)
    set_target_properties(gnuradio-transmit_nodes PROPERTIES
        INSTALL_NAME_DIR "${CMAKE_INSTALL_PREFIX}/lib"
    )
endif(APPLE)

########################################################################
# Install built library files
########################################################################
install(TARGETS gnuradio-transmit_nodes
    LIBRARY DESTINATION lib${LIB_SUFFIX} # .so/.dylib file
    ARCHIVE DESTINATION lib${LIB_SUFFIX} # .lib file
    RUNTIME DESTINATION bin              # .dll file
)

########################################################################
# Build and register unit test
########################################################################
include(GrTest)

include_directories(${CPPUNIT_INCLUDE_DIRS})

list(APPEND test_transmit_nodes_sources
    ${CMAKE_CURRENT_SOURCE_DIR}/test_transmit_nodes.cc
    ${CMAKE_CURRENT_SOURCE_DIR}/qa_transmit_nodes.cc
    ${CMAKE_CURRENT_SOURCE_DIR}/qa_howto_tx_packet_source.cc
    ${CMAKE_CURRENT_SOURCE_DIR}/qa_howto_randphpert2_ff.cc
    ${CMAKE_CURRENT_SOURCE_DIR}/qa_howto_lo_estimation_cf.cc
    ${CMAKE_CURRENT_SOURCE_DIR}/qa_howto_ekf2_ff.cc
    ${CMAKE_CURRENT_SOURCE_DIR}/qa_howto_bfweight2_cc.cc
)

add_executable(test-transmit_nodes ${test_transmit_nodes_sources})

target_link_libraries(
  test-transmit_nodes
  ${GNURADIO_RUNTIME_LIBRARIES}
  ${Boost_LIBRARIES}
  ${CPPUNIT_LIBRARIES}
  gnuradio-transmit_nodes
)

GR_ADD_TEST(test_transmit_nodes test-transmit_nodes)
