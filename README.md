[![Open in Visual Studio Code](https://classroom.github.com/assets/open-in-vscode-c66648af7eb3fe8bc4f294546bfd86ef473780cde1dea487d3c4ff354943c9ae.svg)](https://classroom.github.com/online_ide?assignment_repo_id=8273679&assignment_repo_type=AssignmentRepo)

# Python Project Pacmann - Super Cashier!
**This is a part or journey of the Pacmann bootcamp**

<p align="center">
  <img src="JPEG/Header.png" width=800 align="center">
</p>
<h1 align="center">Hi Mate👋, I am Rahmad Gunawan 
from SDE Batch 01 Pacmann</h1>
<h3 align="center">Python Project I </h3>

By [Rahmad Gunawan](https://www.linkedin.com/in/ragunnn/)
## Dashboard
<p align="center">
  <a href="https://youtu.be/Uycz73DydLM">
    <img src="https://www.logo.wine/a/logo/YouTube/YouTube-Logo.wine.svg" alt="Youtube Logo" width="120" height="120">
    <br>
    <b>Youtube Presentation</b>
  </a>
</p>

<center><h2><b>Super Cashier!</b></h2></center>
<p align="center">Super Cashier! is a simple app system that allows customers to input purchased items, quantity, and price. Additionally, it offers other features like payment options and remote purchasing.</p>

## Introduction

The project is to create a self-service checkout system for Andi's large supermarket in Indonesia. The system will allow customers to input purchased items, quantity, and price. Other features like payment options and remote purchasing will be developed. The challenge is finding a programmer to develop the system to meet the supermarket's needs.

## Feature Requirements
---
    - Customer creates a transaction ID by creating an object from the "transaction()" function.
    - Customer inputs the name of the item, quantity, and price of the product by using the "add_item()" method.
    - Customer can update the name, quantity, or price of an item using the "update_item_name()", "update_item_qty()", 
    or "update_item_price()" methods.
    - Customer can delete an item using the "delete_item()" method.
    - Customer can reset the entire transaction by using the "reset_transaction()" method.
    - Customer can check their order using the "check_order()" method, which will return a message indicating 
    if there are any errors in the input data and output the purchased items.
    - Customer can check the total cost of their purchase using the "check_out()" method, which will apply 
    discounts based on the total price and save the transaction data into an SQLite database.
    - The transaction data saved into the database will include the transaction ID, item name, quantity, price, 
    total price, discount, and discounted price.
    - Additional features can be added as needed to improve the system.

 ## Here's how to use the program:
   
    - Download all Python files/modules into a local directory.
    - Open your terminal and navigate to the local directory.
    - Run the Python script by typing "python script.py" in the terminal.
    - Follow the prompts to input your order details.
    - Enjoy using the program!

 ## Program Flow

  <p align="center">
  <img src="JPEG/Flowchart.png" width=700 align="center">
  
 </p>

    1. The first step is to import libraries: 'sqlite3'.
      Then, we establish a connection to a SQLite database called 'cashier.db' and check if the 'transaction' 
      table exists. If it doesn't exist, we create the table with the same name.

 <p align="center">
  <img src="JPEG/Step_1.png" width=700 align="center">
  
 </p>

    2. Next, we create a class called Transaction that contains several methods:
     To simplify the Transaction class, we will divide its functions into four categories
 <p align="center">
  Create a class named Transaction to define all functions.
 </p>
 <p align="center">
  <img src="JPEG/Step_2.png" width=700 align="center">
 </p>

    A. Update Function: The 'update_item_name()', 'update_item_qty()', and 'update_item_price()' methods are used 
    to update the name, quantity, and price of an item respectively. These functions take in the item name, 
    quantity, and price as arguments, and update the corresponding attributes of the item.

        Definition : 
        - The 'init()' method is used to initialize an object of the class. In this method, 
          we initialize the 'items' attribute as an empty list.
        - The 'add_item()' method is used to add an item to the 'items' list.
        - The 'update_item_name()' method is used to update the name of an item.
        - The 'update_item_qty()' method is used to update the quantity of an item.
        - The 'update_item_price()' method is used to update the price of an item.

 <p align="center">
  Delete - Reset - Function
 </p>

 <p align="center">
  <img src="JPEG/Step_3.png" width=700 align="center">
 </p>

     B. Delete-Reset Function: The 'delete_item()' method is used to delete an item from the 'items' list, 
      and the 'reset_transaction()' method is used to reset the transaction by clearing the 'items' list.

        - The 'delete_item()' method is used to delete an item from the 'items' list.
        - The 'reset_transaction()' method is used to reset the transaction by clearing the 'items' list.

 <p align="center">
  Check-order/out Function
 </p>
 <p align="center">
  <img src="JPEG/Step_4.png" width=700 align="center">
 </p>

    C. Check-order/out Function: 
        -  The 'check_order()' method is used to check the order. If there is an error in the input data, 
        it will return an error message. If there is no error, it will return a success message.
        - The 'check_out()' method is used to calculate the total price and discount given. The total price 
        and discount are calculated based on the total price of the items that have been inputted.
         A discount is given if the total price is greater than 200000, 300000, or 500000.

 <p align="center">
  Print Transaction - Insert Table Function
 </p>
 <p align="center">
  <img src="JPEG/Step_5.png" width=700 align="center">
 </p>

    D. Print Transaction Function and Insert to Table: The 'print_transaction()' method is used to print the 
    transaction to the screen in a table format. It displays the item name, quantity, price, total price, 
    discount, and price after discount for each item in the transaction.
      - The 'print_transaction()' method is used to print the transaction to the screen in a table format.
      - The 'insert_to_table()' method is used to save the transaction to the 'transaction' table in the SQLite database. 
      In this method, each item that has been inputted will be saved to the 'transaction' table along with the quantity of the item, the item price, the total price, the discount, and the price after the discount.

 <p align="center">
  Output App
 </p>
 <p align="center">
  <img src="JPEG/Output4.png" width=500 align="center">
 </p>
 
      5. By using these functions, we can easily update, delete, check out, and print the transaction. To create a Transaction object, we can simply call the constructor: 'transaksi = Transaction()

      After creating the Transaction class, we can initialize an object by calling the class constructor: 
      'transaksi = Transaction()'. 
      We can then perform various operations on the 'transaksi' object, such as adding an item, updating the name of an item, 
      updating the quantity of an item, updating the price of an item, deleting an item, resetting the transaction, checking the 
      order, calculating the total price and discount, printing the transaction, and saving the transaction to the database.

## Outcome Project
    The output of the app is a transaction order that shows the list of items, quantities, prices, and the total price 
    of the order after the discount has been applied.

    The first step is to input the data related to the item name, quantity, and price. 
    Then, there will be an option to add more items or not. If yes, you can add additional items. 
    
 <p align="center">
  Input Item Orders , Qty and Price
 </p>
 <p align="center">
  <img src="JPEG/Output1.png" width=400 align="center">
 </p>
    
    If not, there will be a question whether you want to modify/delete the items. 
    If you choose to modify/delete the items, you can input the item number and choose the option to delete the item, 
    change the item name, quantity or price.

 <p align="center">
  Modify/Delete the items
 </p>
 <p align="center">
  <img src="JPEG/Output2.png" width=500 align="center">
 </p>
    
  <p align="center">
  The item/order has been updated or deleted.
 </p>
 <p align="center">
  <img src="JPEG/Output3.png" width=500 align="center">
 </p>

    After that, your order will be confirmed whether it is correct or not. If it is not correct, you can reset your order. 
    If it is correct, the next step is to print the transaction result. However, before printing the transaction, 

  <p align="center">
  Final Output Print Transaction and the data will be saved to the database.
 </p>
 <p align="center">
  <img src="JPEG/Output4.png" width=500 align="center">
 </p>

    it will be checked whether the input format is correct or not. If it is correct, 
    it will print the message "order is correct" and print the transaction data along with the total price of the order.

## Test Case
      In this stage, the app will be tested to generate output that meets the given requirements.
      
      Test 1
      - "Customers want to add two new items using the add_item() method. The items to be added are as follows:
      - Item Name: Fried Chicken, Qty: 2, Price: 20000
      - Item Name: Toothpaste, Qty: 3, Price: 15000"

  <p align="center">
  Expected Output Test 1
 </p>
 <p align="center">
  <img src="JPEG/ExpectedOT1.png" width=400 align="center">
 </p>

 
  <p align="center">
  Result Test 1 (Pass)
 </p>
 <p align="center">
  <img src="JPEG/Result1.png" width=400 align="center">
 </p>
    

      Test 2
      - Turns out the Customer made a mistake in purchasing one of the items from the added items, so the 
      - Customer uses the delete_item() method to remove the item. The item that the Customer wants to remove is Pasta Gigi.

  <p align="center">
  Expected Output Test 2
 </p>
 <p align="center">
  <img src="JPEG/ExpectedOT2.png" width=400 align="center">
 </p>

  <p align="center">
  Result Test 2 (Pass)
 </p>
 <p align="center">
  <img src="JPEG/Result2.png" width=400 align="center">
 </p>

      Test 3
      - After further consideration, the Customer realizes that they have inputted the wrong items to be purchased! Instead of 
      - deleting them one by one, the Customer simply uses the reset_transaction() method to remove all the items that have been added."

  <p align="center">
  Expected Output Test 3
 </p>
 <p align="center">
  <img src="JPEG/ExpectedOT3.png" width=400 align="center">
 </p>

  <p align="center">
  Result Test 3 (Pass)
 </p>
 <p align="center">
  <img src="JPEG/Result3.png" width=400 align="center">
 </p>

      Test 4
      - After finishing the shopping, the Customer will calculate the total amount to be paid using the method check_out()
      - Before displaying the total amount, the items purchased will be displayed.

  <p align="center">
  Expected Output Test 4
 </p>
 <p align="center">
  <img src="JPEG/ExpectedOT4.png" width=400 align="center">
 </p>

  <p align="center">
  Result Test 4 (Pass)
 </p>
 <p align="center">
  <img src="JPEG/Result4.png" width=400 align="center">
 </p>

## Developed By
1. [Rahmad Gunawan, Linkedin (Link)](https://www.linkedin.com/in/ragunnn/)

      This is the result of my work, but I believe there is still room for improvement in this project. If you have any suggestions or would like to connect with me, feel free to do so. I greatly appreciate you taking the time to review my work. Together, we can create something even better!

<p align="center">
  <img src="JPEG/Thanks.jpg" width=400 align="center">
  
</p>
