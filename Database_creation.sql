
create database Airport;
use Airport;

create table Flight (
    Flight_id varchar(10) primary key,
    From_city varchar(20) not null,
    To_city varchar(20) not null,
    Departure_time time not null,
    Arrival_time time not null
);

create table Pilot (
	Pilot_id varchar(10) primary key,
    Flight_id varchar(10),
    Name varchar(20) not null,
    DOB date not null,
    Gender char(1),
    Address varchar(30),
    Contact_no long NOT NULL
);

create table Staff (
	Staff_id varchar(10) primary key,
    Flight_id varchar(10),
    Name varchar(20) not null,
    DOB date not null,
    Gender char(1),
    Address varchar(30),
    Contact_no long NOT NULL
);

create table Passenger (
	Passenger_id varchar(10) primary key,
    Name varchar(20) not null,
    DOB date not null,
    Gender char(1),
    Address varchar(30),
    Contact_no long NOT NULL
);

create table Terminal (
	Terminal_no varchar(5),
	Ticket_id varchar(10),
    Boarding_time time not null,
    primary key (Terminal_no, Ticket_id, Boarding_time)
);

create table Ticket (
	Ticket_id varchar(10) primary key,
    Flight_id varchar(10),
    Passenger_id varchar(10),
    Flight_class varchar(10) not null
);


alter table Ticket
add constraint FK_Ticket_Passenger foreign key (Passenger_id) references Passenger(Passenger_id); 

alter table Terminal
add constraint FK_Terminal_Ticket foreign key (Ticket_id) references Ticket (Ticket_id);


alter table Staff
add constraint FK_Staff_Flight foreign key (Flight_id) references Flight (Flight_id);

alter table Pilot
add constraint FK_Pilot_Flight foreign key (Flight_id) references Flight (Flight_id);

alter table Ticket
add constraint FK_Ticket_Flight foreign key (Flight_id) references Flight (Flight_id);
