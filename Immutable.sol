//SPDX-License-Identifier: MIT

pragma solidity 0.8.17;
contract Immutable{
    uint a;
    constructor(){
        a=10;
    }

//      gas	102691 gas
//      transaction cost	89296 gas 
//      execution cost	89296 gas 

}


contract Immutable2{
    uint immutable a;
    constructor(){
        a=10;
    }
//      gas	77469 gas
//      transaction cost	67364 gas 
//      execution cost	67364 gas 
}