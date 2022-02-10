// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract Mapping {

    mapping(address => uint) public myMap;

    function get(address _addr) public view returns(uint) {
        return myMap[_addr];
    }

    function set(address _addr, uint _i) public {
        myMap[_addr] = _i;
    }

    function remove(address _addr) public {
        delete myMap[_addr];
    }
    
}

contract NestedMapping {
    
    mapping(address => mapping(uint => bool)) public myMap;

    function get(address _addr, uint _i) public view returns(bool) {
        return myMap[_addr][_i];
    }

    function set(address _addr, uint _i, bool flag) public {
        myMap[_addr][_i] = flag;
    }

    function remove(address _addr, uint _i) public {
        delete myMap[_addr][_i];
    }
    
}