-- Initialize MySQL with proper authentication
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'dksdlfduq2';
ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'dksdlfduq2';
FLUSH PRIVILEGES;