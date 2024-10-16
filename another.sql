set serveroutput on;

declare

roll int;
bName varchar(40);
issueDate Date;
curDate Date;
overdue int;
fine float:=0;


begin

roll:= &roll; --user provide roll no
bName:= '&bName'; --user provides name

--fetch date of issue and current data and stoer in out vars
select issuedate into issueDate from borrower where roll_no=roll and bookName=bName and status='I';

--get current date
select sysdate into curDate from dual;

--calculate overdue
overdue:=trunc(curDate-issueDate);

-- der=termine fine based of if else 

if overdue <15 then
   dbms_output.put_line('no fine');

elsif overdue >=15 and overdue<=30 then 
      fine:=overdue*5;
else
      fine:=overdue*50; --more than 30 days
end if;

--if fine amout greater than 0 insert into fine table

if fine > 0 then
  insert into fine(roll_no,curDate,fineAmt) values(roll,curDate,fine);
end if;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        dbms_output.put_line('No record found for the provided roll number and book name.');
    WHEN OTHERS THEN 
        dbms_output.put_line('Other error occurred: ' || SQLERRM);

end;

/


--table creation templets
--borowwer table
create table borrower(roll_no int,name varchar(40),bookName varchar(40),issuedate date,status char(1));
--fine table demonstration
create table fine(roll_no int,curDate  date,fineAmt float);
--insert commands
insert into borrower(roll_no,name,bookName,issuedate,status) values(111,'vedant','science',to_date('2024-10-16','yy-mm-dd'),'I');