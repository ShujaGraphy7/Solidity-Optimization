//SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract CallData{

    string i;
    function getSet(string memory x) public returns(string memory){
        i = x;
        return x;
    }
}

contract CallData2{

    string i;
    function getSet(string calldata x) public returns(string calldata){
        i = x;
        return x;
    }
}