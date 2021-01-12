-- user and role for replication data
CREATE ROLE rep_user WITH REPLICATION LOGIN PASSWORD 'rep_password';
GRANT ALL PRIVILEGES ON DATABASE example TO rep_user;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO rep_user;
ALTER USER rep_user WITH SUPERUSER;

CREATE TABLE demo_table (id text, content text,
CONSTRAINT demo_table_pkey PRIMARY KEY (id));

-- Publisher
CREATE PUBLICATION my_pub;
ALTER PUBLICATION my_pub ADD TABLE demo_table;