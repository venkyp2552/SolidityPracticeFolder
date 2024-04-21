// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

import {SimpleStorage} from "./SimpleStoragePractice.sol";

contract addFiveStorageContract is SimpleStorage{
    //if i want override the any function just kike below
    function store(uint256 _newNumber) public override {
        myFavouriteNumber=_newNumber + 5;
    }
}