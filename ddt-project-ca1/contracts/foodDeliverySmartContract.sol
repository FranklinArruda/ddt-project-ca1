
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
        event foodOrdered(uint orderId);
        event foodDelivered(uint orderId);
        
        // place order with Ether
    function orderFood() external payable {
        orderIdCounter++;  // ensure that the order has a unique address
        uint orderId = orderIdCounter;
        orders[orderId] = true;  // indicate that the order with the ID exists since the default boolean is false
        emit foodDelivered(orderId);
}
    /*  this functions checks if the orderID is true, but not yet delivered. Meaning, if order ID is false will stop and consume gas. 
        IF order ID exists will proceed to not yet delived to be confirmed. 
    */
    function orderStatus(uint orderId) external  {
        require(orders[orderId]);
        require(!delivered[orderId]);
        delivered[orderId] = true;  // indicate that the order with the ID exists since the default boolean is false
        emit foodDelivered(orderId);
    }

        // this method is just for querying and check whether the food is delivered or not with provided ID.
    function isOrderDelivered(uint orderId) external view returns (bool) {
        return delivered[orderId]; // It retrieves the boolean value associated with the provided orderId from the mapping.
    }
}


