-- Customer Table
CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	address VARCHAR(150),
	billing_info VARCHAR(150)
);

-- Movies Table
CREATE TABLE movies(
	movie_id SERIAL PRIMARY KEY,
	movie_title VARCHAR(100),
	release_date DATE DEFAULT CURRENT_DATE,
	run_time INTEGER
);

-- Tickets Table
CREATE TABLE tickets(
	ticket_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	movie_title VARCHAR(100),
	amount NUMERIC(4,2),
	customer_id INTEGER NOT NULL,
	movie_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY(movie_id) REFERENCES movies(movie_id)
);

-- Concessions Table
CREATE TABLE concessions(
	item_id SERIAL PRIMARY KEY,
	amount NUMERIC (5,2),
	product_name VARCHAR(100),
	seller_id INTEGER,
	customer_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);