/*
Which hour has the highest average order volume per day? Your output should have the hour which satisfies that condition, and average order volume.
*/

select * from postmates_orders;

-- Highest Volume
SELECT
    AVG(amount)
FROM postmates_orders
GROUP BY customer_id;
-- DATE_PART HOUR
SELECT
    DATE_TRUNC('hour', order_timestamp_utc)
FROM postmates_orders;

-- Hour with Highest Volume
SELECT
    DATE_TRUNC('hour', order_timestamp_utc) AS hour,
    AVG(amount) as avg_vol
FROM postmates_orders
GROUP BY customer_id,order_timestamp_utc
ORDER BY avg_vol DESC
LIMIT 1;
