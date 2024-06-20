FROM ethereum/client-go:alltools-latest

EXPOSE 8545/TCP
EXPOSE 8546/TCP
EXPOSE 8547/TCP
EXPOSE 30303/TCP
EXPOSE 30303/UDP


ENTRYPOINT geth --syncmode full --http --http.api eth,net,web3 --http.corsdomain '*' --http.addr \
    '0.0.0.0'  --authrpc.addr '0.0.0.0' --ws.addr '0.0.0.0'
