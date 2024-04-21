// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.6;

contract cont{
    mapping(uint=>uint) data;
    function f() public {
        set({key:2,value:3});
    }
    function set(uint key,uint value) public {
        data[key]=value;
    }
}