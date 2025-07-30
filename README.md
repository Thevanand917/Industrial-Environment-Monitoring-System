# Industrial Environment Monitoring System

This project is a MySQL-based backend database system designed to monitor environmental conditions in industrial settings. It focuses on tracking sensor data like temperature, humidity, and CO₂ levels, along with associated thresholds for triggering alerts and conducting analytics.

---

## 📁 Project Structure

- `industrial_env_monitoring.sql`: SQL script to create the database, tables, and insert sample data.

---

## 🗄️ Database Schema

The database consists of three main tables:

1. **Sensors**
   - `sensor_id` (Primary Key)
   - `sensor_type` (e.g., Temperature, Humidity, CO₂)
   - `location` (e.g., Boiler Room)

2. **Readings**
   - `reading_id` (Primary Key)
   - `sensor_id` (Foreign Key referencing `Sensors`)
   - `reading_value` (FLOAT)
   - `reading_time` (DATETIME)

3. **Thresholds**
   - `sensor_type` (Primary Key)
   - `min_value` and `max_value` (FLOAT)

---

## 🔧 Features

- Database initialization with sample sensor data and readings
- Threshold-based anomaly detection support
- Designed for easy integration with frontend or IoT systems
- Clean and normalized table structure

---

## 🚀 How to Use

1. Import the SQL file into **MySQL Workbench** or any MySQL database.
2. Execute the script to:
   - Create the database and tables
   - Populate sample data for testing

---

## 📦 Future Scope

- Connect with an IoT platform to feed real-time sensor data
- Build a dashboard using React.js and Chart.js for visual analytics
- Add alert/notification system for readings beyond threshold

---

## 📚 Technologies Used

- **MySQL 8.0+**
- MySQL Workbench
- SQL (DDL & DML)

---

## 📩 Author

**Thevanand917**  
GitHub: [github.com/Thevanand917](https://github.com/Thevanand917)

---

## 📝 License

This project is licensed under the MIT License.
