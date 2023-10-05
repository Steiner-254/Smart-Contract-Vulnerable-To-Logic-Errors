# Smart-Contract-Vulnerable-To-Logic-Errors
Smart Contract Vulnerable To Logic Errors

# Description
~ A common type of vulnerability in smart contracts is a logic error that allows unintended behavior or manipulation of the contract's state. 

# vulnerable.sol
~ In this vulnerable.sol wallet contract, the owner is supposed to be the only one allowed to withdraw funds. However, there is a logic error in the withdraw function. The code checks if msg.sender is the owner, but it does so after deducting the amount from the sender's balance. This means that even if someone other than the owner calls the withdraw function, the balance will still be deducted before the check is made, allowing unauthorized withdrawals.

# fix.sol
~ In this corrected version - fix.sol, the ownership check is performed before the balance deduction, ensuring that only the owner can withdraw funds as intended. This fix prevents unauthorized withdrawals by enforcing the order of operations and logic in the smart contract.
