SELECT
    g.game_type,
    g.game_id,
    COUNT(DISTINCT e.user_id) AS user_count
FROM events e
INNER JOIN games g
    ON e.game_id = g.game_id
WHERE g.game_type IS NOT NULL
GROUP BY g.game_type, g.game_id;
