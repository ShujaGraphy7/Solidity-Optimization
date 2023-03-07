//SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

contract errors{
    address immutable isOwner;

    constructor(){
        isOwner = msg.sender;
    }
    uint8 x = 8;
    
    error Unauthorized(address caller);
    
    function checkOwner() public view returns(uint8){
        if(msg.sender != isOwner)
        {
            revert Unauthorized(msg.sender);
        }
            return x;
    }
}

contract errors2{
    address immutable isOwner;

    constructor(){
        isOwner = msg.sender;
    }
    uint8 x = 8;
    
    
    function checkOwner() public view returns(uint8){
        require(msg.sender == isOwner,"Unauthorized");
        return x;
    }
}