// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract IfElseContract{

    //My Simple If/Else Contract

    function foo(uint A) public pure returns(uint) {
       if (A < 10) {
           return 0;
       } else if (A < 20){
           return 1;
       } else {
           return 2;
       }
       
}
    //short way to write if/else contract
    
    function ternary(uint B) public pure returns(uint){
        return B < 10 ? 1 : 2;
    }
}