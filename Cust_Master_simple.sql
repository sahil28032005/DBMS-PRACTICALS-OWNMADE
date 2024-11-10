-- create table custmaster(custno number,name varchar(100),qtyordered number,orderdate Date,address varchar(200));
//insert dummy records into custmaster

insert into custmaster(custno,name,qtyordered,orderdate,address) values(1,'robert',12,to_date('2024-10-1','yy-mm--dd'),'los santos');
insert into custmaster(custno,name,qtyordered,orderdate,address) values(2,'travis',4,to_date('2024-5-3','yy-mm-dd'),'los angeles');
INSERT INTO custmaster (custno, name, qtyordered, orderdate, address)
VALUES (1, 'Robert', 10, TO_DATE('2024-10-01', 'yyyy-mm-dd'), 'Los Santos');

INSERT INTO custmaster (custno, name, qtyordered, orderdate, address)
VALUES (2, 'John', 5, TO_DATE('2024-10-02', 'yyyy-mm-dd'), 'New York');

INSERT INTO custmaster (custno, name, qtyordered, orderdate, address)
VALUES (3, 'Alice', 15, TO_DATE('2024-10-03', 'yyyy-mm-dd'), 'California');

INSERT INTO custmaster (custno, name, qtyordered, orderdate, address)
VALUES (4, 'Sophia', 7, TO_DATE('2024-10-04', 'yyyy-mm-dd'), 'Miami');

INSERT INTO custmaster (custno, name, qtyordered, orderdate, address)
VALUES (5, 'David', 20, TO_DATE('2024-10-05', 'yyyy-mm-dd'), 'Texas');

INSERT INTO custmaster (custno, name, qtyordered, orderdate, address)
VALUES (6, 'Emily', 12, TO_DATE('2024-10-06', 'yyyy-mm-dd'), 'Chicago');

INSERT INTO custmaster (custno, name, qtyordered, orderdate, address)
VALUES (7, 'James', 8, TO_DATE('2024-10-07', 'yyyy-mm-dd'), 'Houston');

INSERT INTO custmaster (custno, name, qtyordered, orderdate, address)
VALUES (8, 'Olivia', 25, TO_DATE('2024-10-08', 'yyyy-mm-dd'), 'San Francisco');

-- List names of customers having 'a' as the second letter in their name

select name from custmaster where substr(name,2,1)='a';

-- List customers who stay in a city whose first letter is 'M'

select address from custmaster where substr(address,1,1)='M';

-- Display order from Customer no C1002, C1005, C1007, and C1008
select * from custmaster where custno in(1,2,3,4,5);

-- List Clients who stay in either 'Bangalore' or 'Mangalore'
select name from custmaster where address in('Bangalore', 'Mangalore');

-- Create a View Customer_View consisting of Cust_no, Qty_Ordered, and Order_date
create view copyCust as select custno,qtyordered,orderdate from custmaster;