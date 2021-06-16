//SPDX-License-Identifier: MIT License
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";

contract Image is ERC1155 {

    mapping(uint256 => bool) _idExistTracker;

    mapping(uint256 => string) _uriOfId;

    constructor() ERC1155("") {
        // _mint(msg.sender, GOLD, 10**18, "");
    }

    //function to create an NFT - mint and set the uri
    function createNFT(uint256 _id, uint256 _amount, bytes memory _data, string memory _uri) public{
        // require some lists - maybe id and uri?
        require(!_idExistTracker[_id]);

        addId(_id);
        // add uri to bool list here

        setIdURI(_id, _uri);

        _mint(msg.sender, _id, _amount, _data);
        
    }

    function addId (uint256 _id) private{
        _idExistTracker[_id] = true;
    }

    // function to change (from empty or existing) the URI of a particular NFT
    function setIdURI (uint256 _anId, string memory _aUri) private{
        _uriOfId[_anId] = _aUri;
    }

    function uri(uint256 id) public view virtual override returns (string memory) {
        
    }

}