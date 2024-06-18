from ethereum/client-go:stable


EXPOSE 8545/TCP
EXPOSE 8546/TCP
EXPOSE 8547/TCP
EXPOSE 30303/TCP
EXPOSE 30303/UDP

# ENTRYPOINT geth --help
# ENTRYPOINT geth -verbosity 4 --ipcdisable --port 30303 --rpcport 8545 -rpc --rpcapi="db,eth,net,web3,personal,web3,admin,txpool,miner" --mine --minerthreads 2  --rpcaddr "0.0.0.0"  --networkid=990099 --nodiscover --bootnodes enode://74b13cc21a2204fedd54712c96f5c3586539886969821871d93612ea94e8681f54a6e3aedc3f819c25b66cf225c66e3ad47d5e0d1b7e723596f2a583e700bc86@$BOOTNODE:30301

CMD [ "geth", "--syncmode=full", "-verbosity", "4" ]
