//SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract VariableStorage{
    uint32 a= 10;
    uint256 b= 10;
    uint32 c= 10;

    function getA() public view returns(uint32){
        return a;
    }

//      gas	189742 gas
//      transaction cost	164993 gas 
//      execution cost	164993 gas 
}

contract VariableStorage2{
    uint32 a= 10;
    uint32 c= 10;
    uint256 b= 10;

    function getA() public view returns(uint32){
        return a;
    }

//      gas	164615 gas
//      transaction cost	143143 gas 
//      execution cost	143143 gas 


}