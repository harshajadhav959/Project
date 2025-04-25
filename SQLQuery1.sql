SELECT * FROM BlinkIT_Grocery_Data

--cleaning the data 
UPDATE BlinkIT_Grocery_Data 
SET Item_Fat_Content = 
CASE 
WHEN Item_Fat_Content IN ('LF' , 'low fat') THEN 'Low Fat'
WHEN Item_Fat_Content = 'reg' THEN 'Regular'
ELSE Item_Fat_Content
END

--Total Sale
SELECT SUM( Total_sales)  AS Total_Sales
FROM BlinkIT_Grocery_Data

--Average Sale
SELECT CAST(AVG(Total_Sales) AS INT) AS Avg_Sales
FROM BlinkIT_Grocery_Data;

--NO OF ITEMS
SELECT COUNT(*) AS No_of_Orders
FROM BlinkIT_Grocery_Data;














