#!/bin/sh

if [ -f "/opt/firefox47/firefox" ] ; then
	PATH="/opt/firefox47:$PATH"
	alias firefox=/opt/firefox47/firefox
	echo 'Firefox 47 set as Default'
fi
