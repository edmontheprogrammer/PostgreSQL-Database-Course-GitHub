create table car (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	make VARCHAR(100) NOT NULL,
	model VARCHAR(100) NOT NULL,
	price INT NOT NULL 
);

create table person (
	id BIGSERIAL NOT NULL PRIMARY KEY, 
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(150),
	gender VARCHAR(7) NOT NULL,
	date_of_birth DATE NOT NULL,
	country_of_birth VARCHAR(50),
    car_id BIGINT REFERENCES car (id), 
    UNIQUE(car_id)
);

insert into person (first_name, last_name, email, gender, date_of_birth, country_of_birth) values ('Edeline', 'Langley', 'elangley0@independent.co.uk', 'Agender', '2021-08-16', 'Venezuela');
insert into person (first_name, last_name, email, gender, date_of_birth, country_of_birth) values ('Hammad', 'Worters', 'hworters1@washington.edu', 'Agender', '2021-11-06', 'Micronesia');
insert into person (first_name, last_name, email, gender, date_of_birth, country_of_birth) values ('Waylen', 'Ranner', 'wranner2@answers.com', 'Male', '2022-05-30', 'United States');

insert into car (id, make, model, price) values (1, 'BMW', 'M3', 5);
insert into car (id, make, model, price) values (2, 'Honda', 'Odyssey', 83);
