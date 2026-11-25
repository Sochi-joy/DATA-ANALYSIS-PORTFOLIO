CREATE TABLE orders(
			 order_id VARCHAR(50),
			 order_date DATE,
			 customer_id VARCHAR(50),
			 customer_name VARCHAR(100),
			 city VARCHAR(100),
			 state VARCHAR(100),
			 country VARCHAR(100),
			 salesperson VARCHAR(100),
			 region VARCHAR(50),
			 ship_date DATE,
			 ship_country VARCHAR(100),
			 payment_type VARCHAR(50),
			 product_name VARCHAR(150),
			 category VARCHAR(100),
			 unit_price NUMERIC(10,2),
			 quantity INT,
			 revenue NUMERIC(12,2),
			 shipping_fee NUMERIC(10,2)
);

SELECT 
	  SUM(revenue) AS total_revenue,
	  COUNT(DISTINCT order_id) AS total_orders,
	  ROUND(AVG(revenue), 2) AS average_revenue
FROM orders;


SELECT
	  region,
	  SUM(revenue) AS total_revenue
	  FROM orders
	  GROUP BY region
	  ORDER BY total_revenue DESC;


SELECT
	  product_name,
	  SUM(revenue) AS total_revenue
	  FROM orders
	  GROUP BY product_name
	  ORDER BY total_revenue DESC;


SELECT
	  salesperson,
	  SUM(revenue) AS total_revenue
	  FROM orders
	  GROUP BY salesperson
	  ORDER BY total_revenue DESC;
	  

SELECT
	  category,
	  SUM(revenue) AS total_revenue
	  FROM orders
	  GROUP BY category
	  ORDER BY total_revenue DESC;



SELECT
	  payment_type,
	  SUM(revenue) AS total_revenue
	  FROM orders
	  GROUP BY payment_type
	  ORDER BY total_revenue DESC;
	  

SELECT
	  TO_CHAR(order_date, 'YYYY-MM') AS order_month,
	  SUM(revenue) AS total_revenue
	  FROM orders
	  GROUP BY TO_CHAR(order_date, 'YYYY-MM')
	  ORDER BY order_month

			