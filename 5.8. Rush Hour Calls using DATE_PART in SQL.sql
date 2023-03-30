/* Redfin helps clients to find agents. Each client will have a unique request_id and each request_id has several calls. 
For each request_id, the first call is an “initial call” and all the following calls are “update calls”. 
How many customers have called 3 or more times between 3 PM and 6 PM (initial and update calls combined)? */

select * from redfin_call_tracking;

--
SELECT 
    id,
    call_duration,
    DATE_PART('hour', created_on) AS hour
FROM redfin_call_tracking
WHERE 
    DATE_PART('hour', created_on) >= 15
    AND DATE_PART('hour', created_on) <= 18
    AND request_id >= 3;
