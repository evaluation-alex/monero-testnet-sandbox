#!/bin/sh
R="`realpath $0`"
DIR="`dirname $R`"

# mine to walletA
monerod --testnet --no-igd --hide-my-port --testnet-data-dir $DIR \
	--p2p-bind-ip 127.0.0.1 \
	--testnet-p2p-bind-port 28080 \
	--testnet-rpc-bind-port 28081 \
	--add-exclusive-node 127.0.0.1:38080 \
	--add-exclusive-node 127.0.0.1:48080 \
	--start-mining 9u9j6xG1GNu4ghrdUL35m5PQcJV69YF8731DSTDoh7pDgkBWz2LWNzncq7M5s1ARjPRhvGPX4dBUeC3xNj4wzfrjV6SY3e9 \
	--mining-threads 1 \
	--log-level 0
