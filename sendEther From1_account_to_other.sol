pragma solidity ^0.8.0;

contract Wallet
{
    address payable public owner;
    
    address payable public _owner=payable(msg.sender);
    
    event Withdraw(uint256 amount,uint256 balance);
    
    constructor () public payable{
        owner=_owner;
    }
    
    modifier onlyOwner(){
        require(msg.sender==owner,"Not owner");
        _;
    }
    
    function withdraw(uint256 _amount) public payable onlyOwner {
        owner.transfer(_amount);
        emit Withdraw(_amount,address(this).balance);
    }
}