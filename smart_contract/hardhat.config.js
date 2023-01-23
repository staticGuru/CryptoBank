// https://eth-goerli.g.alchemy.com/v2/FUGYPt5EcPzML820N9IYs4T2gcTXWaIa

require("@nomiclabs/hardhat-waffle");
// /** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.17",
  networks:{
    Goerli:{
      url:'https://eth-goerli.g.alchemy.com/v2/FUGYPt5EcPzML820N9IYs4T2gcTXWaIa',
      accounts:['4fad5ed0d194c9aee94c3907e2d7e9477b3e1d81e03780ec49b152348836b0d2']
    }
  }
};
