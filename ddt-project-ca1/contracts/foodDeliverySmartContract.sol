// SPDX-License-Identifier: MIT
pragma solidity ^0.7.5;

/*
    Constructor that defines the attributes for the smart contract
    consisting in the following: 

    -Client Address
    -Costumer Id= Tracks the order
    -Boolean = Checks wether or not the order has been delivered successfully 
    -Custumer ID = Used to verify with the riders ID.If ID mataches the rider true, if not false, order won't be delived.
*/
contract FoodDelivery {
    
    struct Order {
        address customer;
        string itemName; 
        uint customerId; 
        bool delivered;
    }
}