DROP TABLE customers CASCADE;
DROP TABLE films CASCADE;
DROP TABLE tickets;

CREATE TABLE customers (
  id SERIAL4 primary key,
  name VARCHAR(255),
  funds FLOAT8
);

CREATE TABLE films (
   id SERIAL4 primary key,
   title VARCHAR(255),
   price FLOAT8
);

CREATE TABLE tickets (
  id SERIAL4 primary key,
  cust_id INT4 references customers(id) ON DELETE CASCADE,
  film_id INT4 references films(id) ON DELETE CASCADE
);