// contracts/Sample_Token.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract SampleToken is ERC20 {
    constructor(uint256 initialSupply) ERC20("Sample", "") {
        _mint(msg.sender, initialSupply);
    }
}