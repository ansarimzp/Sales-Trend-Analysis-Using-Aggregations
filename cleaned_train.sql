-- create database sales;
-- use sales;
-- Monthly Sales & Order Volume
SELECT
    EXTRACT(YEAR FROM STR_TO_DATE(`Order Date`, '%d-%m-%Y')) AS order_year,
    EXTRACT(MONTH FROM STR_TO_DATE(`Order Date`, '%d-%m-%Y')) AS order_month,
    SUM(Sales) AS monthly_revenue,
    COUNT(DISTINCT `Order ID`) AS order_volume
FROM
    sales.cleaned_train
GROUP BY
    order_year, order_month
ORDER BY
    order_year, order_month;
    
 -- Top 5 States by Total Sales
 SELECT
    State,
    SUM(Sales) AS total_sales
FROM
    sales.cleaned_train
GROUP BY
    State
ORDER BY
    total_sales DESC
LIMIT 5;

 -- Sales by Category and Sub-Category
 SELECT
    Category,
    `Sub-Category`,
    SUM(Sales) AS total_sales
FROM
    sales.cleaned_train
GROUP BY
    Category, `Sub-Category`
ORDER BY
    total_sales DESC;

 --  Top 5 Customers by Purchase Amount
 SELECT
    `Customer Name`,
    SUM(Sales) AS total_spent
FROM
    sales.cleaned_train
GROUP BY
    `Customer Name`
ORDER BY
    total_spent DESC
LIMIT 5;
-- Sales Trend by Region
SELECT
    Region,
    EXTRACT(YEAR FROM STR_TO_DATE(`Order Date`, '%d-%m-%Y')) AS order_year,
    EXTRACT(MONTH FROM STR_TO_DATE(`Order Date`, '%d-%m-%Y')) AS order_month,
    SUM(Sales) AS monthly_sales
FROM
    sales.cleaned_train
GROUP BY
    Region, order_year, order_month
ORDER BY
    Region, order_year, order_month;
    
--  Monthly Sales for a Specific Year 
SELECT
    EXTRACT(MONTH FROM STR_TO_DATE(`Order Date`, '%d-%m-%Y')) AS order_month,
    SUM(Sales) AS monthly_revenue
FROM
    sales.cleaned_train
WHERE
    EXTRACT(YEAR FROM STR_TO_DATE(`Order Date`, '%d-%m-%Y')) = 2023
GROUP BY
    order_month
ORDER BY
    order_month;
-- Identify Low-Performing Sub-Categories

SELECT
    `Sub-Category`,
    SUM(Sales) AS total_sales
FROM
    sales.cleaned_train
GROUP BY
    `Sub-Category`
ORDER BY
    total_sales ASC
LIMIT 5;
    
