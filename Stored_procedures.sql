-- find flights which are currently flying
DELIMITER $$
create procedure flying_flights()
begin
select * from Flight where
Departure_time < now() && now() < Arrival_time;
end $$
delimiter ;

-- find people who have two or more flights
delimiter $$
create procedure busy_people()
begin
	select P.*, T.Ticket_id from Passenger P join Ticket T
    on P.Passenger_id = T.Passenger_id
    where (select count(T1.Ticket_id)
    from Ticket T1 join Passenger P1
    on T1.Passenger_id = P1.Passenger_id
    where P1.Passenger_id = P.Passenger_id) > 1;
end $$
delimiter ;

-- find passengers whose address is known
delimiter $$
create procedure know_address()
begin
	select * from Passenger where Address is not null;
end $$
delimiter ;

-- find oldest pilots
delimiter $$
create procedure oldest_pilots(IN lim INT)
begin
	select * from Pilot order by DOB
    limit lim;
end $$
delimiter ;

-- find vessels which are out of commission
delimiter $$
create procedure not_flying(out ct int)
begin
	select * from Flight where Flight_id not in (select P.Flight_id from Flight F  join Pilot P on P.Flight_id = F.Flight_id);
	select Count(Flight_id) from Flight where Flight_id not in (select P.Flight_id from Flight F join Pilot P on P.Flight_id = F.Flight_id) into ct;
end $$
delimiter ;
