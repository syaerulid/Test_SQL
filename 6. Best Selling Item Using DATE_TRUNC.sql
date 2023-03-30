/*
Find the best selling item for each month (no need to separate months by year) where the biggest total invoice was paid. 
The best selling item is calculated using the formula (unitprice * quantity). Output the description of the item along with the amount paid.
*/

select * from online_retail;

-- MONTH
SELECT
    DATE_TRUNC('MONTH', invoicedate)
FROM online_retail;

-- BEST SELLING ITEM
SELECT
    DATE_TRUNC('MONTH', invoicedate) as month,
    MAX(unitprice * quantity) as best_selling
FROM online_retail
GROUP BY month
ORDER BY best_selling DESC;

-- Using Nested Query as Final Query
SELECT
    DATE_TRUNC('MONTH', invoicedate) as month,
    description, 
    MAX(unitprice * quantity) as best_selling
FROM online_retail
WHERE (unitprice * quantity) IN 
    (SELECT
        MAX(unitprice * quantity) as best_selling
    FROM online_retail
    GROUP BY DATE_TRUNC('MONTH', invoicedate)
    ORDER BY best_selling DESC)
GROUP BY month, description
ORDER BY best_selling DESC;
