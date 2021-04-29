-- Insert into customer table
INSERT INTO customer(
	customer_id,
	first_name,
	last_name,
	address,
	billing_info
) VALUES(
	1,
	'Kevin',
	'Stevens',
	'2335 N Lincoln Ave Chicago, IL 60614',
	'1234-5678-9012-3456 789 01/24'
);

-- Insert into Movies table
INSERT INTO movies(
	movie_id,
	movie_title,
	run_time
) VALUES(
	1,
	'Star Wars: The Empire Strikes Back',
	127
);

-- Insert into Tickets table
INSERT INTO tickets(
	ticket_id,
	first_name,
	last_name,
	movie_title,
	amount,
	customer_id,
	movie_id
) VALUES(
	1,
	'Kevin',
	'Stevens',
	'Star Wars: The Empire Strikes Back',
	10.00,
	1,
	1
);

-- Insert into Concessions table
INSERT INTO concessions(
	item_id,
	amount,
	product_name,
	seller_id,
	customer_id
) VALUES(
	1,
	2.00,
	'Reeses Cups',
	1,
	1
);