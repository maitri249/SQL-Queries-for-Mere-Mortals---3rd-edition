--Chpt 5
--Sales Order database

--1. Adjusted price reduce by 5%
select ProductNumber, WholeSalePrice, (WholesalePrice - 0.05*WholesalePrice) as Reduced_Price
from mt_Order_Details

--2. List of orders for each customer in descening date order
select CustomerID, OrderNumber, OrderDate
from mt_Orders
order by 1 asc, 3 desc

--3. Vendor name, address in vendor name order
select VendName, CAST(VendStreetAddress + '' + VendCity + '' + VendState + '' + VendZipCode AS CHARACTER) as VendAddress
from mt_Vendors
order by Vendname

--Entertainment Agency Database

--1. Names of all customers by city
select CustFirstName + '' + CustLastName as Cutomer_Name, CustCity
from mt_Customers
order by 2 asc

--2. All entertainers and their website
select EntertainerID, EntStageName, EntWebPage 
from mt_Entertainers
order by 1

--3. Date of each entertainer's first 6 month performance review
select  AgentID, CONCAT(Agtfrstname, '', AgtLastName) AS AgtName, DateHired, DATEADD(DateHired, INTERVAL 180 day) AS FirstReview
from mt_Agents


--School Scheduling Database

--1. List of staff members and show them in descending order of salary
select CONCAT(StfFirstName, ' ', StfLastName) as StaffName, Salary 
from Staff
order by 2 desc

--2. Staff member phone list
select CONCAT(StfFirstName, ' ', StfLastName) as StaffName, StfPhoneNumber 
from Staff
order by 1 

--3. Name of all students, order by city they live in
select CONCAT(StudFirstName, ' ', StudLastName) as StudentName, StudCity
from Students
order by 2 asc, 1 asc

-- Bowling League Database

--1. Next year's tournament date for each tournament location
select TourneyLocation, TourneyDate, DATEADD(TournetDate, INTERVAL 365 Day) AS NextYearTourneyDate
from mt_Tournaments


--2. Name and phone number of each memmber of the league
select bowlerId, CONCAT(BowlerLastName, ' ' , BowlerFirstName) as BowlerName, BowlerPhoneNumber
from mt_Bowlers
order by 1

--3. Listing of each team's lineup
select teamid, bowlerId, CONCAT(BowlerLastName, ' ' , BowlerFirstName) as BowlerName
from Bowlers
order by 1,2

