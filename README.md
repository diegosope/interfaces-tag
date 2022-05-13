
# Interfaces Tag
Funny interfaces tag for panel scripts (Generic Monitor)

[![made-with-bash](https://img.shields.io/badge/Made%20with-Bash-1f425f.svg)](https://www.gnu.org/software/bash/)

## Features

- When the interface is running, the IP address will appear.
- When the interface is not running, the scared monkey emoji will appear 🙉.

## Images

##### Interface Running
![Interface running.](/images/example1.png "Interface running.")

##### Interface Not Running
![Interface not running.](/images/example2.png "Interface not running.")

## Code:

## eth0 Interface
```sh
ifconfig eth0 | grep inet | awk '{print $2}' | head -n 1
```

## tun0 Interface
```sh
IFACE=$(/usr/sbin/ifconfig | grep tun0 | awk '{print $1}' | tr -d ':')
if [ "$IFACE" = "tun0" ]; then
	echo "$(/usr/sbin/ifconfig tun0 | grep "inet " | awk '{print $2}' )"

else
	echo "🙉"
fi
```

## ppp0 Interface
```sh
IFACE=$(/usr/sbin/ifconfig | grep ppp0 | awk '{print $1}' | tr -d ':')
if [ "$IFACE" = "ppp0" ]; then
	echo "$(/usr/sbin/ifconfig ppp0 | grep "inet " | awk '{print $2}' )"

else
	echo "🙉"
fi
```

## tap0 Interface
```sh
IFACE=$(/usr/sbin/ifconfig | grep tap0 | awk '{print $1}' | tr -d ':')
if [ "$IFACE" = "tap0" ]; then
	echo "$(/usr/sbin/ifconfig tap0 | grep "inet " | awk '{print $2}' )"

else
	echo "🙉"
fi
```

