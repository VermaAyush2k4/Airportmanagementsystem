insert into Flight values
("FL001", "Patna", "Mangalore", "12:30:00", "18:00:00"),
("FL002", "Pune", "Hyderabad", "15:30:00", "18:00:00"),
("FL003", "New York", "Singapore", "00:40:00", "07:00:00"),
("FL004", "Mumbai", "Bangalore", "01:00:00", "03:00:00"),
("FL005", "Patna", "Mangalore", "12:30:00", "18:00:00"),
("FL006", "Pune", "Hyderabad", "15:30:00", "18:00:00"),
("FL007", "New York", "Singapore", "00:40:00", "07:00:00"),
("FL008", "Mumbai", "Bangalore", "01:00:00", "03:00:00"),
("FL009", "Patna", "Mangalore", "12:30:00", "18:00:00"),
("FL010", "Pune", "Hyderabad", "15:30:00", "18:00:00"),
("FL011", "San Andreas", "Montreal", "11:30:00", "00:00:00"),
("FL012", "Cairo", "Tokyo", "08:00:00", "23:30:00");



insert into Pilot values
("PL001","FL001", "Arun", "1998-01-30", "M", NULL, 9876543210),
("PL002","FL002", "Solo", "1977-12-31", "M", NULL, 7663655443),
("PL003","FL003", "Perk", "1974-10-28", "M", NULL, 7663655345),
("PL004","FL002", "Munch", "1976-10-11", "M", NULL, 9833333455),
("PL005","FL005", "Alex", "1974-07-24", "M", NULL, 981212122),
("PL006","FL006", "Pinto", "1974-10-25", "M", NULL, 8456231523),
("PL007","FL001", "Percy", "1974-07-21", "M", NULL, 7836316412),
("PL008","FL008", "Jack", "1974-02-14", "M", NULL, 6048987034),
("PL009","FL009", "Ayman", "1974-07-13", "M", NULL, 7663655345);


insert into Staff values
("ST001","FL001", "Harish", "1997-02-26", "M", NULL, 1234567890),
("ST002","FL002", "Potter", "1986-03-21", "M", NULL, 532345342),
("ST003","FL003", "Jenny", "1996-07-21", "F", NULL, 532345321),
("ST004","FL004", "Cherry", "2000-01-11", "F", NULL, 532345357),
("ST005","FL005", "Oslo", "1986-02-04", "M", "San Andreas", 23245244),
("ST006","FL006", "Jane", "2002-3-2", "F", "Montreal", 3234221);


insert into Passenger values
("PS001", "Vanessa", "2002-01-01", "F", NULL, 9182736450),
("PS002", "Kaustubh", "2003-12-01", "M", NULL, 3423432413),
("PS003", "Tushar", "2001-02-01", "M", NULL, 3423432423),
("PS004", "Tiara", "2005-01-16", "F", NULL, 3423432445),
("PS005", "Thomas", "1970-11-11", "M", NULL, 3423432321),
("PS006", "Hailey", "1900-10-12", "F", NULL, 2123432321),
("PS007", "Jane", "2002-05-12", "F", NULL, 2123433421),
("PS008", "Helen", "1920-05-12", "F", NULL, 2123432341),
("PS009", "Johnson", "1999-02-11", "M", NULL, 2123432561),
("PS010", "Jake", "2000-01-17","M", NULL, 2123432569);

insert into Ticket values
("TK001", "FL001", "PS001", "Economy"),
("TK002", "FL002", "PS002", "FirstClass"),
("TK003", "FL003", "PS003", "FirstClass"),
("TK004", "FL004", "PS004", "Economy"),
("TK005", "FL005", "PS005", "Economy"),
("TK006", "FL006", "PS006", "FirstClass"),
("TK007", "FL007", "PS007", "FirstClass"),
("TK008", "FL008", "PS008", "Economy"),
("TK009", "FL009", "PS009", "FirstClass"),
("TK010", "FL010", "PS010", "Economy");

insert into Terminal values
("T2", "TK001", "12:00:00"),
("T1", "TK002", "23:30:00"),
("T3", "TK001", "12:00:00"),
("T4", "TK003", "00:00:00"),
("T2", "TK004", "23:00:00"),
("T4", "TK002", "23:30:00"),
("T1", "TK001", "12:00:00"),
("T3", "TK003", "00:00:00"),
("T3", "TK003", "12:00:00"),
("T2", "TK002", "23:30:00"),
("T1", "TK009", "12:45:00"),
("T2", "TK005", "12:45:00"),
("T4", "TK006", "00:15:00"),
("T3", "TK007", "03:00:00"),
("T1", "TK008", "13:45:00"),
("T2", "TK006", "12:30:00"),
("T4", "TK005", "15:00:00");

-- If getting data already entered error,
-- comment out the line that is causing error.
