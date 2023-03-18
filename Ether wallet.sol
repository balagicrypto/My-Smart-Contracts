//SPDX-License-Identifier:MIT
pragma solidity ^0.8.8;

contract EtherWallet{
    address payable public OwnerBala;
    //Anyone can send ETH.
    //Only the ownerBala can withdraw.

    constructor(){
        OwnerBala =payable (msg.sender);
    }
    receive() external payable {}

    function withdraw(uint _quantity) external{
        require(msg.sender == OwnerBala, "caller not owner");
        payable (msg.sender).transfer(_quantity);
    }
    function ViewBalanace() external view returns (uint){
        return address (this).balance;
    }
}