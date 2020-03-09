create table PaymentStatus (
	id INT,
	status VARCHAR(50)
);
insert into PaymentStatus (id, status) values (1, 'paid');
insert into PaymentStatus (id, status) values (2, 'cancelled');
insert into PaymentStatus (id, status) values (3, 'waiting');
