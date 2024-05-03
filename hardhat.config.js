require("@nomicfoundation/hardhat-toolbox");
require("dotenv").config()

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.24",
  networks:{
    hardhat:{},
    sepolia:{
      url:"https://sepolia.infura.io/v3/cec87750affa4791b9dd30c20cbc07b3",
      accounts:[process.env.PRIVATE_KEY]
    }
  }
};
