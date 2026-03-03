-- Q1. What is the total number of orders in the dataset?
SELECT count(*) as total_orers 
FROM t1;

-- Q2. How many unique customers made purchases?
SELECT count( customer_id ) as total_unique_customer 
FROM t1;

-- Q3. What is the total revenue generated?
SELECT SUM(purchase_amount) AS total_revenue 
FROM t1;

-- Q4. What is the average purchase amount?
SELECT AVG(purchase_amount) AS avg_revenue 
FROM t1;

-- Q5. What are the unique product categories?
SELECT DISTINCT category  
FROM t1;

-- Q6. Which products are purchased the most?
SELECT item_purchased, count(item_purchased) as total_purchased
FROM t1
GROUP BY 1
ORDER BY 2 DESC;

-- Q7. Which colors are most frequently purchased?
SELECT color, count(color) as total_purchased
FROM t1
GROUP BY 1
ORDER BY 2 DESC;

-- Q8. Which sizes are most frequently purchased?
SELECT size, count(size)  as total_purchased
FROM t1
GROUP BY 1
ORDER BY 2 DESC;

-- Q9. Which seasons have the highest number of orders?
SELECT season, count(season)  as total_purchased
FROM t1
GROUP BY 1
ORDER BY 2 DESC;

-- Q10. Which seasons generate the most revenue?
SELECT season, SUM(purchase_amount) as total_revenue
FROM t1
GROUP BY 1
ORDER BY 2 DESC;

-- Q11. Which locations generate the most orders?
SELECT location, count(purchase_amount) as total_orders
FROM t1
GROUP BY 1
ORDER BY 2 DESC;

-- Q12. Which locations generate the most revenue?
SELECT location, sum(purchase_amount) as total_revenue
FROM t1
GROUP BY 1
ORDER BY 2 DESC;

-- Q13. What is the gender distribution of customers?
SELECT gender, COUNT(customer_id)  AS gender_distribution
FROM t1
GROUP BY 1;

-- Q14. What is the age distribution of customers?
SELECT age, COUNT(customer_id)  AS age_distribution
FROM t1
GROUP BY 1
ORDER BY 1;

-- Q15. What is the average review rating across all products?
SELECT ROUND(AVG(review_rating), 2) AS avg_review_rating
FROM t1;

-- Q16. Which products have the highest average rating?
SELECT item_purchased, ROUND(AVG(review_rating),2) AS highest_avg_rating
FROM t1
GROUP BY 1
ORDER BY 2 DESC;

-- Q17. Which products have the lowest average rating?
SELECT item_purchased, ROUND(AVG(review_rating),2) AS lowest_avg_review_rating
FROM t1
GROUP BY 1
ORDER BY 2 ASC;

-- Q18. Which categories have the highest average rating?
SELECT category, ROUND(AVG(review_rating),2) AS highesst_avg_review_rating
FROM t1
GROUP BY 1
ORDER BY 2 DESC;

-- Q19. Which categories generate the most revenue?
SELECT category, SUM(purchase_amount) AS total_revenue
FROM t1
GROUP BY 1
ORDER BY 2 DESC;

-- Q20. Which categories generate the most orders?
SELECT category, count(*) AS total_orders
FROM t1
GROUP BY 1
ORDER BY 2 DESC;

-- Q21. Which customers have made the highest number of purchases?
SELECT customer_id,
       COUNT(*) AS total_orders
FROM t1
GROUP BY customer_id
ORDER BY total_orders DESC;

-- Q22. Which customers have spent the most money overall (CLV)?
SELECT customer_id,
       SUM(purchase_amount) AS total_spent
FROM t1
GROUP BY customer_id
ORDER BY total_spent DESC;

-- Q23. Which customers have the highest average order value?
SELECT customer_id,
       ROUND(AVG(purchase_amount), 2) AS avg_order_value
FROM t1
GROUP BY customer_id
ORDER BY avg_order_value DESC;

-- Q24. Which customers buy the widest variety of categories?
SELECT customer_id,
       COUNT(DISTINCT category) AS unique_categories
FROM t1
GROUP BY customer_id
ORDER BY unique_categories DESC;

-- Q25. Which customers buy the widest variety of products?
SELECT customer_id,
       COUNT(DISTINCT item_purchased) AS unique_products
FROM t1
GROUP BY customer_id
ORDER BY unique_products DESC;

-- Q26. Which customers buy the widest variety of colors?
-- Q27. Which customers buy the widest variety of sizes?
-- Q28. Which customers always use discounts?
-- Q29. Which customers never use discounts?
-- Q30. Which customers give the highest average ratings?
-- Q31. Which customers give the lowest average ratings?
-- Q32. Which customers are “New”, “Returning”, or “Loyal” based on purchase count?
-- Q33. Which customers are high-value but low-frequency buyers?
-- Q34. Which customers are low-value but high-frequency buyers?
-- Q35. Which customers are discount-sensitive but profitable?
-- Q36. Which customers switch categories between purchases?
-- Q37. Which customers repeatedly buy the same product?
-- Q38. Which customers repeatedly buy the same category?
-- Q39. Which customers buy across multiple seasons?
-- Q40. Which customers prefer specific shipping types?
-- Q46. Which products are most popular among male customers?
-- Q47. Which products are most popular among female customers?
-- Q48. Which products are most popular among each age group?
-- Q49. Which products are most popular in each location?
-- Q50. Which products are most popular in each season?
-- Q51. Which categories have the highest discount usage?
-- Q52. Which categories have the lowest discount usage?
-- Q53. Which categories have the highest number of unique customers?
-- Q54. Which categories have the highest average purchase amount?
-- Q55. Which categories have the lowest average purchase amount?
-- Q56. Which categories have the highest average rating?
-- Q57. Which categories have the lowest average rating?
-- Q58. Which categories are most popular among each gender?
-- Q59. Which categories are most popular among each age group?
-- Q60. Which categories are most popular in each location?

-- Q61. What percentage of orders used discounts?
-- Q62. What percentage of revenue comes from discounted orders?
-- Q63. Which seasons have the highest discount usage?
-- Q64. Which locations use discounts the most?
-- Q65. Which genders use discounts the most?
-- Q66. Which age groups use discounts the most?
-- Q67. Do discounted orders have lower or higher average ratings?
-- Q68. Do discounted orders have lower or higher purchase amounts?
-- Q69. Do subscribed customers spend more than unsubscribed customers?
-- Q70. Do subscribed customers buy more frequently?
-- Q71. Which subscription status gives the highest ratings?
-- Q72. Which shipping type is used the most?
-- Q73. Which shipping type generates the most revenue?
-- Q74. Which shipping type has the highest average purchase amount?
-- Q75. Which shipping type has the highest average rating?
-- Q76. Which seasons have the highest average purchase amount?
-- Q77. Which seasons have the highest average rating?
-- Q78. Which seasons have the highest discount usage?
-- Q79. Which seasons have the highest number of unique customers?
-- Q80. Which seasons have the highest number of unique products purchased?

-- Q81. What are the top 3 products in each category using ranking?
-- Q82. What are the top 3 products in each season using ranking?
-- Q83. What are the top 3 products in each location using ranking?
-- Q84. What are the top 3 categories for each gender using ranking?
-- Q85. What are the top 3 categories for each age group using ranking?

-- Q86. What is the revenue rank of each customer?
-- Q87. What is the purchase frequency rank of each customer?
-- Q88. What is the revenue rank of each product?
-- Q89. What is the revenue rank of each category?
-- Q90. What is the average purchase amount per customer compared to the overall average?

-- Q91. Which product pairs are frequently bought together (self-join)?
-- Q92. Which customers bought the same product as other customers (self-join)?
-- Q93. Which customers bought the same category as other customers (self-join)?
-- Q94. Which customers share similar buying patterns (same color/size)?
-- Q95. Which customers have overlapping purchase behavior across seasons?

-- Q96. What is the probability of a customer using a discount based on category?
-- Q97. What is the probability of a customer giving a high rating based on product?
-- Q98. What is the probability of a customer buying again based on past frequency?
-- Q99. Which customers are most likely to churn (low frequency + low spend)?
-- Q100. Which customers are most likely to upgrade to subscription (high spend + frequent orders)?
