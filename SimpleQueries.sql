-- display pilots born before January 1, 1990
SELECT Pilot_id, Name FROM Pilot WHERE DOB < '1990-01-01';

-- display all flight_id's  departing from Pune or Mumbai
SELECT Flight_id FROM Flight WHERE From_city IN ('Pune', 'Mumbai');

-- display passengers above or equal to 18
SELECT * FROM Passenger WHERE YEAR(CURRENT_DATE()) - YEAR(DOB) >= 18;

-- display the terminal numbers that have boarding time after 9am
SELECT DISTINCT Terminal_no FROM Terminal WHERE Boarding_time > '09:00:00';

-- display number of passengers travelling FirstClass
SELECT COUNT(Passenger_id) FROM Ticket WHERE Flight_class = 'FirstClass';

-- display staff id, name of staff and flight id of flight FL003
SELECT Staff_id, Flight_id, Name FROM Staff WHERE Flight_id = 'FL003';

--display passenger id and flight id of passengers travelling in first class
SELECT Passenger_id, Flight_id FROM Ticket WHERE Flight_class = 'Economy';

--display number of female passengers
SELECT COUNT(Passenger_id) FROM Passenger WHERE gender = 'F';

--display number of flights arriving in mangalore
select COUNT(Flight_id) FROM Flight WHERE to_city = 'Mangalore';

--display details of pilots who are below the age of 45
SELECT * FROM Pilot WHERE YEAR(CURRENT_DATE()) - YEAR(DOB) <= 45;
