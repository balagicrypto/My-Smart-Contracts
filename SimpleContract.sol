//SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract SimpleContract{
    uint public number;

    // Function to get the current Number
    function GetNumber() public view returns(uint) {
        return number;
    }
    
    // Function to increment count by 1
    function Incrementby1() public{
        number +=1;
    }
    // Function to decrement count by 1
    function Decrementby1() public{
        number -= 1;
    }
    // Function to increment count by 2
    function Incrementby2() public{
        number +=2;
    }
    // Function to decrement count by 
    function Decrementby2() public{
        number -= 2;
    }

    // Function to automatically increment count by 1
    function addone() public{
        number ++;
    }
    // Function to automatically increment count by 1
    function reduceone() public{
        number --;
    }
}