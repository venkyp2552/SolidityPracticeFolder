// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.4;

contract EnumPracticeSc{
    enum ActionChoices{goRight,goLeft,goStraight,sitTill}
    ActionChoices choice;
    ActionChoices constant defaultChoice=ActionChoices.sitTill;

    function setStraightChoice() public {
        choice=ActionChoices.goStraight;
    }

    function getDefaultChoice() public pure returns(uint){
        return uint(defaultChoice);
    }

    function getChoice() public view returns (ActionChoices){
        return choice;
    }

    function toGetLargestValue() public pure returns(ActionChoices){
        return type(ActionChoices).max;
    }

    function toGetLowestValue() public pure returns(ActionChoices){
        return type(ActionChoices).min;
    }
}

