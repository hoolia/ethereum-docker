from ethereum/client-go:alltools-latest


EXPOSE 8545/TCP
EXPOSE 8546/TCP
EXPOSE 8547/TCP
EXPOSE 30303/TCP
EXPOSE 30303/UDP


CMD [ "geth", "--syncmode=full", "-verbosity", "4", "--mine", "--etherbase", "0x504940B49D655E4A63fee1D5DbDF0398A14530D1" ]
