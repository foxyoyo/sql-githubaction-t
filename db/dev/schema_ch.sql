ALTER TABLE project ADD schema_version_type TEXT NOT NULL CHECK (schema_version_type IN ('TIMESTAMP', 'SEMANTIC')) DEFAULT 'TIMESTAMP';
DELETE FROM open_my_book2;
DELETE FROM book WHERE OWNER_NAME like '%FOX' ORDER BY OWNER_NAME;
DELETE FROM book;