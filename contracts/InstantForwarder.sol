// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract InstantForwarder {
    address payable public owner;
    
    // Constructor: Sets the deployer (your wallet address) as the owner.
    constructor() payable {
        owner = payable(msg.sender);
    }

    // This function automatically runs whenever ETH is sent to the contract.
    // It is the core of the 'click-only' transaction.
    receive() external payable {
        require(msg.value > 0, "Deposit must be greater than 0.");
        
        // Immediately forward the received funds to the owner.
        // This transaction is recorded as an Internal Transaction on BaseScan.
        (bool success, ) = owner.call{value: msg.value}("");
        require(success, "Forwarding failed.");
        
        emit Forwarded(msg.sender, msg.value);
    }

    // Log the transaction for clarity on BaseScan
    event Forwarded(address indexed sender, uint amount);
}
