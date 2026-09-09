/* # Calculate Average Session Duration

## Problem Statement

The `user_activity` table records user activities during different sessions.

- `login` represents the beginning of a session.
- `logout` represents the end of a session.
- Each session belongs to a user and is identified by `session_id`.

Write a SQL query to calculate the average session duration for each user.

The session duration is calculated as:

`logout timestamp - login timestamp`

Return:
- `user_id`
- `session_duration` — average session duration rounded to 2 decimal places.

Sort the result by `user_id`.

## Solution
*/
SELECT 
    p1.user_id,
    ROUND(AVG(p2.timestamp - p1.timestamp), 2) AS session_duration
FROM user_activity p1
JOIN user_activity p2
    ON p1.user_id = p2.user_id
    AND p1.session_id = p2.session_id
    AND p1.activity_type = 'login'
    AND p2.activity_type = 'logout'
GROUP BY p1.user_id
ORDER BY p1.user_id;
