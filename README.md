## 🖼️ Image NFT Application

The **Image NFT Application** is a decentralized web project that allows users to **mint and display image-based NFTs** using the **ERC-1155 multi-token standard** from OpenZeppelin.

### 🔗 Key Features

* **ERC-1155 Smart Contract Integration**
  Utilizes the secure and extensible ERC-1155 contract implementation from OpenZeppelin, enabling the creation and management of multiple unique NFT tokens within a single contract.

* **IPFS & Pinata Storage**
  Uploaded image files are stored on **IPFS (InterPlanetary File System)** through **Pinata**, ensuring decentralized, permanent, and tamper-proof storage of media assets.

* **NFT Minting Functionality**
  Users can mint new NFTs by uploading image files. Each minted token is automatically linked to the corresponding IPFS metadata URI, making it traceable and verifiable on the blockchain.

* **Dynamic Metadata & URI Updates**
  Supports updating the **token URI**, allowing flexibility for metadata modification or migration if needed.

* **Interactive Web Interface**
  A clean, minimalistic web interface enables users to:

  * Upload and preview image files before minting.
  * Connect their crypto wallet (e.g., MetaMask).
  * View minted NFTs displayed directly from IPFS.

### ⚙️ Technologies Used

* **Solidity** — Smart contract language for ERC-1155 implementation.
* **OpenZeppelin Contracts** — For secure and standardized smart contract components.
* **Pinata + IPFS** — For decentralized file and metadata storage.
* **Web3.js / Ethers.js** — For blockchain interaction within the frontend.
* **HTML, CSS, JavaScript** — For the web interface.

### 💡 Summary

This application demonstrates a complete workflow for creating, managing, and displaying **Image NFTs** on a decentralized network. It highlights the integration of blockchain smart contracts, decentralized storage, and a simple, user-friendly frontend interface for NFT interaction.

---
