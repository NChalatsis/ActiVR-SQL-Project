USE ActiVR;
GO

-- Sample users
INSERT INTO users (user_id, age, registration_date, email, workout_frequency)
VALUES
    (1, 25, '2023-05-10', 'user1@example.com', 'Regular'),
    (2, NULL, '2022-11-01', NULL, 'MAXIMAL'),
    (3, 40, NULL, 'user3@example.com', NULL),
    (4, 30, '2024-02-15', 'user4@example.com', 'flexible'),
    (5, NULL, NULL, NULL, 'unknown');
GO

-- Sample games
INSERT INTO games (game_id, game_type)
VALUES
    (10, 'running'),
    (11, 'biking'),
    (12, 'running'),
    (13, NULL);
GO

-- Sample devices
INSERT INTO devices (device_id, device_name, version)
VALUES
    (100, 'ActiVR One', '1.0'),
    (101, 'ActiVR Pro', '2.0');
GO

-- Sample events
INSERT INTO events (event_id, game_id, device_id, user_id, event_time)
VALUES
    (1000, NULL, 100, 1, '2020-06-15T10:00:00'),
    (1001, NULL, 101, 2, '2020-12-20T18:30:00'),
    (1002, 11, 100, 1, '2021-03-10T09:15:00'),
    (1003, 10, 101, 3, '2022-01-05T14:45:00'),
    (1004, 11, 100, 4, '2023-07-22T19:00:00'),
    (1005, 13, 101, 5, '2023-08-01T12:00:00');
GO
