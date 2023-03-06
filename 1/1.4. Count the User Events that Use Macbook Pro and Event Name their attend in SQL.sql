select * from playbook_events;

-- COUNT the USER EVENTS
SELECT COUNT(user_id)
FROM playbook_events;

-- COUNT THE USER EVENTS that used macbook pro
SELECT COUNT(user_id)
FROM playbook_events
WHERE device = 'macbook pro';

-- EVENT_NAME
SELECT event_name, COUNT(user_id) as event_count
FROM playbook_events
WHERE device = 'macbook pro'
GROUP BY event_name;
