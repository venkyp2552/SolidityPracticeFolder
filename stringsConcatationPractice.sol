// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.4;

// Understand Solidity Strings:
contract StringMethods{
//Concatation
    function stringConcatatio(string memory str1,string memory str2) public pure returns(string memory){
        return string(abi.encodePacked(str1," ",str2));
    }
//Coversion Strings to bytes
    //string to bytes
    function stringConversion(string memory str1) public pure returns (bytes memory){
        return bytes(str1);
    }
    //bytes to string
    function bytesConversion(bytes memory data) public pure returns (string memory){
        return string(data);
    }
//Length from the string
    function gettingLength(string memory str1) public pure returns(uint256){
        return bytes(str1).length;
    }
//Comparision stings using kekkcak256 algorith
    function comparisionStrings(string memory str1, string memory str2) public pure returns(bool){
        return keccak256(abi.encodePacked(str1)) == keccak256(abi.encodePacked(str2));
    }
}

