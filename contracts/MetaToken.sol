pragma solidity ^0.5.16;

contract MetaToken {

    string public name = "Meta Token";
    string public symbol = "META";
    uint public totalSupply;
    mapping(address => uint) public balanceOf;

    event Transfer(
        address indexed _from,
        address indexed _to,
        uint _value
    );

    constructor(uint _initialSupply) public{
        totalSupply = _initialSupply;
        balanceOf[msg.sender] = _initialSupply;
    }

    function transfer(address _to, uint _value) public returns (bool success){
        require(balanceOf[msg.sender] > _value);
        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;
        Transfer(msg.sender,_to,_value);
        return true;
    }
}