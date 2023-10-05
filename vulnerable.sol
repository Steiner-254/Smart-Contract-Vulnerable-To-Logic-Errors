pragma solidity ^0.8.0;

contract SimpleWallet {
    mapping(address => uint) public balances;
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function deposit() public payable {
        balances[msg.sender] += msg.value;
    }

    function withdraw(uint amount) public {
        require(balances[msg.sender] >= amount, "Insufficient balance");
        require(msg.sender == owner, "Only the owner can withdraw");
        
        payable(msg.sender).transfer(amount);
        balances[msg.sender] -= amount;
    }
}
