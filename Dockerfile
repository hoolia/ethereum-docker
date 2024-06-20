FROM ethereum/client-go:alltools-latest


RUN mkdir /app
COPY . /app

EXPOSE 8545/TCP
EXPOSE 8546/TCP
EXPOSE 8547/TCP
EXPOSE 30303/TCP
EXPOSE 30303/UDP


ENTRYPOINT geth --syncmode full --http --http.api eth,net,web3 --http.corsdomain '*' --ws --ws.api eth,net,web3
