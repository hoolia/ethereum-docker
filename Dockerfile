FROM ethereum/client-go:alltools-latest


EXPOSE 8545/TCP
EXPOSE 8546/TCP
EXPOSE 8547/TCP
EXPOSE 30303/TCP
EXPOSE 30303/UDP


CMD [ "geth", "--http", "--http.port", "8545", "--http.addr", "0.0.0.0", "--http.api", "web3,eth,txpool", "--http.vhosts", "'*'", "--syncmode=full", "-verbosity", "4", "--authrpc.addr", "0.0.0.0" , "--authrpc.port", "8551"]
