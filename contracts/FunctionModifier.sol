// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract FunctionModifier {

    address public owner;
    uint public x = 10;
    bool public locked;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require (msg.sender == owner, "Not a owner");
        _;
    }

    modifier checkAddress(address _addr) {
        require (_addr != address(0), "Address is not valid");
        _;
    }

    function changeOwner(address _addr) public onlyOwner checkAddress(_addr) {
        owner = _addr;
    }

    modifier noReEntrance() {
        require (!locked, "No Reentrance");
        locked = true;
        _;
        locked = false;
    }

    function decrement(uint _i) public noReEntrance {
        x -= _i;

        if (_i > 1) {
            decrement(_i - 1);
        }
    }


    
}