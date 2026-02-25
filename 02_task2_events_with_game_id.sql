SELECT
    e.event_id,
    COALESCE(
        e.game_id,
        CASE
            WHEN e.event_time < '2021-01-01' THEN g.game_id
            ELSE e.game_id
        END
    ) AS game_id,
    e.device_id,
    e.user_id,
    e.event_time
FROM events e
LEFT JOIN games g
    ON g.game_type = 'running';
