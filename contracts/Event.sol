// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract Event {

    /*
        Events allow logging to the Ethereum blockchain. Some use cases for events are:

        Listening for events and updating user interface.
        A cheap form of storage.

     */
    
    event log(address indexed sender, string text);
    event newLog();


    function logMe() public {
        emit log(msg.sender, "Hey Log!");
        emit newLog();
    }

}

