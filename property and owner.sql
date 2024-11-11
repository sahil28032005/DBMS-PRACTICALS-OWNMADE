-- create table with sutaible constraints
create table properties(pno int primary key,ptype varchar(50),sqft int,rent number,address varchar(100),status varchar(20),ownerno int);
create table clients(cno int  primary key,cname varchar(100),phone varchar(15),requirement varchar(100));
create table rental(pno int,clientno int,fromDate Date,toDate date,foreign key (pno) references properties(pno),foreign key (clientno) references clients(cno));

--dummy data to insert 
-- Inserting data into the properties table
INSERT INTO properties (pno, ptype, sqft, rent, address, status, ownerno) VALUES
(1, 'Apartment', 1200, 1500, '1234 Elm St, CityA', 'Available', 101),
(2, 'House', 2000, 2500, '5678 Oak St, CityB', 'Rented', 102),
(3, 'Condo', 800, 1200, '7890 Pine St, CityC', 'Available', 103),
(4, 'Townhouse', 1500, 1800, '4567 Maple St, CityD', 'Rented', 104),
(5, 'Apartment', 950, 1300, '3456 Birch St, CityE', 'Available', 105);

-- Inserting data into the clients table
INSERT INTO clients (cno, cname, phone, requirement) VALUES
(101, 'Alice Johnson', '555-1234', 'Looking for 2-bedroom apartment'),
(102, 'Bob Smith', '555-5678', 'Looking for house with a garden'),
(103, 'Charlie Brown', '555-8765', 'Looking for a small condo'),
(104, 'Diana White', '555-4321', 'Looking for townhouse near schools'),
(105, 'Eve Davis', '555-1122', 'Looking for apartment close to city center');

-- Inserting data into the rental table
INSERT INTO rental (pno, clientno, fromDate, toDate) VALUES
(2, 101, TO_DATE('2024-01-01', 'YYYY-MM-DD'), TO_DATE('2024-12-31', 'YYYY-MM-DD')),
(4, 102, TO_DATE('2024-06-01', 'YYYY-MM-DD'), TO_DATE('2025-06-01', 'YYYY-MM-DD')),
(5, 103, TO_DATE('2024-03-01', 'YYYY-MM-DD'), TO_DATE('2025-03-01', 'YYYY-MM-DD')),
(1, 104, TO_DATE('2024-02-01', 'YYYY-MM-DD'), TO_DATE('2025-02-01', 'YYYY-MM-DD')),
(3, 105, TO_DATE('2024-05-01', 'YYYY-MM-DD'), TO_DATE('2025-05-01', 'YYYY-MM-DD'));




-- as oracle not support direct auto incremtn as param constraint create sequence and trigger fot it 
create sequence seq1 start with 1 increment by 1;

--create trigger to apply that seqn
create or replace trigger incrementor before insert on properties for each row
begin
    :new.pno:=seq1.nextval;
end;
/

