--make necessary tables
create table borrowed(roll_no int,name varchar(20),issueDate date,bbookName varchar(20));

--make table  for fine
create table fineEntries(roll_np int,fineAmt int);

--insert dummy data
insert into borrowed(roll_no,name,issueDate,bbookName) values(1,'michel',to_date('2023-9-10','yy-mm-dd'),'fireworks');

--write code here for unnamed block

set srveroutput on;

declare
 roll number;
 issueDateLocal date;
 curDateLocal date;
 fineAmtLocal number;
 bookNameLocal varchar2(100); 
 diff number;

 begin
  dbms_output.put_line('enter name of book');
  bookNameLocal :='&bookNameLocal';
  dbms_output.put_line('enter roll of stud');
  roll:=&roll;
  select issueDate into issueDateLocal from borrowed where roll_no=roll and bbookName=bookNameLocal;

  select sysdate into curDateLocal from dual;
  diff:=trunc(curDateLocal-issueDateLocal);

  if diff <=30 then
    dbms_output.put_line('no fine will charged');
  elsif diff >=30 then
    dbms_output.put_line('fine charged in twice manner');
  else
    dbms_output.put_line('fine charged as 5 timies');
  end if;

  end;
  /
  
