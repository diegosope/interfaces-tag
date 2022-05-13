ifconfig eth0 | grep inet | awk '{print $2}' | head -n 1



