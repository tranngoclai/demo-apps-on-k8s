CREATE USER 'exporter'@'localhost' IDENTIFIED BY 'appuser123' WITH MAX_USER_CONNECTIONS 3;
GRANT PROCESS, REPLICATION CLIENT, SELECT ON *.* TO 'exporter'@'localhost';