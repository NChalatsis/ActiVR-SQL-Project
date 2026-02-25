SELECT
    e.user_id,
    e.event_time
FROM events e
INNER JOIN games g
    ON e.game_id = g.game_id
WHERE g.game_type = 'biking';
