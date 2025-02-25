require('dotenv').config();

const HDWalletProvider = require('@truffle/hdwallet-provider');  // @notice - Should new module.
const mnemonic = process.env.MNEMONIC;


module.exports = {
  networks: {
    development: {
      host: "127.0.0.1",     // Localhost (default: none)
      port: 8545,            // Standard Ethereum port (default: none)
      network_id: "*",       // Any network (default: none)
    },
    ropsten: {
      provider: function() {
        return new HDWalletProvider(mnemonic, process.env.RPC_URL_ROPSTEN)
        //return new HDWalletProvider("Replace here with your mnemonic word", process.env.RPC_URL_ROPSTEN)
      },
      network_id: '3',
      //gas: 4465030,
      //gasPrice: 10000000000,
      skipDryRun: true
    }
  }
}
