// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract ViewAndPure {

    uint num = 7;

    // No modification of the state.
    function sumView(uint x) public view returns(uint) {
        return num + x;
    }

    // No modification and reading of the state.
    function sumPure(uint _x, uint _y) public pure returns(uint) {
        return _x + _y;
    }

}