[![Open in Visual Studio Code](https://classroom.github.com/assets/open-in-vscode-c66648af7eb3fe8bc4f294546bfd86ef473780cde1dea487d3c4ff354943c9ae.svg)](https://classroom.github.com/online_ide?assignment_repo_id=8273679&assignment_repo_type=AssignmentRepo)

# Pacmann - Relational Database & SQL Project!
**This is a part or journey of the Pacmann Bootcamp**

<p align="center">
  <img src="JPEG/Header.jpg" width=800 align="center">
</p>
<h1 align="center">Hi Mate👋, I am Rahmad Gunawan 
from SDE Batch 01 Pacmann</h1>
<h3 align="center">Relational Database & SQL Project</h3>

By [Rahmad Gunawan](https://www.linkedin.com/in/ragunnn/)
## Dashboard
<p align="center">
  <a href="https://youtu.be/Uycz73DydLM">
    <img src="https://www.logo.wine/a/logo/YouTube/YouTube-Logo.wine.svg" alt="Youtube Logo" width="120" height="120">
    <br>
    <b>Youtube Presentation</b>
  </a>
</p>

<center><h2><b>Relational Database & SQL Project!</b></h2></center>
<p align="center">Creating an ERD for a used car marketplace database to inform the data model and drawing insights from the data to understand the marketplace better</p>

## Project Overview: Used Car Marketplace Database

This project aims to create an entity-relationship diagram (ERD) for a used car marketplace database. The ERD will serve as the foundation for the database schema and will be used to inform the creation of the data model. In addition, insights will be drawn from the data to better understand the used car marketplace and inform future business decisions.

The database will include tables for cars, sellers, buyers, transactions, and bidding history. The cars table will contain information such as the make, model, year, price, and location of the car. The sellers table will include information such as the seller's name, contact information, and the cars they have for sale. The buyers table will contain information such as the buyer's name and contact information. The transactions table will include information such as the sale price, date, and payment method. Finally, the bidding history table will contain information about the bidding history of each car.

The insights drawn from the data will include patterns in car sales, popular models and makes, and average prices. This information can be used to better understand the used car marketplace and inform future business decisions such as pricing strategies, marketing campaigns, and inventory management.

Overall, this project aims to create a robust database schema and use the data to draw insights that can inform business decisions for a used car marketplace.

## Feature Requirements
---
    - User Profile: The application should allow users to offer more than one used car for sale. Before selling, 
    users must complete their personal information, including name, contact information, and location.
    - Product Listings: Users can post their car for sale on the platform, and the listing should include product details 
    such as make, model, body type, transmission type, and year of manufacture. Optional information like color and mileage can also be added.
    - Search Functionality: Users can search for available cars based on the seller's location, make, and body type
    - Bidding Feature: If the seller allows the bidding feature, potential buyers can make a bid on the product.
    - Ad Display: The platform should display ads with product information, titles, and seller contacts.
    - Entity-Relationship Diagram (ERD): The project should include the creation of an ERD for the database schema.
    - Insights: The project should involve drawing insights from the data to understand the used car marketplace better.
    - Scope: The project should not include developing a payment or transaction system since the transactions for 
    purchasing a car will be conducted outside of the platform.

 ## Here's how to use the program:
   
    - Download the SQL files and Table_Design script to your local directory.
    - Open your preferred SQL client and navigate to the local directory.
    - Run the Table_Design script to create the table schema by executing the DDL commands.
    - Use the faker library to generate data that matches the table schema by running the Jupyter notebook file that contains the data input code.
    - Once you have generated the necessary data, run the Transactional Query and Analytical Query scripts to extract insights from the data.
    - Follow the prompts in the scripts to input the required details for the queries.
    - Enjoy analyzing the data and gaining insights from the project!

 ## ERD Table Design

  <p align="center">
  <img src="JPEG/ERD.png" width=700 align="center">
  
 </p>
 
 ## Designing The Database:
    
    - Identify the entities: We have identified seven entities: Location, Product, User_seller, User_buyer, Bid_buyer, Advertisement, and Interest.
    - Create tables: We will create tables for each entity, following the data structure provided for each entity.
    - Define primary keys: For each table, we will define a primary key. The primary key uniquely identifies each row in the table.
    - Define foreign keys: We will define foreign keys in tables where one table needs to reference another table. For example,
     the User_seller and User_buyer tables have a foreign key referencing the Location table.
    - Define table relationships: We will define the relationships between tables based on the data structure. For example, the Product table 
    has a one-to-many relationship with the Advertisement and Bid_buyer tables, and the User_buyer table has a one-to-many relationship with 
    the Bid_buyer and Interest tables.
    - Implement table constraints: We will implement constraints to ensure data integrity, such as requiring non-null values for certain columns.
    - Populate the database: We can now populate the database with data.

Following these steps, we can create a functional relational database based on the given data.

- The system contains a list of 7 objects that require representation in the database. These objects include Location, 
- Product, User_seller, User_buyer, Bid_buyer, Advertisement, and Interest.

Based on the identified objects, I created table structures for each object. For each table, I determined the required columns and their respective data types. I also specified primary keys and foreign keys as necessary. The table structures that I created are as follows:

    - Location table: includes columns for location_id (primary key), city, latitude, and longitude.
    - Product table: includes columns for product_id (primary key), brand, model, body_type, transmission, and year.
    - User_seller table: includes columns for user_id (primary key), name, contact, and location_id.
    - User_buyer table: includes columns for user_id (primary key), name, contact, and location_id.
    - Bid_buyer table: includes columns for bid_buyer_id (primary key), user_id_buyer, product_id, bid_price, and date_created.
    - Advertisement table: includes columns for ad_id (primary key), product_id, user_id, title, description, price_sell, and date_created.
    - Interest table: includes columns for interest_id (primary key), user_id_buyer, product_id, location_id, and date_created.

## Implementing The Design.
    
      The implementation of the database design involves creating seven tables, each corresponding to one of the objects. 
      - The first table is called dim_location, which contains information about the location of the products, sellers, and buyers. 
      This table has columns for location_id, city, latitude, and longitude.
      - The second table is dim_user_seller, which contains information about the sellers. This table has columns for user_id, 
      name, contact, and location_id, where location_id is a foreign key that references the location table.
      - The third table is dim_product, which contains information about the products. This table has columns for product_id, 
      brand, model, body_type, transmission, and year.

 <p align="center">
  <img src="JPEG/ERD1.png" width=700 align="center">
  
 </p>

    - The fourth table is dim_user_buyer, which contains information about the buyers. This table has columns 
    for user_id, name, contact, and location_id, where location_id is a foreign key that references the location table.
    - The fifth table is dim_bid_buyer, which contains information about the bids made by buyers. 
    This table has columns for bid_buyer_id, user_id_buyer (a foreign key that references the buyer table), 
    product_id (a foreign key that references the product table), bid_price, and date_created.
    - The sixth table is fact_advertisement, which contains information about the advertisements created by 
    the sellers. This table has columns for ad_id, product_id (a foreign key that references the product table), 
    user_id  (a foreign key that references the seller table), title, description, price_sell, and date_created.
    - The seventh table is fact_interest, which contains information about the interests of the buyers 
    in the products. This table has columns for interest_id, user_id_buyer (a foreign key that references 
    the buyer table), product_id  (a foreign key that references the product table), location_id 
    (a foreign key that references the location table), and date_created.

 <p align="center">
  Create a class named Transaction to define all functions.
 </p>
 <p align="center">
  <img src="JPEG/ERD2.png" width=700 align="center">
 </p>

    Overall, this implementation provides a well-structured database that is easy to query and analyze. 
    It also ensures that the data is properly organized and related to each other through the use of foreign keys.

## Populating the database

    The first step in populating the database is to insert the provided data for the dim_location and dim_product 
    tables, which are in CSV format. We can use the script below to insert the data. Once the data is available, 
    we will generate additional data using Faker.

 <p align="center">
  Insert Data dim_location and dim_product
 </p>

 <p align="center">
  <img src="JPEG/Copy_data.png" width=700 align="center">
 </p>

## Generate Data using Faker
     The next step is to generate data using faker. The entire data that needs to be generated is 
     already provided in a Jupyter notebook file, which just needs to be executed. The notebook file 
     is located in the ipynb folder. The following steps will be taken:

 <p align="center">
  Importing Modules and Establishing Connection to PostgreSQL using Psycopg2
 </p>
 <p align="center">
  <img src="JPEG/JP1.png" width=700 align="center">
 </p>

    - This Python code snippet imports the psycopg2, random, time, and Faker modules to connect to a PostgreSQL 
    database and generate fake data using the id_ID locale. The psycopg2 library is used to establish a connection 
    to the database by specifying the host name, port number, database name, username, and password.
    
    Once the connection is established, a cursor object cur is created to execute SQL commands on the connected 
    database. The cursor object is used to send queries and retrieve results from the database.

 <p align="center">
  Print Transaction - Insert Table Function
 </p>
 <p align="center">
  <img src="JPEG/JP2.png" width=700 align="center">
 </p>

    - The code snippet inserts fabricated data into two tables, dim_user_seller and dim_user_buyer, within 
    a PostgreSQL database. A pre-defined list of location IDs is utilized to produce random locations for both 
    sellers and buyers. The code employs a for loop to produce 100 counterfeit records for each table.
    
    Inside the loop, the fake.name() and fake.phone_number() functions are invoked to create random names 
    and phone numbers, respectively. The random.choice() function is used to randomly choose a location ID 
    from the pre-defined list.
    
    The fake data is then inserted into the dim_user_seller and dim_user_buyer tables using the cur.execute() function. 
    The conn.commit() function is called after each iteration of the loop to save the alterations to the database.

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
