-- STEP 1: Create Database
CREATE DATABASE IF NOT EXISTS industrial_env_monitoring;
USE industrial_env_monitoring;

-- STEP 2: Create Tables
CREATE TABLE IF NOT EXISTS Sensors (
    sensor_id INT PRIMARY KEY AUTO_INCREMENT,
    sensor_type VARCHAR(50),
    location VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS Readings (
    reading_id INT PRIMARY KEY AUTO_INCREMENT,
    sensor_id INT,
    reading_value FLOAT,
    reading_time DATETIME,
    FOREIGN KEY (sensor_id) REFERENCES Sensors(sensor_id)
);

CREATE TABLE IF NOT EXISTS Thresholds (
    sensor_type VARCHAR(50) PRIMARY KEY,
    min_value FLOAT,
    max_value FLOAT
);

-- STEP 3: Insert Sample Data

-- Sensors
INSERT INTO Sensors (sensor_type, location) VALUES
('Temperature', 'Boiler Room'),
('CO2', 'Main Plant'),
('Humidity', 'Control Room');

-- Thresholds
INSERT INTO Thresholds (sensor_type, min_value, max_value) VALUES
('Temperature', 18.0, 35.0),
('CO2', 350.0, 1000.0),
('Humidity', 30.0, 60.0);

-- Readings
INSERT INTO Readings (sensor_id, reading_value, reading_time) VALUES
(1, 40.5, '2025-07-29 10:00:00'),
(2, 800.0, '2025-07-29 10:05:00'),
(3, 25.0, '2025-07-29 10:10:00'),
(1, 30.5, '2025-07-30 09:00:00'),
(2, 1200.0, '2025-07-30 09:15:00');
