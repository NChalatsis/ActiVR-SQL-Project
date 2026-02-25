SELECT
    user_id,
    COALESCE(
        age,
        CAST(ROUND((SELECT AVG(age) FROM users WHERE age IS NOT NULL)) AS INT)
    ) AS age,
    COALESCE(
        registration_date,
        '2024-01-01-00-00-00-000'
    ) AS registration_date,
    COALESCE(email, 'Unknown') AS email,
    CASE
        WHEN workout_frequency IS NULL THEN 'flexible'
        WHEN LOWER(workout_frequency) IN ('minimal', 'flexible', 'regular', 'maximal')
            THEN LOWER(workout_frequency)
        ELSE 'flexible'
    END AS workout_frequency
FROM users;
