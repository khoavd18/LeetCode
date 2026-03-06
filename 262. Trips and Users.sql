SELECT request_at AS Day,
        ROUND(
            AVG(
                CASE
                    WHEN t.status IN ('cancelled_by_driver', 'cancelled_by_client')
                    THEN 1
                    ELSE 0
                END
            ),2
        ) AS 'Cancellation Rate'
FROM Trips t 
JOIN Users u ON u.users_id = t.client_id AND u.banned = 'No'
JOIN Users ud ON ud.users_id = t.driver_id AND ud.banned = 'No'
WHERE t.request_at BETWEEN '2013-10-01' AND '2013-10-03'
GROUP BY t.request_at;