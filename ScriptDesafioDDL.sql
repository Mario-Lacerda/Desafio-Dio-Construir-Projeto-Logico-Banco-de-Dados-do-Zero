 create database oficina;
 use oficina;

CREATE TABLE client(
	idClient int auto_increment primary key,
    Fname varchar(45),
    Lname varchar(45),
    CPF char(11),
    Address varchar(60),
    Phone varchar(11)
);

CREATE TABLE vehicle(
	idVehicle int auto_increment primary key,
    idClient_Vehicle int,
    typeVehicle enum('Carro','Moto','Caminhão','Ônibus'),
    plate char(7),
    YearFab int,
    VehicleBrand varchar(45),
    constraint fk_Client_Vehicle foreign key (idClient_Vehicle) references client(idClient)
);

CREATE TABLE employees(
	idEmployee int auto_increment primary key,
    idEmployee_Vehicle int,
    CodeEmployee char(4),
    NameEmployee varchar(45),
    Specialty enum('Veículo grande', 'Veículo pequeno'),
    constraint fk_Employee_Vehicle foreign key (idEmployee_Vehicle) references vehicle(idVehicle)
);

CREATE TABLE orders(
	idOrder int auto_increment primary key,
    idOrder_employees int,
    OrderType enum('Conserto','Revisão'),
    VehicleIssues varchar(60),
    PartsPrice float,
    ServicePrice float,
    TotalPrice float,
    OrderStatus enum('Em andamento','Finalizado'),
    constraint fk_idOrder_employees foreign key (idOrder_employees) references employees(idEmployee)
);

CREATE TABLE serviceList(
	idService int auto_increment primary key,
    idService_Order int,
    Service enum('Conserto','Revisão'),
    ServiceFee float,
    constraint fk_Service_Order foreign key (idService_Order) references orders (idOrder)
);

CREATE TABLE partsList(
	idParts int auto_increment primary key,
    idParts_Order int,
    Parts varchar(45),
    Quantity int,
    constraint fk_idParts_Order foreign key (idParts_Order) references orders (idOrder)
);