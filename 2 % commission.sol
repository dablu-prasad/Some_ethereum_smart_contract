pragma solidity ^0.8.0;

contract Percentage
{
    address payable public owner;
    uint256  public _agent;
    
    event Transfer(address _to,uint256 _value);
    
    constructor() payable public
    {
        owner=payable(msg.sender);
    }
    
    function transfer(address payable _agentPer,address payable _to,uint256 _value) public
    {
        _agent=_value*2/100;
        
        _agentPer.transfer(_agent);
        _to.transfer(_value);
        emit Transfer(_to,_value);
    }
    
    
}