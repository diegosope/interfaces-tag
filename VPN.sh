IFACE=$(/usr/sbin/ifconfig | grep ppp0 | awk '{print $1}' | tr -d ':')
if [ "$IFACE" = "ppp0" ]; then
	echo "$(/usr/sbin/ifconfig ppp0 | grep "inet " | awk '{print $2}' )"

else
	echo "🙉"
fi
