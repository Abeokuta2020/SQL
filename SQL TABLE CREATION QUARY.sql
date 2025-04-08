use [EmadeDev]

--Create table Products
Drop Table if Exists Products
CREATE TABLE products (
 Product_Id INT,
 Product_Name VARCHAR(100),
 Brand VARCHAR(50),
 Category VARCHAR(50),
 Procurement_Cost_per_unit INT,
 Mrp INT
);

INSERT INTO products VALUES
(12345, 'HP XYZ Mouse', 'HP', 'mouse', 650, 1500),
(12346, 'HP 241H HP', 'laptop', 'HP', 45000, 80000),
(12347, 'HP 8GB Pendrive', 'HP', 'pendrive', 350, 800),
(12348, 'Dell ABC Mouse', 'Dell', 'mouse', 350, 1100),
(12349, 'Dell AX420', 'Dell', 'laptop', 30000, 75000),
(12350, 'Dell 8GB Pendrive', 'Dell', 'pendrive', 250, 850);

Select *
From Products

--create table Customers

Drop Table if Exists Customers
CREATE TABLE Customers (
    Cust_id INT,
    First_name VARCHAR(50),
    Last_name VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    Primary_pincode INT,
    Gender VARCHAR(10),
    Dob DATE,
    Joining_date DATE
);

INSERT INTO customers VALUES
(10000001, 'Rahul', 'Gupta', 'rahul.gupta@email.com', '8960722319', 110001, 'male', '1977-11-02', '2016-02-19'),
(10000002, 'Abhinav', 'Sharma', 'abhinav.sharma@gmail.com', '8987582863', 400001, 'male', '1995-09-26', '2018-10-12'),
(10000003, 'Anubhav', 'Patel', 'anubhav.patel@gmail.com', '8492146048', 560001, 'male', '1986-12-26', '2016-10-14'),
(10000004, 'Neha', 'Verma', 'neha.verma@gmail.com', '8631861914', 600001, 'female', '1986-01-20', '2017-05-05'),
(10000005, 'John', 'Bernard', 'john.bernard@gmail.com', '8215391844', 500001, 'male', '1980-02-12', '2019-03-13'),
(10000006, 'Muhammad', 'Ali', 'muhammad.ali@gmail.com', '8317878411', 700001, 'male', '1968-12-29', '2019-03-13'),
(10000007, 'Ahmed', 'Khan', 'ahmed.khan@gmail.com', '8279227825', 410001, 'male', '1999-01-14', '2018-07-13'),
(10000008, 'Paras', 'Rana', 'paras.rana@gmail.com', '8134672373', 400091, 'male', '1985-02-16', '2020-02-23'),
(10000009, 'Priyanka', 'Reddy', 'priyanka.reddy@yahoo.com', '8186127747', 560001, 'female', '1992-08-26', '2010-11-24'),
(10000010, 'Amit', 'Vikram', 'amit.vikram@yahoo.com', '8204474821', 600001, 'male', '1996-04-14', '2009-08-23'),
(10000011, 'Sandhya', 'Anwar', 'sandhya.anwar@outlook.com', '8701866147', 500001, 'female', '2002-11-11', '2010-04-12'),
(10000012, 'Robert', 'Smith', 'robert.smith@outlook.com', '8932312347', 710001, 'male', '1980-01-16', '2009-11-30'),
(10000013, 'Christina', 'Smith', 'christina.smith@outlook.com', '8861486811', 400001, 'female', '1980-01-16', '2008-08-29'),
(10000014, 'Amanpreet', 'Singh', 'amanpreet.singh@yahoo.com', '8151596539', 110001, 'male', '1980-03-10', '1980-03-10');

Select *
From Customers

--Create table DeliveryPerson

Drop Table if Exists DeliveryPerson
CREATE TABLE DeliveryPerson (
    Delivery_person_id INT,
    Name VARCHAR(100),
    Joining_date DATE,
    Pincode INT
);

INSERT INTO DeliveryPerson VALUES
(1000008, 'Indranoor Singh', '2007-03-08', 110001),
(1000002, 'Simon Williams', '2007-02-23', 400001),
(1000004, 'Anubhav Tyagi', '2007-11-16', 400001),
(1000006, 'Aviral Vats', '2007-11-16', 400001),
(1000009, 'Rocky Tiwari', '2007-11-16', 400001),
(1000003, 'Robert Langdon', '2007-07-18', 500001),
(1000001, 'Vivek Gandhi', '2007-03-13', 560001),
(1000010, 'Sanjay Krishnan', '2007-11-24', 600001),
(1000005, 'Saurabh Ganguly', '2007-10-01', 700001),
(1000007, 'Qutub Mohammad', '2007-10-01', 700001);

Select *
From  DeliveryPerson

--Create table Pincode

Drop Table if Exists Pincode
CREATE TABLE Pincode (
    Pincode INT,
    City VARCHAR(50),
    State VARCHAR(50)
);

INSERT INTO Pincode (Pincode, City, State) 
VALUES
(110001, 'New Delhi', 'New Delhi'),
(400001, 'Mumbai', 'Maharastra'),
(560001, 'Bangalore', 'Karnataka'),
(600001, 'Chennai', 'Tamil Nadu'),
(500001, 'Hyderabad', 'Telangana'),
(700001, 'Kolkata', 'West Bengal');

Select *
From Pincode

--Create table Orders

Drop Table if Exists Orders
CREATE TABLE Orders (
    Order_id INT,
    Order_type VARCHAR(10),
    Cust_id BIGINT,
    Order_date DATE,
    Delivery_date DATE,
    Tot_units INT,
    Displayed_selling_price_per_unit DECIMAL(10, 2),
    Total_amount_paid DECIMAL(12, 2),
    Product_id BIGINT,
    Delivery_person_id BIGINT,
    Payment_type VARCHAR(20),
    Delivery_pincode INT
);


Select *
From Orders

SELECT TOP (1000) [Order_id]
      ,[Order_type]
      ,[Cust_id]
      ,[Order_date]
      ,[Delivery_date]
      ,[Tot_units]
      ,[Displayed_selling_price_per_unit]
      ,[Total_amount_paid]
      ,[Product_id]
      ,[Delivery_person_id]
      ,[Payment_type]
      ,[Delivery_pincode]
  FROM [EmadeDev].[dbo].[Orders]