# DDT Project CA1 

##Food Delivery System walkthrough

###Overview
The Food Delivery Smart Contract is a decentralized application (DApp) built on the Ethereum blockchain. It manages the ordering and delivery of food using Ethereum's smart contract functionality.

###Contract Features

The first line represents the compiler version of this project, the line below represents the smart contract name that wraps up the whole code.
The uint orderIdCounter represents the unique ID of the order that keeps tracks of it used in order food.

1-Order placement: Users can place food orders by sending Ether to the smart contract. Each order is assigned a unique order ID.
2-Order Tracking: The contract maintains a mapping to track the status of each order. The orders mapping keeps track of placed orders, and the delivered mapping tracks whether an order has been delivered.

The mappings represents the storage of both orders and delivered orders histories with a boolean key value for true and false.

3-Events: The contract emits events (foodOrdered and foodDelivered) to notify the network when an order is placed or delivered. These events provide transparency and can be seen on the Ethereum blockchain.

Two events that communicate with the functions order orderFood and markFoodDelivered whenever is clicked an events for that function is communicated. Useful to when
the application is fully deployed.

###Functions

'orderFood()'
OrderFood Function set to external and payable since the order is being placed and interacting in this case with the user and payable that works to make transaction with an external contract which in this case is the Ganache. It has order counter increment and a orders validATION set to true to implement the counter when order is placed, they work at the same time, then the event that communicate when orders is placed. 

'orderStatus(uint orderId)'
The orderStatus Function that also has a parameter for ordeID and set to external to interact with the user. The require represents the checking conditions: if order ID is true then proceed, and if the delivered is not yet happaned, then proceeds if these two conditons are met, if not it wont work. Last, if all works fine, I put an event for the deliveredorder communicate the order being delivered.

'isOrderDelivered(uint orderId)'
isOrderDelivered Function that carries a parameter for the order ID to interact with and set to external also to be accessible for the user but there is the view keyword that is for read only and it doesnt affect in the functionality of the function or the code because it is used for querying data only, then it returns a boolean for true or false that looks up the mapping delived orderId in the parameter to check wether or not the food already been there in the mapping is true, then food delivered.


