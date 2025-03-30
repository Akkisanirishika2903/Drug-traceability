module.exports = {
  networks: {
    development: {
      host: "127.0.0.1", // Ganache localhost
      port: 7545, // Default Ganache port
      network_id: "*", // Match any network
      gas: 6721975, // Increase gas if needed
      gasPrice: 20000000000,
    },
  },
  compilers: {
    solc: {
      version: "0.8.20", // Make sure to match Solidity version
    },
  },
};
