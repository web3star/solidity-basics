// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract Error {

    /* 
        You can throw an error by calling require, revert or assert.

        require is used to validate inputs and conditions before execution.
        revert is similar to require. See the code below for details.
        assert is used to check for code that should never be false. 
        Failing assertion probably means that there is a defect.
    */
    
    function reqFunction(uint _i) public pure {
        require(_i > 10, "Input must be greater than 10");
    }

    function revFunction(uint _i) public pure {
        if (_i <= 10) {
            revert("Input must be greater than 10");
        }
    }

    uint public num;

    function asserFunction() public view {
        assert(num == 0);
    }

    error InsufficientBalance(uint balance, uint withdrawAmount);

    function withdraw(uint _amount) public view {
        uint balance = address(this).balance;
        if (balance < _amount) {
            revert InsufficientBalance({balance:balance, withdrawAmount:_amount});
        }
    }


}