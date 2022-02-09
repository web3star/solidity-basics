// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract DataTypes {

    //Boolean
    bool public flag = false;

    /*
    uint stands for unsigned integer, meaning non negative integers
    of different sizes are available
        uint8   ranges from 0 to 2 ** 8 - 1
        uint16  ranges from 0 to 2 ** 16 - 1
        ...
        uint256 ranges from 0 to 2 ** 256 - 1
    */
    uint8 public uval = 2;
    uint256 public unum = 235;
    uint public uno = 143; // uint is an alias to uint256

    /*
    Negative numbers are allowed for int types.
    Like uint, different ranges are available from int8 to int256
    
    int256 ranges from -2 ** 255 to 2 ** 255 - 1
    int128 ranges from -2 ** 127 to 2 ** 127 - 1
    */

    int8 public ival = -6;
    int256 public inum = 325;
    int public ino = -232; // int is an alias to int256

    // minimum and maximum of int
    int public intMin = type(int).min;
    int public intMax = type(int).max;

    address public addrs = 0x5162AD66F88269602e915E5b494Dc340A55D07fE;

    /*
    In Solidity, the data type byte represent a sequence of bytes. 
    Solidity presents two type of bytes types :

     - fixed-sized byte arrays
     - dynamically-sized byte arrays.
     
     The term bytes in Solidity represents a dynamic array of bytes. 
     It’s a shorthand for byte[] .
    */
    bytes1 a = 0xb5; //  [10110101]
    bytes1 b = 0x56; //  [01010110]

    // Default values
    bool public boolDefault; // false
    uint public uintDefault; // 0
    int public intDefault; // 0
    address public addrDefault; // 0x0000000000000000000000000000000000000000
      
}