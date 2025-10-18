// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Counter {
    // Variable to store the count
    uint256 public count;

    // Constructor - runs once when the contract is deployed
    constructor() {
        count = 0;
    }

    // Function to increment the counter
    function increment() public {
        count += 1;
    }

    // Function to decrement the counter
    function decrement() public {
        require(count > 0, "Counter cannot go below zero");
        count -= 1;
    }

    // Function to get the current count (optional, since 'count' is public)
    function getCount() public view returns (uint256) {
        return count;
    }
}
