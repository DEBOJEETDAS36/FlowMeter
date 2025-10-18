# FlowMeter
# 🧮 Counter Smart Contract

A simple yet complete **Solidity smart contract** that demonstrates
basic blockchain concepts such as state management, public functions,
and deployment using [Remix IDE](https://remix.ethereum.org/).

This project is ideal for **beginners** who are starting with Ethereum
development and want to learn how smart contracts work, get compiled,
and interact with the blockchain.

------------------------------------------------------------------------




## 📘 Overview

The **Counter** contract is a minimal smart contract that allows anyone
to: - **Increment** a counter - **Decrement** a counter (but not below
zero) - **View** the current counter value

Despite its simplicity, it illustrates essential Solidity concepts such
as: - State variables - Function modifiers (e.g., `view`, `public`) -
Error handling with `require()` - Smart contract deployment lifecycle

------------------------------------------------------------------------

## 🧠 Smart Contract Code

``` solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Counter {
    uint256 public count;

    // Constructor - runs once when contract is deployed
    constructor() {
        count = 0;
    }

    // Function to increase the counter
    function increment() public {
        count += 1;
    }

    // Function to decrease the counter
    function decrement() public {
        require(count > 0, "Counter cannot go below zero");
        count -= 1;
    }

    // Function to read the current counter value
    function getCount() public view returns (uint256) {
        return count;
    }
}
```

------------------------------------------------------------------------

## ⚙️ Prerequisites

Before deploying or testing this contract, make sure you have: - 🦊
[MetaMask](https://metamask.io/) wallet installed - 🧰 [Remix
IDE](https://remix.ethereum.org/) - 💰 Test Ether (for testnet
deployments)

------------------------------------------------------------------------

## 🚀 Deployment Steps

### 🖥️ Option 1: Using Remix IDE

1.  Open [Remix IDE](https://remix.ethereum.org/)
2.  Create a new file called `Counter.sol`
3.  Paste the smart contract code above
4.  Click on **Solidity Compiler** → Compile the file using version
    `0.8.x`
5.  Go to the **Deploy & Run Transactions** tab
6.  Select **Injected Provider - MetaMask** as the environment (connect
    to a network like Sepolia testnet)
7.  Deploy the contract
8.  After deployment, interact with it using the Remix interface:
    -   `increment()` → increases the counter\
    -   `decrement()` → decreases the counter\
    -   `getCount()` → displays the current value

### 💻 Option 2: Using Hardhat (for developers)

If you prefer to use a local setup:

``` bash
# 1. Initialize a Hardhat project
npx hardhat init

# 2. Copy this contract into the contracts folder

# 3. Compile
npx hardhat compile

# 4. Deploy using a script
npx hardhat run scripts/deploy.js --network sepolia
```

Example `deploy.js`:

``` javascript
async function main() {
  const Counter = await ethers.getContractFactory("Counter");
  const counter = await Counter.deploy();
  await counter.waitForDeployment();
  console.log("Counter deployed at:", await counter.getAddress());
}

main().catch((error) => {
  console.error(error);
  process.exit(1);
});
```

------------------------------------------------------------------------

## 🧪 Testing (Optional)

If you're using Hardhat, create a test file `test/Counter.js`:

``` javascript
const { expect } = require("chai");

describe("Counter", function () {
  it("Should increment and decrement correctly", async function () {
    const Counter = await ethers.getContractFactory("Counter");
    const counter = await Counter.deploy();
    expect(await counter.getCount()).to.equal(0);

    await counter.increment();
    expect(await counter.getCount()).to.equal(1);

    await counter.decrement();
    expect(await counter.getCount()).to.equal(0);
  });
});
```

Run tests:

``` bash
npx hardhat test
```

------------------------------------------------------------------------

## 🧩 Future Enhancements

You can build on this simple foundation to explore more advanced
concepts: - Emit events when the counter changes (`Incremented`,
`Decremented`) - Make counters **user-specific** (each address has its
own count) - Add a **reset function** (only owner can reset) - Integrate
with a **frontend** using React + Ethers.js - Create a **dashboard**
showing multiple counters on-chain - Deploy on L2 networks like
**Polygon**, **Arbitrum**, or **Base**

------------------------------------------------------------------------
