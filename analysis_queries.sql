-- Total Revenue
SELECT SUM(amount) AS total_revenue
FROM cleaned_data;

-- Revenue by City
SELECT city, SUM(amount) AS revenue
FROM cleaned_data
GROUP BY city;

-- Customer Count by City
SELECT city, COUNT(customer_id) AS total_customers
FROM cleaned_data
GROUP BY city;

-- Average Spending by Age
SELECT age, AVG(amount) AS avg_spending
FROM cleaned_data
GROUP BY age;

-- Purchase Count by Amount Category
SELECT amount_category, COUNT(*) AS purchase_count
FROM cleaned_data
GROUP BY amount_category;