-- Nested :-
-- Select Passenger Details who will have to board planes with departure_time in the morning
SELECT * from Passenger where Passenger_id in (SELECT Passenger_id from Ticket where Ticket.Flight_id in (SELECT distinct(Flight.Flight_id) FROM Flight WHERE Departure_time < "12:00:00"));

--Select All Passengers going to Mangalore through Economy class
SELECT * FROM Passenger WHERE Passenger_id in (SELECT Passenger_id from Ticket where Ticket.Flight_id in (SELECT Flight_id from  Flight where  To_city = "Mangalore") AND Ticket.Flight_class="Economy");

--Staff details of Staff members having the same name as one of Pilots
SELECT * from Staff where Staff.Name in (SELECT Name from Pilot);
 
-- Find the bifurcation between number of morning and evening tickets
SELECT * FROM
  (SELECT count(*) as TicketsInEvening from Ticket where Ticket.Flight_id in (SELECT distinct(Flight.Flight_id) FROM Flight WHERE Departure_time >= "12:00:00")) EveningTickets ,
  (SELECT count(*) as TicketsInMorning from Ticket where Ticket.Flight_id in (SELECT distinct(Flight.Flight_id) FROM Flight WHERE Departure_time < "12:00:00")) MorningTickets,
  (SELECT count(*) as TotalTickets FROM Ticket)  TotalTickets;

-- Joins :-

-- display count of passengers arriving in Mangalore
SELECT P.* FROM Passenger P join Ticket T on P.Passenger_id = T.Passenger_id join Flight F on F.Flight_id = T.Flight_id where F.To_city = "Mangalore";

-- display all possible staff-pilot combination who can board flight together
SELECT Staff_id, Staff_name, Pilot_id , Pilot_name FROM (select Staff.Staff_id, Staff.Name as Staff_name, Flight.Departure_time, Flight.From_city from Staff join Flight on Staff.Flight_id = Flight.Flight_id) p, (select Pilot.Pilot_id, Pilot.Name as Pilot_name, Flight.Departure_time, Flight.From_city from Pilot join Flight on Pilot.Flight_id = Flight.Flight_id) t where p.Departure_time = t.Departure_time AND p.From_city = t.From_City ;

--display all unused tickets
SELECT TicketIDFromTicket as Tickets_not_used FROM (Select Terminal.Ticket_id as TicketIDFromTerminal, Ticket.Ticket_id as TicketIDFromTicket from Ticket left outer join Terminal on Ticket.Ticket_id = Terminal.Ticket_id ) F  where F.TicketIDFromTerminal is NULL;
