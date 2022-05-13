IFACE=$(/usr/sbin/ifconfig | grep tap0 | awk '{print $1}' | tr -d ':')
if [ "$IFACE" = "tap0" ]; then
	echo "$(/usr/sbin/ifconfig tap0 | grep "inet " | awk '{print $2}' )"

else
	echo "🙉"
fi
