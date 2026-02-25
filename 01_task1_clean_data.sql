-- Created by GitHub Copilot in SSMS - review carefully before executing
SELECT
    user_id,
    COALESCE(
        age,
        CAST(ROUND((SELECT AVG(CAST(age AS FLOAT)) FROM dbo.users WHERE age IS NOT NULL), 0) AS INT)
    ) AS age,
    COALESCE(
        registration_date,
        CAST('2024-01-01' AS date)
    ) AS registration_date,
    COALESCE(email, 'Unknown') AS email,
    CASE
        WHEN workout_frequency IS NULL THEN 'flexible'
        WHEN LOWER(workout_frequency) IN ('minimal', 'flexible', 'regular', 'maximal')
            THEN LOWER(workout_frequency)
        ELSE 'flexible'
    END AS workout_frequency
FROM dbo.users;