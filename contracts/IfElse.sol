// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract IfElse {
    
    function getNum(uint _num) public pure returns(uint) {
        if (_num <10) {
            return 1;
        } else if (_num < 20) {
            return 2;
        } else {
            return 3;
        }
    }

    function getNumTernary(uint _num) public pure returns(uint) {
        return _num < 10 ? 1 : 2;
    }

}