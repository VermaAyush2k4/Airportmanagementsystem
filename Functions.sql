-- passengers should ideally arrive three hours before flight
delimiter $$
create function passenger_arrival(board time)
returns time deterministic
begin
	declare interval_time time;
    declare arrival_time time;
    select '03:00:00' into interval_time;
    select subtime(board, interval_time) into arrival_time;
    
    if (board < '03:00:00') then 
	set arrival_time = addtime(arrival_time, '24:00:00');
    end if;
	return arrival_time;
end$$
delimiter ;

-- find time in flight
delimiter $$
create function in_flight_time(dept time, arr time)
returns time deterministic
begin
	declare result time;
	select timediff(arr, dept) into result;
    if (result < '00:00:00') then
	set result = addtime(result, '24:00:00');
	end if;
    return result;
end $$
delimiter ;

-- find age of passengers
delimiter $$
create function age(dob date)
returns int deterministic
begin
	declare today date;
    select current_Date() into today;
    return year(today) - year(dob);
end $$
delimiter ;

-- find number of flights taking off a specific terminal
delimiter $$
create function flight_terminal(terminal varchar(2))
returns int deterministic
begin
	declare num_flights int;
    select count(Ticket_id) from Terminal where Terminal_no = terminal
    into num_flights;
    return num_flights;
end $$
delimiter ;

-- find if pilot is fit for flying
delimiter $$
create function can_fly(age int)
returns varchar(3) deterministic
begin
	if (age >= 25 AND age<=60) then
    return "YES";
    else
    return "NO";
    end if;
end $$
delimiter ;
