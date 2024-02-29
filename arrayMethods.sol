// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.6;

contract arrayMethod{
    uint[] public DynamicArr;
    function ArrayPush(uint element) public{
        require(element == uint(element),"Element should be Numeric Value");
        DynamicArr.push(element);
    }

    function returnFn() public view returns(uint[] memory){
        return DynamicArr;
    }

    function removeFn() public {
            DynamicArr.pop();
        // return DynamicArr.pop();
    }

    //remove Specific Index
    function removeINdexBasedFn(uint indexVar) public {
        require(indexVar < DynamicArr.length,"Index is Our oof range");
        DynamicArr[indexVar]=DynamicArr[DynamicArr.length-1];
        DynamicArr.pop();
    }
    //index bsed return
    function returnIndexVal(uint _inde) public view returns(uint){
        require(_inde < DynamicArr.length,"Index is out of the range");
        uint retunVar=DynamicArr[_inde];
        return retunVar;
    }

    //Filter
    function filterExamle(uint _threshold) public view returns(uint[] memory result){
        for(uint i=0;i<DynamicArr.length;i++){
            if(DynamicArr[i] > _threshold){
                result[result.length]=DynamicArr[i];
            }
        }
    }
}
