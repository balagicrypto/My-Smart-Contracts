//SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract VendingMachine{

    //prepsi Vending Machine contract
    address public owner;
    mapping(address => uint) public BalancePepsi;

    constructor() {
        owner = msg.sender;
        BalancePepsi[address(this)] =100; 
    }

    //function for Check Vending machine Balance
    function checkBalance() public view returns (uint){
        return BalancePepsi[address(this)];
    }
     // Let the owner restock the vending machine
    function restock(uint _i) public {
        require(owner == msg.sender, "Only owner can stock");
        BalancePepsi[address(this)] += _i;
    }
  // Purchase Pepsi from the vending machine
    function purchase(uint amount) public payable {
        require(msg.value >= amount * 2 ether, "You must pay at least 2 ETH per donut");
        require(BalancePepsi[address(this)] >= amount, "Not enough donuts in stock to complete this purchase");
        BalancePepsi[address(this)] -= amount;
        BalancePepsi[msg.sender] += amount;
    }
}