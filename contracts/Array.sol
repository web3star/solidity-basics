// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract Array {

    uint[] public arr;
    uint[] public arr1 = [7,8,9,2];

    uint[5] public fixedSizeArr;

    function get(uint _index) public view returns(uint) {
        return arr[_index];
    }

    function getArray() public view returns(uint[] memory) {
        return arr;
    }

    function push(uint _val) public {
        arr.push(_val);
    }

    function pop() public {
        arr.pop();
    }

    function remove(uint _index) public {
        delete arr[_index];
    }

    function getLength() public view returns(uint) {
        return arr.length;
    }

    function memArr() public pure {
        uint[] memory memArry = new uint[](6);
    }


    
}