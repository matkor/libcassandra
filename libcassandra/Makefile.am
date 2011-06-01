# vim:ft=automake

EXTRA_DIST = \
	     configure.h.in 


# where to install the headers on the system
libcassandra_ladir = $(includedir)/libcassandra

lib_LTLIBRARIES = libcassandra.la
libcassandra_la_HEADERS = \
			 cassandra.h \
			 cassandra_factory.h \
			 cassandra_host.h \
			 cassandra_util.h \
			 column_definition.h \
			 column_family_definition.h \
			 exception.h \
			 indexed_slices_query.h \
			 keyspace.h \
			 keyspace_definition.h \
			 keyspace_factory.h \
			 multihost_cassandra.h \
			 util_functions.h \
			 util/ping.h \
			 util/timetools.h


libcassandra_la_CXXFLAGS= ${AM_CXXFLAGS}
libcassandra_la_SOURCES = \
				       cassandra.cc \
				       cassandra_factory.cc \
				       cassandra_host.cc \
				       column_definition.cc \
				       column_family_definition.cc \
				       indexed_slices_query.cc \
				       keyspace.cc \
				       keyspace_definition.cc \
				       keyspace_factory.cc \
			 	       multihost_cassandra.cc \
				       util_functions.cc \
				       util/ping.cc \
				       util/timetools.cc

libcassandra_la_DEPENDENCIES= ../libgenthrift/libgenthrift.la
libcassandra_la_LIBADD= $(LIBM) ../libgenthrift/libgenthrift.la
# libcassandra_la_LDFLAGS= ${AM_LDFLAGS} -version-info $(CASSANDRA_LIBRARY_VERSION)
libcassandra_la_LDFLAGS= ${AM_LDFLAGS} -version-info 3:0:0


