-- A script that prepares a MySQL server 
-- Create db 'hbnb_dev_db' 
CREATE DATABASE IF NOT EXISTS hbnb_dev_db;

-- Add new user 'hbnb_dev' in localhost 
-- User 'hbnb_dev' password should be 'hbnb_test_pwd'
CREATE USER IF NOT EXISTS 'hbnb_dev'@'localhost' IDENTIFIED BY 'hbnb_dev_pwd';

-- User 'hbnb_dev' should have all privileges on database performance_schema
GRANT ALL PRIVILEGES ON *.* TO 'hbnb_dev'@'localhost';

-- User 'hbnb_dev' should have SELECT privileges on database 'performance_schema'
GRANT SELECT ON performance_schema.table TO 'hbnb_dev'@'localhost';

FLUSH PRIVILEGES;
