// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract SimpleStorage {
    uint256 myFavouriteNumber;

    struct Person {
        string name;
        uint256 FavNumber;
    }

    Person[] public listOfFavNumbers;
    mapping(string=>uint256) public nameToFavNumber;

    function store(uint256 _favouriteNumber) public virtual {
        myFavouriteNumber = _favouriteNumber;
    }

    function retrieve() public view returns (uint256) {
        return myFavouriteNumber;
    }

    function addPerson(string memory _name, uint256 _favNum) public {
        require(bytes(_name).length > 0 && _favNum != 0,"Inputs Should not be Empty");
        listOfFavNumbers.push(Person(_name, _favNum));
        nameToFavNumber[_name]=_favNum;
    }

    function getFavNumbersCount() public view returns (uint256) {
        return listOfFavNumbers.length;
    }
}
