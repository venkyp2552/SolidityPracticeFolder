// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

import {SimpleStorage} from "./SimpleStoragePractice.sol";

contract storageFactory{
    SimpleStorage[] public listOfSimpleStorageContracts;
    // address[] public listOfSimpleStorageContracts;

    function createSimpleStorageContract() public {
        SimpleStorage newSimpleStorage=new SimpleStorage();
        listOfSimpleStorageContracts.push(newSimpleStorage);
    }
    
    function sfStore(uint256 _indexNum,uint256 _StoreFavNumber) public {
        //Normal Method

        // SimpleStorage newStoreVal= listOfSimpleStorageContracts[_indexNum];
        // newStoreVal.store(_StoreFavNumber);

        //Another Method
        listOfSimpleStorageContracts[_indexNum].store(_StoreFavNumber);
    }

    function sfGetStoreVal(uint256 _indexN) public view returns (uint256){
        // SimpleStorage newStoreVal=listOfSimpleStorageContracts[_indexN];
        // return newStoreVal.retrieve();

        // another Method
        listOfSimpleStorageContracts[_indexN].retrieve();
    }

}