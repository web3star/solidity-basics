// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract Variables {

    // State variables (Stored on the blockchain)
    string public name = "Web3Star";
    uint public num = 777;

    function randFunction() public view {

        // Local variables (Not stored on the blockchain)
        int val = 143;
        string memory text = "hello";

        // Global Variables (Provides information about the blockchain)
        uint timestamp = block.timestamp; // current timestamp of block
        address sender = msg.sender;    // address of the caller

    }

}