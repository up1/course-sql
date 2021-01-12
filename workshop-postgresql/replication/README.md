# Working with Replication

## 1. Start server
```
$docker volume ls
$docker volume prune

$docker-compose up -d db-master
$docker-compose ps
$docker-compose up -d db-replica
$docker-compose ps

 Name                Command               State           Ports
-------------------------------------------------------------------------
master    docker-entrypoint.sh postg ...   Up      0.0.0.0:5433->5432/tcp
replica   docker-entrypoint.sh postgres    Up      0.0.0.0:5434->5432/tcp

$docker-compose logs --follow
```

## 2. Access to master
```
$docker container exec -it master sh

// Access to database server
psql -U postgres example

// List of databases
\l

// Switch to example database
\c example

// List of tables
\dt
\dt+

// Detail of table
\d demo_table

// List of users
\du

// Query
select * from demo_table;

// Insert data
insert into demo_table values (1, 'demo');
```

## 3. Access to relica/slave

```
$docker container exec -it replica sh

// Access to database server
psql -U postgres example

// List of databases
\l

// Switch to example database
\c example

// List of tables
\dt
\dt+

// Detail of table
\d demo_table

// Query
select * from demo_table;
```