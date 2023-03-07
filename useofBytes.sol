//SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract useOfBytes{

    string x;

    function getName(string memory i) public {
        x = i;
    }
}


contract useOfBytes2{
    bytes32 x;
    function getName(bytes32 i) public{
        x = i;
    }
}