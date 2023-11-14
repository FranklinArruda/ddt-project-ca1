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

   // Mapping to associate each order ID with its corresponding Order struct
    mapping(uint => Order) public orders;
    uint public orderCount; // public variable that counts the number of orders placed by the customer and keep track of them
}


/*
     Code STRUCTURE to rememeber logic based on the smart contract proposal

    Create an event as to when a new order is places
    Another to show when order is delivered
    Function to crate a new order
    Function to mark order delivered
    Function to verify whether or not order is delived using id etc.
*/