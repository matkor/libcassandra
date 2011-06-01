#!/bin/sh

libtoolize --copy --force --install
aclocal -I m4
autoconf
autoheader
automake -a -c -f --foreign


./configure LDFLAGS="-Wl,--as-needed -Wl,--no-copy-dt-needed-entries -Wl,-z,relro -Wl,-z,combreloc"  \
  CFLAGS="-O2 -fno-strict-aliasing -fwrapv  -gdwarf-3 -g2"  \
  CXXFLAGS="-O2 -fno-strict-aliasing -fwrapv  -gdwarf-3 -g2  -Wno-variadic-macros -Wno-deprecated"   \
  CPPFLAGS="-D_FORTIFY_SOURCE=2"   \
  --prefix=/usr --exec-prefix=/usr --bindir=/usr/bin --sbindir=/usr/sbin --sysconfdir=/etc  \
  --datadir=/usr/share --includedir=/usr/include  --libdir=/usr/lib64  --libexecdir=/usr/lib64 --localstatedir=/var --sharedstatedir=/var/lib \
  --mandir=/usr/share/man --infodir=/usr/share/info --x-libraries=/usr/lib64 

# rm -r ~/tmp/libcassandra_install_test
# mkdir ~/tmp/libcassandra_install_test



