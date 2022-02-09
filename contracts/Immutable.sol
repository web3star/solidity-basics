// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract Immutable {

    address public immutable MY_ADDRESS;
    uint public immutable MY_AMOUNT;
    //Values of immutable variables are set inside the constructor but cannot be modified afterwards.
    constructor(uint _myAmnt) {
        MY_ADDRESS = msg.sender;
        MY_AMOUNT = _myAmnt;
    }
    
}