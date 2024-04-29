use oficina;
show tables;

desc client;
select * from client;
insert into client (Fname, Lname, CPF, Address, Phone) values
	('Lisânias','Moura','12345678911','Rua ibmorumbi 200','11988556644'),
	('Lucca','Silva','12345678922','Rua eduardo 400','11988556611'),
	('Ricardo','Pacheco','12345678933','Rua luís 600','11988556666'),
	('Maria','Rosa','12345678944','Rua Teixeira 800','11988556688');

desc vehicle;
select * from vehicle;
insert into vehicle (idClient_Vehicle, typeVehicle, plate,YearFab,VehicleBrand) values
	(1,'Carro','ABC1234',1998,'Peugeot'),
    (2,'Moto','ABC5656',1999,'Suzuki'),
    (3,'Caminhão','ABC8989',2000,'Scania'),
    (4,'Ônibus','ABC1111',2001,'Mercedes');
    


desc employees;
select * from employees;
insert into employees (idEmployee_Vehicle,CodeEmployee, NameEmployee, Specialty) values
	(1,2020,'João Moura','Veículo grande'),
    (2,2021,'Ronaldo Moraes','Veículo grande'),
    (3,2022,'Fernanda Souza','Veículo pequeno');

desc orders;
select * from orders;
insert into orders (idOrder_employees, OrderType, VehicleIssues, PartsPrice,ServicePrice,TotalPrice,OrderStatus) values
	(1,'Conserto','Freio não funciona',550.99,200,750.99,'Em andamento'),
    (2,'Conserto','Embreagem não funciona',300,150,500,'Em andamento'),
    (2,'Revisão','Rotina',200.99,100,300.99,'Em andamento'),
    (3,'Conserto','Problema na porta',150,100,250,'Em andamento');


desc servicelist;
select * from servicelist;
insert into servicelist (idService_Order, Service, ServiceFee) values
	(1,'Conserto',200.00),
    (2,'Conserto',150.00),
    (3,'Revisão',100.00),
    (4,'Conserto',100.00);

desc partslist;
select * from partslist;
insert into partslist (idParts_Order, Parts, Quantity) values
	(1,'Freio',1),
	(2,'Embreagem',1),
	(3,'Cabos',2),
	(4,'Porta Nova',1);


