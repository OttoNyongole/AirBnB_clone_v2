-- A script that prepares a MySQL server for the project
CREATE DATABASE IF NOT EXISTS hbnb_test_db;

-- Adding new user 'hbnb_dev' in localhost
-- password for the new user should be 'hbnb_test_pwd'

CREATE USER IF NOT EXISTS 'hbnb_dev'@'localhost' IDENTOFIED BY 'hbnb_dev_pwd';
GRANT ALL PRIVILEGES ON *.* TO 'hbnb_dev'@'localhost';
GRANT SELECT ON performance_schem.table TO 'hbnb_dev'@'localhost';

FLUSH PRIVILEGES;
