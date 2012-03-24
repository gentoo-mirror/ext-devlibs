#!/sbin/runscript

start() {
	ebegin "Starting parallelport server"
	start-stop-daemon --start --exec /usr/bin/parserver \
	    --pidfile /var/run/parserver.pid \
	    -- /dev/parport0
	eend $?
}

stop() {
	ebegin "Stopping parallelport server"
	start-stop-daemon --stop --exec /usr/bin/parserver \
	    --pidfile /var/run/parserver.pid
	eend $?
}
