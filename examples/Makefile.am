# bin_PROGRAMS =  simple ant_simple
check_PROGRAMS = simple ant_simple multihost_simple

simple_SOURCES = simple.cc
simple_LDADD   = ../libcassandra/libcassandra.la -lthrift


ant_simple_SOURCES = ant_simple.cc

# lib_LTLIBRARIES = libzlib.la
# ant_simple_LDADD   = ../libcassandra/libcassandra.la 
ant_simple_LDADD   = ../libcassandra/libcassandra.la -lthrift


multihost_simple_SOURCES = multihost_simple.cc
multihost_simple_LDADD   = ../libcassandra/libcassandra.la -lthrift
