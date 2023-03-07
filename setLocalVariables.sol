//SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract setLocalVariables{
    uint256 length = 10;

    // deploying Gas Cost
//      gas	151606 gas
//      transaction cost	131831 gas 
//      execution cost	131831 gas 

    function loop() public {
    for (uint256 i = 0; i < length; i++) {
        // do something here
//              gas	29976 gas
//              transaction cost	26066 gas 
//              execution cost	26066 gas 
        }
    }
}

contract setLocalVariables2{
    uint256 length = 10;

//      deploying Gas Cost
//      gas	152848 gas
//      transaction cost	132911 gas 
//      execution cost	132911 gas 
    function loop() public {
        uint256 l = length;
    for (uint256 i = 0; i < l; i++) {
        // do something here
//              gas	28841 gas
//              transaction cost	25079 gas 
//              execution cost	25079 gas 
        }
    }
}
