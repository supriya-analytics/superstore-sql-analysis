
 CREATE table Superstore_sales(
       Order_Id VARCHAR (20),
	   Order_date DATE,
	   Ship_mode VARCHAR (30),
	   Region VARCHAR (20),
	   Category VARCHAR (30),
	   Price_per_Unit DECIMAL (10,2),
	   Quantity INT,
	   Sales DECIMAL (10,2),
	   Profit DECIMAL (10,2)
 );

 SELECT * FROM Superstore_Sales;

--Total Transaction--

 SELECT count(*)
 		FROM Superstore_sales;

--All orders from the East region--

 SELECT (*)
 		FROM Superstore_sales
		WHERE Region ='East';

-- All Orders where Sales > 50,000--

 SELECT *
   		FROM Superstore_sales
		WHERE sales > 10000;

--orders of Technology category with Profit > 5,000--

 SELECT *
 		FROM Superstore_Sales
		WHERE Category = 'Technology' AND profit > 5000;

--Top 10 highest sales orders--

 select * 
 		FROM Superstore_sales
		ORDER BY sales DESC
		LIMIT 10;

--Top 5 most profitable orders--

 SELECT *
 		FROM Superstore_sales
		ORDER BY Profit DESC
		LIMIT 5;

--Total Sales of the store--

 SELECT SUM (sales) AS Total_sales
 		FROM Superstore_sales;

----Avg profit of the store--

 SELECT AVG(Profit) AS Avg_Profit
  		FROM Superstore_sales;

--Maximum and Minimum Sales--

 SELECT MIN(Sales) AS Min_sales, 
        MAX (sales) AS Max_sales
        FROM Superstore_sales;

--Total Sales by Region--

 SELECT Region , SUM (Sales) AS Total_sales
 		FROM Superstore_sales
		GROUP BY Region;

--Total Profit by Category--

 SELECT Category, sum (Profit) AS Total_profit
 		FROM Superstore_sales
		GROUP BY Category;

--Average Sales per Ship Mode--

 SELECT Ship_mode, AVG (Sales) AS Avg_ship_mode
 		FROM Superstore_sales
		Group by Ship_mode;

--Regions where Total Sales > 5,00,000--

 SELECT Region, SUM (sales) AS Total_sales
 		FROM Superstore_sales
		GROUP BY Region
		HAVING SUM (sales) >500000;

--Categories where Average Profit > 10,000--

 SELECT Category, AVG (sales) AS Avg_profit
 		FROM Superstore_sales
		GROUP BY Category
		HAVING Avg(sales) >10000;

--sales between Jan 2023 and Mar 2023--

 SELECT *
 		FROM Superstore_Sales
		WHERE Order_date BETWEEN '2023-01-01' AND '2023-03-31';

--Monthly Sales for Feb 2024--

 SELECT SUM(Sales) AS Monthly_sales
 		FROM Superstore_sales
		WHERE Order_date BETWEEN '2024-02-01' AND '2024-02-29';



              -- THE END --













