// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract Gas {
    
    /* You pay gas spent * gas price amount of ether, where
        gas is a unit of computation
        gas spent is the total amount of gas used in a transaction
        gas price is how much ether you are willing to pay per gas 
        Unspent gas will be refunded. 
        
        gas limit (max amount of gas you're willing to use for your transaction, set by you)
        block gas limit (max amount of gas allowed in a block, set by the network) 
    */

    uint public num = 0;

    function useTotalGas() public{
        // This loop will run forever, use up all the gas and the transaction will fail
        // The gas spent is non refundable.
        while (true) {
            num += 1;
        }
    }
}