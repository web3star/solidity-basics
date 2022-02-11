// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract Enum {

    enum Status {
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Cancelled
    }

    Status public status;

    // Default value is the first element listed in
    // definition of the type, in this case "Pending"
    // Returns uint
    // Pending  - 0
    // Shipped  - 1
    // Accepted - 2
    // Rejected - 3
    // Canceled - 4

    function get() public view returns(Status) {
        return status;
    }

    //Update status by passing uint as input
    function set(Status _status) public {
        status = _status;
    }

    //Update status to specific enum
    function cancel() public {
        status = Status.Cancelled;
    }

    //Reset status to default value 0
    function reset() public {
        delete status;
    }
    
}