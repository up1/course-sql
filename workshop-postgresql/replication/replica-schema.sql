CREATE TABLE demo_table (id text, content text,
CONSTRAINT demo_table_pkey PRIMARY KEY (id));

-- Create subscripber for my_pub
CREATE SUBSCRIPTION my_sub CONNECTION 'host=db-master port=5432 user=rep_user password=rep_password dbname=example' PUBLICATION my_pub;


