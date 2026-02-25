USE ActiVR;
GO

-- Users table
CREATE TABLE users (
    user_id INT PRIMARY KEY,
    age INT,
    registration_date DATE,
    email VARCHAR(255),
    workout_frequency VARCHAR(50)
);
GO

-- Games table
CREATE TABLE games (
    game_id INT PRIMARY KEY,
    game_type VARCHAR(50)
);
GO

-- Devices table
CREATE TABLE devices (
    device_id INT PRIMARY KEY,
    device_name VARCHAR(100),
    version VARCHAR(50)
);
GO

-- Events table
CREATE TABLE events (
    event_id INT PRIMARY KEY,
    game_id INT NULL,
    device_id INT NOT NULL,
    user_id INT NOT NULL,
    event_time DATETIME,
    CONSTRAINT FK_events_games
        FOREIGN KEY (game_id) REFERENCES games(game_id),
    CONSTRAINT FK_events_devices
        FOREIGN KEY (device_id) REFERENCES devices(device_id),
    CONSTRAINT FK_events_users
        FOREIGN KEY (user_id) REFERENCES users(user_id)
);
GO
