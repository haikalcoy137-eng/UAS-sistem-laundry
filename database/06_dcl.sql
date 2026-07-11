-- =====================================
-- DCL (Data Control Language)
-- =====================================

CREATE USER 'operator'@'localhost'
IDENTIFIED BY '12345';

GRANT SELECT, INSERT, UPDATE
ON db_sistemlaundry.*
TO 'operator'@'localhost';

FLUSH PRIVILEGES;

-- Contoh mencabut hak akses
REVOKE UPDATE
ON db_sistemlaundry.*
FROM 'operator'@'localhost';

FLUSH PRIVILEGES;
