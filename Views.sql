-- list out all cities reachable from Patna
create view reachable_from
as
with recursive temp (From_city, To_city, depth) as (
	select root.From_city, root.To_city, 0 as depth
    from Flight as root
    where root.From_city = "Patna"
union all
	select in1.From_city, out1.To_city, in1.depth + 1
    from temp as in1, Flight as out1
    where in1.To_city = out1.From_city and in1.depth <= 50
) select distinct From_city, To_city from temp;

select * from reachable_from;

create view flight_pilot_details as select * from Flight Fl natural join Pilot Pi;
select * from flight_pilot_details;

create view flight_staff_details as select Fl.Flight_id, St.Staff_id, St.Name from Flight Fl, Staff St where Fl.Flight_id = St.Flight_id;
select * from flight_staff_details;

create view afternoon_departures as select * from flight_pilot_details where Departure_time > "12:00:00" and Departure_time < "17:00:00" ;
select * from afternoon_departures;

create view ticket_details as select Ti.Ticket_id, Ti.Flight_id, Ti.Passenger_id, Ps.Name, Ps.Contact_no from Ticket Ti, Passenger Ps where Ps.Passenger_id = Ti.Passenger_id;
select * from ticket_details;
