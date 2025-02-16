PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "schema_migrations" ("version" varchar NOT NULL PRIMARY KEY);
INSERT INTO schema_migrations VALUES('20220802142535');
CREATE TABLE IF NOT EXISTS "ar_internal_metadata" ("key" varchar NOT NULL PRIMARY KEY, "value" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO ar_internal_metadata VALUES('environment','development','2022-08-02 14:27:45.233307','2022-08-02 14:27:45.233307');
CREATE TABLE IF NOT EXISTS "posts" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "content" text, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO posts VALUES(1,'Post A','2022-08-02 14:28:01.739045','2022-08-02 14:28:01.739045');
INSERT INTO posts VALUES(2,'Post B','2022-08-02 14:28:06.377802','2022-08-02 14:28:06.377802');
INSERT INTO posts VALUES(3,'Post C','2022-08-02 14:28:10.003109','2022-08-02 14:28:10.003109');
DELETE FROM sqlite_sequence;
INSERT INTO sqlite_sequence VALUES('posts',3);
COMMIT;
