// SPDX-License-Identifier: GNU GPL v3
pragma solidity ^0.8.2;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v4.4/contracts/token/ERC1155/ERC1155.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v4.4/contracts/access/Ownable.sol";

contract WWI19SEBSEMIFUNGIBLENFTS is ERC1155, Ownable {
    uint256 public constant NFTTYPE1ID = 1;
    uint256 public constant NFTTYPE2ID = 2;
    uint256 public constant NFTTYPE3ID = 3;
    uint256 public constant NFTTYPE4ID = 4;
    uint256 public constant NUMBEROFCOPIES = 10;
    uint256 public constant NFTTYPE5ID = 5;

    constructor()
        ERC1155(
            "https://ipfs.io/ipfs/QmfWDpTXafSfkp5wjHGSWuHbmBhBkm4mRWvk1BGCsUWV5E/{id}.png"
        )
    {
        _mint(msg.sender, NFTTYPE1ID, NUMBEROFCOPIES, "");
        _mint(msg.sender, NFTTYPE2ID, NUMBEROFCOPIES, "");
        _mint(msg.sender, NFTTYPE3ID, NUMBEROFCOPIES, "");
        _mint(msg.sender, NFTTYPE4ID, NUMBEROFCOPIES, "");
        _mint(msg.sender, NFTTYPE5ID, NUMBEROFCOPIES, "");
    }

    function setURI(string memory newuri) public onlyOwner {
        _setURI(newuri);
    }
}
