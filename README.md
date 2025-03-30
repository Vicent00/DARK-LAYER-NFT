# 🕶️ DARK LAYER – ERC-721 NFT Collection

**DARK LAYER** is a secure, efficient, and gas-optimized NFT collection built on the ERC-721 standard. Developed with Solidity and powered by OpenZeppelin libraries, this smart contract allows users to mint unique NFTs until the defined maximum supply is reached.

> 🧾 Deployed Contract:

> [View on Arbiscan](https://arbiscan.io/address/0xeb1cba8a9546bb96db2a626e85d374abee248bd3)
> [View on OpenSea](https://opensea.io/es/0x3207D31e5862F616AA92702a1C38A45e23bCF7b0)


---

## 🚀 Key Features

| Feature                 | Description                                                                 |
|-------------------------|-----------------------------------------------------------------------------|
| 🎭 **ERC-721 Standard** | Fully compliant with the non-fungible token standard.                       |
| 🎨 **NFT Minting**       | Users can mint NFTs up to the maximum collection supply.                   |
| 🔗 **Dynamic Base URI**  | Metadata is served using the format `<baseURI><tokenId>.json`.             |
| 📢 **Event Emission**    | Emits a `MintNFT` event every time a token is successfully minted.         |

---

## 🔧 Smart Contract Functions

| Function              | Description                                                               |
|------------------------|---------------------------------------------------------------------------|
| `safeMint()`           | Allows users to mint a new NFT, ensuring the supply cap is respected.    |
| `_baseURI()`           | Returns the base URI used for metadata resolution.                       |
| `tokenURI(uint256)`    | Returns the complete URI for the given token ID.                         |

---

## 📡 Events

| Event                          | Description                                                        |
|--------------------------------|--------------------------------------------------------------------|
| `MintNFT(address, uint256)`    | Emitted when a new NFT is minted and assigned to a wallet.        |

---

## ⚙️ Project Setup with Foundry

### 🔧 Prerequisites

- [Foundry](https://book.getfoundry.sh/getting-started/installation) installed  
- Ethereum wallet (e.g., MetaMask)  
- Testnet ETH if deploying to a test network  

### 📦 Installation & Usage

```bash
# Clone the repository
git clone https://github.com/Vicent00/DARK-LAYER-NFT.git
cd dark-layer

# Install dependencies (if using external libraries)
forge install

# Build the contract
forge build

# Deploy (example using a local or testnet environment)
forge script script/Deploy.s.sol --rpc-url <YOUR_RPC_URL> --private-key <YOUR_PRIVATE_KEY> --broadcast

