#!/bin/bash


if [ ! -d "$SNAP_COMMON/conf" ]; then
	mkdir -p "$SNAP_COMMON/conf"
	# copy the default config file 
        cp "$SNAP/bin/conf/influxdb.conf" "$SNAP_COMMON/conf/influxdb.conf"
fi


if [ ! -f "$SNAP_COMMON/conf/influxdb.conf" ]; then
	# copy the default config file 
        cp "$SNAP/bin/conf/influxdb.conf" "$SNAP_COMMON/conf/influxdb.conf"
fi




exec $SNAP/usr/bin/influxd 








