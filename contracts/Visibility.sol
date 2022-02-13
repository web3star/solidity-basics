// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract Base {
    function privateFn() private pure returns(string memory) {
        return "Private Function";
    }

    function testPrivateFn() public pure returns(string memory) {
        return privateFn();
    }

    function internalFn() internal pure returns(string memory) {
        return "Internal Function";
    }

    function testInternalFn() public pure virtual returns(string memory) {
        return internalFn();
    }

    function publicFn() public pure returns(string memory) {
        return "Public Function";
    }

    function testPublicFn() public pure returns(string memory) {
        return publicFn();
    }

    function externalFn() external pure returns(string memory) {
        return "External Function";
    }

    // This function will not compile since we're trying to call
    // an external function here.
    // function testExternalFunc() public pure returns (string memory) {
    //     return externalFunc();
    // }

    string private privateVar = "Private";
    string internal internalVar = "Internal";
    string public publicVar = "Public";

    // State variables cannot be external so this code won't compile.
    // string external externalVar = "my external variable";

}

contract B is Base {
    // Inherited contracts do not have access to private functions
    // and state variables.
    // function testPrivateFunc() public pure returns (string memory) {
    //     return privateFunc();
    // }

    // Internal function call be called inside child contracts.
    function testInternalFn() public pure override returns(string memory) {
        return internalFn();
    }
}