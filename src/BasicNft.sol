// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "../lib/openzeppelin-contracts/contracts/token/ERC721/ERC721.sol";
import {Strings} from "../lib/openzeppelin-contracts/contracts/utils/Strings.sol";

contract BasicNft is ERC721 {
using Strings for uint256;
uint256 tokenCounter;
string baseUri;
uint256 totalSuply ;


event NftMinted(uint256 indexed tokenId, address indexed owner);


constructor(string memory name_, string memory symbol_, string memory baseUri_, uint256 totalSuply_) ERC721(name_ , symbol_) {
    tokenCounter = 0;
    baseUri = baseUri_;
    totalSuply = totalSuply_;


}


// Total Suply of NFTs 0 - 5 = 6 NFTs
function mintNft() external returns (uint256) {
    require(tokenCounter < totalSuply, "All NFTs have been minted");
    _safeMint(msg.sender, tokenCounter);
    
    tokenCounter = tokenCounter + 1;
   
    emit NftMinted(tokenCounter - 1, msg.sender);

    return tokenCounter - 1;

}


function _baseURI() internal view override virtual returns (string memory) {
        return baseUri;
    }

function tokenURI(uint256 tokenId) public view override virtual returns (string memory) {
        _requireOwned(tokenId);

        string memory baseURI = _baseURI();
        return bytes(baseURI).length > 0 ? string.concat(baseURI, tokenId.toString(), ".json") : "";
    }



}