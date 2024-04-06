// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

//import "hardhat/console.sol";

contract Assessment {
    address payable public owner;
    uint256 public balance;
    bool public freeTshirt;

    constructor(uint initBalance) payable {
        owner = payable(msg.sender);
        balance = initBalance;
    }

    function getBalance() public view returns (uint256) {
        return balance;
    }
    function calculateGymCost(uint256 months) public payable{
        uint256 pricePerMonth = 50;
        balance =  pricePerMonth * months;
    }
    function tshirtEligibilty() public view returns (bool) {
        uint256 months = balance / 50;
        if (months >=3){
            return true;
        }
        else{
         return false;
        }
    }
}

