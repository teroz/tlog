#!/bin/sh
USER=tlog
if ! getent passwd $USER > /dev/null 2>&1; then
   useradd --system $USER
fi
chown $USER:$USER /usr/bin/tlog-rec-session /run/tlog
chmod g+s /usr/bin/tlog-rec-session
chmod u+s /usr/bin/tlog-rec-session
cd /usr/lib/
ln -s libtlog.so.0.0.0 libtlog.so.0
ln -s libtlog.so.0.0.0 libtlog.so
ln -s libtlog.a libtlog.la
mandb /usr/share/man/man5 > /dev/null
mandb /usr/share/man/man8 > /dev/null
