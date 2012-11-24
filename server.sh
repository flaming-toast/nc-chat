if [[ $# -ne 1 ]] ; then 
	echo "Incorrect number of arguments."
	echo "Usage: ./server.sh <port>"
	exit 1
else 
	ncat -km 100 -lp $1 --broker
fi

