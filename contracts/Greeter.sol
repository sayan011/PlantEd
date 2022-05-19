//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;


contract Greened{

    uint public  plant;
    address payable heroes;
    uint pool;
    event Planted(address indexed donorAddress, uint256 amount );
    mapping(address => uint256) public donors;
    address[] public donorsAddress;
    struct Donor{
        address donorsAddress;
        uint256 amount;
    }
    
    function plantAtree() public payable  {
      require(msg.value > 0, "Planted");
      require(msg.sender != address(this), "contract cannot make donation");
     
      pool += (msg.value);
      
      donors[msg.sender] += msg.value;
      donorsAddress.push(msg.sender);
      

      
      emit Planted(msg.sender, msg.value);
    }



}
