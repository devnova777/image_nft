//SPDX-License-Identifier: MIT License
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";

contract Image is ERC1155 {

    mapping(uint => bool) public _idExistTracker;

    mapping(uint => string) public _uriOfId;

    uint256[] public allIDs;

    //the totalSupply ie the number of unique IDs
    // uint public totalSupply;

    constructor() ERC1155("") {
        // totalSupply = 0;
    }

    //function to create an NFT - mint and set the uri
    function createNFT(uint256 _id, uint256 _amount, bytes memory _data, string memory _uri) public{
        // require that the id is unique (does not exist already)
        require(!_idExistTracker[_id]);

        addId(_id);

        setIdURI(_id, _uri);

        _mint(msg.sender, _id, _amount, _data);
        
    }

    //add an id to the list to later track whether it exists before creating the NFT
    function addId (uint256 _id) private{
        allIDs.push(_id);
        _idExistTracker[_id] = true;
    }

    // function to change (from empty or existing) the URI of a particular NFT
    function setIdURI (uint256 _anId, string memory _aUri) public{
        _uriOfId[_anId] = _aUri;
    }

    //returns the uri of the object with the id as input
    function uri(uint256 id) public view virtual override returns (string memory) {
        return _uriOfId[id];
    }

    //returns the length of allIDs[] i.e. the totalSupply
    function getTotalSupply() public view returns(uint256){
        return allIDs.length;
    }

    //returns the array of all IDs, allIDs
    function getAllIDs() public view returns(uint256[] memory){
        return allIDs;
    }

}