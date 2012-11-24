if [[ $# -ne 2 ]]; then 
	echo "Incorrect number of arguments"
	echo "Usage: ./client.sh <server-ip> <port>"
	exit 1
else 
	server=$1
	port=$2
	echo -n "Enter your name: " ; read name
	echo "Your idenfifier will be: $name"
	tty=$(tty)
	echo "server running on $port..."
	while true; do
		#echo -n "$name: " > $tty ; read message
		read message
		echo -e "$name: $message" 
	done |  ncat $server $port # can use nc, netcat as well

fi
