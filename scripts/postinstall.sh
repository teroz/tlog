#!/bin/sh

useradd --system tlog
chown tlog:tlog /usr/local/bin/tlog-rec-session
chown tlog:tlog /run/tlog
chmod g+s /usr/local/bin/tlog-rec-session
chmod u+s /usr/local/bin/tlog-rec-session
