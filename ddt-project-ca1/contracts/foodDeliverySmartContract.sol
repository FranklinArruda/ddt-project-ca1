
// SPDX-License-Identifier: MIT
pragma solidity ^0.7.5; // version of the compiler

contract FoodDeliveryContract { // smart contract name, works like a class same as java
    
    uint public  orderIdCounter; // order ID counter to keep track of orders
        
        //  The mapping is essentially used here as a storage mechanism to keep track of the delivery status for each order.
        // it is just storage to keep track of orders history and delivery history check
        mapping(uint => bool) public orders;
        mapping(uint => bool) public  delivered;
        
        // events that communicates when either the order is placed or received. 
        // I create just for completeness as in a real world Ethereum network we could see them.
        event FoodOrdered(uint orderId);
        
        // place order with Ether
    function orderFood() external payable {
    orderIdCounter++;  // ensure that the order has a unique address
    uint orderId = orderIdCounter;
    orders[orderId] = true;  // indicate that the order with the ID exists since the default boolean is false
    emit FoodOrdered(orderId);
}

}


/*
    Code STRUCTURE to rememeber logic based on the smart contract proposal

    Create an event as to when a new order is places
    Another to show when order is delivered
    Function to crate a new order
    Function to mark order delivered
    Function to verify whether or not order is delived using id etc.
*/