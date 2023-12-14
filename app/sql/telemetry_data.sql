CREATE DATABASE `telemetry`;
USE `telemetry`;

CREATE TABLE telemetry_data (
    id INT AUTO_INCREMENT PRIMARY KEY,
    timestamp VARCHAR(20) NOT NULL,
    input_data VARCHAR(255) NOT NULL,
    selected_model VARCHAR(50) NOT NULL,
    prediction_text VARCHAR(255) NOT NULL
);

CREATE TABLE prediction_record (
    id INT AUTO_INCREMENT PRIMARY KEY,
    timestamp VARCHAR(20) NOT NULL,
    input_data VARCHAR(255) NOT NULL,
    selected_model VARCHAR(50) NOT NULL,
    prediction_text VARCHAR(255) NOT NULL
);

SELECT * FROM telemetry_data;
SELECT * FROM prediction_record;