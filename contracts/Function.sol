// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract Function {

    // Functions can return multiple values.
    function returnMany() public pure returns(uint, bool, uint) {
        return (1, true, 3);
    }

    // Return values can be named.
    function returnNamed() public pure returns(uint x, bool y, uint z) {
        return (1, true, 4);
    }

    // Return values can be assigned to their name.
    // In this case the return statement can be omitted.
    function noReturn() public pure returns(uint x, bool y, uint z) {
        x = 1;
        y = true;
        z = 7;
    }

    // Use destructing assignment when calling another
    // function that returns multiple values.
    function destructing() public pure returns(uint, bool, uint, uint, uint) {
        (uint i, bool j, uint k) = returnMany();

        (uint x, , uint y) = (7, 8, 9);

        return (i,j,k,x,y);
    }

    // Cannot use map for neither input nor output

    // Can use array for input
    function inputArray(uint[] memory _arr) public {}

    function retArray(uint[] memory _arr) public pure returns(uint[] memory) {
        return _arr;
    }
    
}