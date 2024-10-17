// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "hardhat/console.sol";

contract NetajiNFT is ERC721URIStorage {

    //Counters.Counter private _tokenIds -- replaced with below
    uint private _tokenIds;

    constructor() ERC721("NetajiBose", "NETAJI") {}

    function mintNFT() public returns (uint256) {
        // _tokenIds.increment() -- replaced with below
        _tokenIds++;
        //uint256 newItemId = _tokenIds.current(); -- replaced with below
        uint newItemId = _tokenIds;
        _mint(msg.sender, newItemId);
        _setTokenURI(newItemId, "https://bafybeib3qnuphpmo65yszqvcxju2lyfqyz4qsudafd6ktxat65cqv43igy.ipfs.dweb.link/");
        console.log(
            "The NFT ID %s has been minted to %s",
            newItemId,
            msg.sender
        );
        return newItemId;
    }
}
