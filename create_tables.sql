CREATE DATABASE cinema;
USE cinema;


CREATE TABLE employee (
	emp_id INT AUTO_INCREMENT,
    emp_name VARCHAR(50),
    birth_date DATE ,
    sex CHAR,
    salary FLOAT,
    CONSTRAINT employee_pk PRIMARY KEY (emp_id)
	);


CREATE TABLE cashier(
	cashier_id int,
	name VARCHAR(50),
    start_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    emp_id int,
    CONSTRAINT cashier_pk PRIMARY KEY (cashier_id),
    CONSTRAINT cashier_fk FOREIGN KEY (emp_id) REFERENCES employee(emp_id) ON DELETE SET NULL
    
	);


CREATE TABLE customer(
	cus_id INT ,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) DEFAULT '',
    CONSTRAINT customer_pk PRIMARY KEY (cus_id)
    );
    
CREATE TABLE payment(
	bill_no INT AUTO_INCREMENT,
    amount FLOAT,
    date_time DATETIME DEFAULT CURRENT_TIMESTAMP,
    cus_id INT,
    CONSTRAINT payment_pk PRIMARY KEY (bill_no),
    CONSTRAINT payment_fk FOREIGN KEY (cus_id) REFERENCES customer(cus_id) ON DELETE SET NULL
    );
    


CREATE TABLE vip_seat(
	seat_no VARCHAR(2),
		CHECK(seat_no IN('A1','A2','A3','A4','A5','A6')),
    availabe_seats INT,
    extras VARCHAR(40),
    vip_price FLOAT,
    CONSTRAINT vip_seat_pk PRIMARY KEY (seat_no)
    );
    
    
CREATE TABLE movie(
	movie_id INT AUTO_INCREMENT,
    movie_name VARCHAR(75),
    type VARCHAR(40),
    duration INT,
    language VARCHAR(40),
    CONSTRAINT movie_pk PRIMARY KEY (movie_id)
);    
    
CREATE TABLE ticket(
		ticket_id INT AUTO_INCREMENT,
        venue VARCHAR(30) DEFAULT 'HALL',
        seat_no INT,
        date_time DATETIME DEFAULT CURRENT_TIMESTAMP,
        availabe_seats INT,
        movie_id INT,
        cus_id INT,
        vip_seat VARCHAR(2),
        CONSTRAINT ticket_pk PRIMARY KEY (ticket_id),
		CONSTRAINT ticket_fk1 FOREIGN KEY (movie_id) REFERENCES movie(movie_id) ON DELETE SET NULL,
		CONSTRAINT ticket_fk2 FOREIGN KEY (cus_id) REFERENCES customer(cus_id) ON DELETE SET NULL,
		CONSTRAINT ticket_fk3 FOREIGN KEY (vip_seat) REFERENCES vip_seat(seat_no) ON DELETE SET NULL
        );
        
	

        
        

    
    

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    