#!/bin/bash

# Services used by phpMyAdmin
APACHE="httpd"
DB="mariadb"

case "$1" in
    start)
        echo "Starting Apache and MariaDB..."
        sudo systemctl start $APACHE
        sudo systemctl start $DB
        echo "Services started."
        ;;
    
    stop)
        echo "Stopping Apache and MariaDB..."
        sudo systemctl stop $APACHE
        sudo systemctl stop $DB
        echo "Services stopped."
        ;;
    
    restart)
        echo "Restarting Apache and MariaDB..."
        sudo systemctl restart $APACHE
        sudo systemctl restart $DB
        echo "Services restarted."
        ;;
    
    status)
        echo "Apache status:"
        systemctl status $APACHE --no-pager
        echo
        echo "MariaDB status:"
        systemctl status $DB --no-pager
        ;;
    
    *)
        echo "Usage: $0 {start|stop|restart|status}"
        exit 1
        ;;
esac

exit 0
