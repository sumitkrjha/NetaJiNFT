const {ethers} = require("hardhat");

async function main(){

  const deployNFTContract = await ethers.deployContract("NetajiNFT");

  const netaji = await deployNFTContract.waitForDeployment();

  console.log("Netaji contract address is:", await netaji.getAddress());

  console.log("Minting NFT...");
  let txn = await netaji.mintNFT();
  await txn.wait();
  console.log("Yayy.. NFT minted successfully!!!");
}

main().then(() => process.exit(0))
.catch((err) => {
  console.error(err);
  process.exit(1);
})
