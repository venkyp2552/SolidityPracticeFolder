// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.6;

import "@openzeppelin/contracts/access/Ownable.sol";

contract MyContract is Ownable{

    constructor() Ownable(msg.sender) {}

    function normalFunction() external pure returns(string memory){
        return("Any one can Access");
    }

    function specialFunction() external view onlyOwner returns (string memory){
        return("Only Owner Can Access this function");
    }

}