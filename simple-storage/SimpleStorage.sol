pragma solidity ^0.4.0;

contract SimpleStorage {
    uint storedData;
    address owner;
    
    function SimpleStorage() public {
        owner = msg.sender;
    }
    
    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }
    
    function set(uint i) public onlyOwner {
        storedData = i;
    }
    
    function get() public constant returns (uint) {
        return storedData;
    }
}