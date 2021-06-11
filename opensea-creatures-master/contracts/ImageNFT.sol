// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./ERC1155Tradable.sol";

/**
 * @title ImageNFT
 * ImageNFT - a contract for Creature Accessory semi-fungible tokens.
 */
contract ImageNFT is ERC1155Tradable {
    constructor(address _proxyRegistryAddress)
        ERC1155Tradable(
            "Image NFT",
            "IMG",
            "https://creatures-api.opensea.io/api/accessory/{id}",
            _proxyRegistryAddress
        ) {}

    function contractURI() public pure returns (string memory) {
        return "https://creatures-api.opensea.io/contract/opensea-erc1155";
    }
}
