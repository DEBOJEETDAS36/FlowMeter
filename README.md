#FlowWithFlow

# 🧮 Counter Smart Contract

A simple and beginner-friendly Solidity smart contract that lets you **increment, decrement, and track a counter** on the blockchain.  
Perfect for learning Solidity basics, testing smart contract interactions, or building small on-chain applications.

**Deployed Contract Address:** `0xA19B9293C578C873180938E0fe722787C47368b9`

<img width="1886" height="632" alt="done_flow" src="https://github.com/user-attachments/assets/15229d39-3e99-43a9-aeb5-f906806ef3ee" />


---

## 📘 Overview

The **Counter** contract maintains a single integer variable on the blockchain.  
It provides three primary functions:

1. **increment()** – Increases the counter by 1.  
2. **decrement()** – Decreases the counter by 1 (cannot go below zero).  
3. **getCount()** – Returns the current value of the counter.  

The contract also demonstrates **state management**, **public functions**, and **basic Solidity syntax**, making it a great learning project.

---

## 🧠 Smart Contract Code

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Counter {
    uint256 public count;

    constructor() {
        count = 0;
    }

    function increment() public {
        count += 1;
    }

    function decrement() public {
        require(count > 0, "Counter cannot go below zero");
        count -= 1;
    }

    function getCount() public view returns (uint256) {
        return count;
    }
}
```

---

## ⚙️ Functions Explained

| Function | Type | Description |
|----------|------|-------------|
| `increment()` | Public | Increases the counter by 1. Can be called by any address. |
| `decrement()` | Public | Decreases the counter by 1. Throws an error if the counter is zero. |
| `getCount()` | Public View | Returns the current counter value. Reading does not cost gas. |

---

## 💡 Possible Use Cases

1. **Learning & Education** – Great for beginners to understand Solidity basics.  
2. **On-Chain Metrics** – Can be adapted to track visits, clicks, or usage events.  
3. **Gamified DApps** – Track player scores or game progress.  
4. **Voting or Polling** – With slight modifications, it can serve as a basic vote counter.  
5. **Event Tracking** – Track on-chain actions such as NFT mints, token transfers, or achievements.  

---

## 🖥️ Deployment

The contract is already deployed at:  
`0xA19B9293C578C873180938E0fe722787C47368b9`

You can interact with it using **Remix IDE**, **Hardhat**, or any Web3 frontend connected to the network it’s deployed on.

### Using Remix IDE

1. Open [Remix IDE](https://remix.ethereum.org/)  
2. Connect to the network where the contract is deployed.  
3. Go to the **At Address** section and paste the deployed address.  
4. Interact with the contract functions:  
   - `increment()` → increase counter  
   - `decrement()` → decrease counter  
   - `getCount()` → read current value

### Using Hardhat or Web3.js

You can also interact with it using your scripts or a frontend using the contract ABI and this deployed address.

---

## 🧩 Future Enhancements

- Emit events (`Incremented`, `Decremented`) for better tracking  
- Make counters **user-specific** (each address has its own counter)  
- Add **reset functionality** (only owner can reset)  
- Integrate with a **frontend** (React, Next.js)  
- Extend to track multiple counters for multi-user applications  
- Deploy on L2 networks like **Polygon**, **Arbitrum**, or **Base**

---

## 🪙 License

MIT License © 2025 Debojeet Das

---

## ✨ Author

**Debojeet Das**  
Web3 Developer | Blockchain Enthusiast  
🌐 [GitHub](https://github.com/) | [LinkedIn](https://linkedin.com/) | [Twitter/X](https://twitter.com/)
