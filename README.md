🔗 Project Details
Parameter	Value	Notes
Network	Base Mainnet / Base Sepolia	EVM-compatible Layer 2 network.
Owner Address [0x2A6b5204B83C7619c90c4EB6b5365AA0b7d912F7]	The recipient of all forwarded funds.
Contract Address	[0x1dB76FA41c701489Ce6ebF7e96b4DfA4A5705B29]	This is the address users deposit to.
BaseScan Link	[https://basescan.org/address/0x1dB76FA41c701489Ce6ebF7e96b4DfA4A5705B29]


🛠️ Deployment and Verification Settings
This contract was deployed using Remix IDE. To ensure successful source code verification on BaseScan, these exact compiler settings must be used:

Setting	Value	Purpose
Solidity Version	0.8.30	Matches the pragma statement.
Optimizer Enabled	Yes	Crucial for exact match verification.
Optimizer Runs	200	The specific run count used during compilation.
Constructor Arguments	None (Empty)	The owner is set automatically via msg.sender.

💡 How to Interact (User Deposit)
The user interaction is designed to be as simple as sending ETH to any regular wallet.

Steps for the User
1. Open Wallet: Open a wallet connected to the Base network (e.g., MetaMask).

2. Recipient: Paste the Contract Address ([0x1dB76FA41c701489Ce6ebF7e96b4DfA4A5705B29]) into the recipient field.

3. Amount: Input the desired amount of Base ETH.

4. Example: To send 0.00001 ETH, input 0.00001 in the ETH field, or 10000000000000 if using the Wei unit.

5. Confirm: Confirm the transaction.

Verifying the Funds Transfer on BaseScan
Upon confirmation, the transaction on BaseScan will clearly show the successful transfer:

1. Primary Transaction: User Wallet → Contract Address.

2. Internal Transaction: An automated transfer from the Contract Address → Owner Address.

3. This internal transaction confirms that the funds were instantly and automatically delivered to the owner's wallet.

📜 License
This project is licensed under the MIT License.  
