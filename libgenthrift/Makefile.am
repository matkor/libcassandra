# vim:ft=automake
# Copyright (C) 2010 Padraig O'Sullivan
# All rights reserved.
#
# Use and distribution licensed under the BSD license.  See
# the COPYING file in the parent directory for full text.

# Modified according to
# http://www.bioinf.uni-freiburg.de/~mmann/HowTo/automake.html#automakLib

# additional include paths necessary to compile the C++ library
# AM_CXXFLAGS = -I$(top_srcdir)/libgenthrift @AM_CXXFLAGS@


lib_LTLIBRARIES = libgenthrift.la

EXTRA_DIST = \
	     configure.h.in


# where to install the headers on the system
libgenthrift_ladir = $(includedir)/libgenthrift

# the sources to add to the library and to add to the source distribution
libgenthrift_la_HEADERS = \
			 cassandra_constants.h \
			 Cassandra.h \
			 cassandra_types.h 

libgenthrift_la_SOURCES= \
				  $(libgenthrift_la_HEADERS )  \
				  cassandra_constants.cpp \
				  Cassandra.cpp \
				  cassandra_types.cpp 

libgenthrift_la_CXXFLAGS= \
				 ${AM_CXXFLAGS} 

libgenthrift_la_LIBADD= \
				  $(LTLIBTHRIFT)


# libgenthrift_la_LDFLAGS= ${AM_LDFLAGS} -version-info ${CASSANDRA_LIBRARY_VERSION}
libgenthrift_la_LDFLAGS= ${AM_LDFLAGS} -version-info 3:0:0
