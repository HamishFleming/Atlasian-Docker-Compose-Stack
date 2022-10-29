CREATE USER 'healthcheck'@'localhost' IDENTIFIED BY 'healthcheck';
GRANT SHOW DATABASES  ON *.* TO 'healthcheck'@'localhost';
FLUSH PRIVILEGES;


CREATE USER 'atlassian'@'localhost' IDENTIFIED BY ${PASSWORD};
GRANT USAGE ON *.* TO 'atlassian'@'localhost';
GRANT EXECUTE, SELECT, SHOW VIEW, ALTER, ALTER ROUTINE, CREATE, CREATE ROUTINE, CREATE TEMPORARY TABLES, CREATE VIEW, DELETE, DROP, EVENT, INDEX, INSERT, REFERENCES, TRIGGER, UPDATE, LOCK TABLES  ON `bitbucketdb`.* TO 'atlassian'@'localhost' WITH GRANT OPTION;
GRANT EXECUTE, SELECT, SHOW VIEW, ALTER, ALTER ROUTINE, CREATE, CREATE ROUTINE, CREATE TEMPORARY TABLES, CREATE VIEW, DELETE, DROP, EVENT, INDEX, INSERT, REFERENCES, TRIGGER, UPDATE, LOCK TABLES  ON `confluencedb`.* TO 'atlassian'@'localhost' WITH GRANT OPTION;
GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, REFERENCES, INDEX, ALTER  ON `JIRADB`.* TO 'atlassian'@'localhost';
GRANT EXECUTE, SELECT, SHOW VIEW, ALTER, ALTER ROUTINE, CREATE, CREATE ROUTINE, CREATE TEMPORARY TABLES, CREATE VIEW, DELETE, DROP, EVENT, INDEX, INSERT, REFERENCES, TRIGGER, UPDATE, LOCK TABLES  ON `jiradb`.* TO 'atlassian'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;
