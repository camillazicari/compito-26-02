USE Northwind

--1--
SELECT COUNT(*) as TotaleOrdini FROM Orders ;

--2--
SELECT COUNT(*) as TotaleClienti FROM Customers;

--3--
SELECT City, COUNT(*) as ClientiLondra FROM Customers WHERE City = 'London' GROUP BY City;

--4--
SELECT AVG(Freight)  as TotaleTrasporto FROM Orders;

--5--
SELECT CustomerID, AVG(Freight) as TotTrasportoBOTTM FROM Orders WHERE CustomerID = 'BOTTM' GROUP BY CustomerID ;

--6--
SELECT CustomerID, SUM(Freight) as TotTrasporto FROM Orders GROUP BY CustomerID;

--7--
SELECT City, COUNT(CustomerID) as TotClienti FROM Customers GROUP BY City;

--8--
SELECT OrderID ,SUM(UnitPrice * Quantity) as Tot FROM [Order Details] GROUP BY OrderID;

--9--
SELECT OrderID, SUM(UnitPrice * Quantity) as Tot FROM [Order Details] WHERE OrderID = 10248 GROUP BY OrderID;

--10--
SELECT CategoryID, COUNT(ProductId) as TotaleProdotti FROM Products GROUP BY CategoryID;

--11--
SELECT ShipCountry ,COUNT(OrderID) as NumeroOrdini FROM Orders GROUP BY ShipCountry;

--12--
SELECT ShipCountry, AVG(Freight) as MediaTrasporto FROM Orders GROUP BY ShipCountry;