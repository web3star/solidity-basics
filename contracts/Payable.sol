// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;


contract Payable {

    // Payable address can receive Ether
    address payable public owner;

    // Payable constructor can receive Ether
    constructor() payable {
        owner = payable(msg.sender);
    }

    // Payable function can receive Ether
    function deposit() public payable {}

    // Non Payable function cannot receive Ether
    function notPayable() public {}

    // Function to withdraw all Ether from this contract.
    function withdraw() public {
        uint amount = address(this).balance;

        (bool success, ) = owner.call{value: amount}("");
        require(success, "Failed to transfer ETH");
    }

    // Function to transfer Ether from this contract to address from input
    function transfer(address payable _to, uint _amount) public {
        (bool success, ) = _to.call{value: _amount}("");
        require(success, "Failed to send ETH");
    }
    
}