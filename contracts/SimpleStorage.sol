// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract SimpleStorage {
    
    uint public val;

    // This function will write the value to the state variable (Transaction Required)
    function set(uint _val) public {
        val = _val;
    } 

    // This function will read the value from the state variable (No Transaction)
    function get() public view returns(uint) {
        return val;
    }
}