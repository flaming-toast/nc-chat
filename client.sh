if [[ $# -ne 1 ]]; then 
	echo "Incorrect number of arguments"
	echo "Usage: ./client.sh <port>"
	exit 1
else 
	port=$1
	echo -n "Enter your name: " ; read name
	echo "Your idenfifier will be: $name"
	tty=$(tty)
	echo "server running on $port..."
	while true; do
		#echo -n "$name: " > $tty ; read message
		read message
		echo -e "$name: $message" 
	done |  ncat localhost $port

fi
