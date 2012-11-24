nc-chat
=======

Simple netcat chat server. 


Dependencies
=======
This application requires the Nmap team's implementation of netcat, ncat, found here: 

http://nmap.org/ncat 


In particular, the server script requires ncat's connection brokering option (--broker), so that anything received from one of the clients will be broadcasted to all other clients. In addition, the -k option is needed so that
the ncat server can accept multiple connections in listen mode. 


However, you should be able to use netcat, nc, or any other flavors of netcat in the client script. 

TODO
=======
Text user interface/ncurses integration