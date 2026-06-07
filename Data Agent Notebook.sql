-- Databricks notebook source
-- Total Sales Revenue
SELECT
    SUM(`Total Amount`) AS total_revenue
FROM retail.sales.dataset;

-- Sales by Gender
SELECT
    Gender,
    SUM(`Total Amount`) AS revenue
FROM retail.sales.dataset
GROUP BY Gender;

-- Sales by Product Category
SELECT
    `Product Category`,
    SUM(`Total Amount`) AS revenue
FROM retail.sales.dataset
GROUP BY `Product Category`
ORDER BY revenue DESC;
