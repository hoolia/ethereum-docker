from ethereum/client-go:alltools-latest

EXPOSE 8545/TCP
EXPOSE 8546/TCP
EXPOSE 8547/TCP
EXPOSE 30303/TCP
EXPOSE 30303/UDP

# CMD ["geth", "--help"]
CMD ["geth", "--syncmode=full", "--http", "--http.api=db,eth,net,web3,personal,web3,admin,txpool,miner", "--mine" , "--etherbase", "0x504940B49D655E4A63fee1D5DbDF0398A14530D1" ]

