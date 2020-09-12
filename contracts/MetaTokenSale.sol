pragma solidity ^0.5.16;

import "../MetaToke.sol";

contract MetaTokenSale {
    address private admin;
    MetaToken public tokenContract;
    uint public tokenPrice;

    constructor(MetaToken _tokenContract, uint _tokenPrice) public {
        admin = msg.sender;
        tokenContract = _tokenContract;
        tokenPrice = _tokenPrice;
    }
}