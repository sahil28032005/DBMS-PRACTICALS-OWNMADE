create or replace procedure myProcedure(
    pname in varchar2,
    pmarks in number,
    pclass out varchar2
) as 
begin 
 if pmarks <= 1500 and pmarks >= 990 then
    pclass:='dist';
 elsif pmarks <990  and pmarks >= 900 then
    pclass:='first';
 elsif pmarks < 900 and pmarks >= 825 then
    pclass:='second';
 else 
   pclass:='not categorized';
 end if;

end myProcedure;
/

//demonstration
SET SERVEROUTPUT ON;

DECLARE
    v_name VARCHAR2(40) := 'John Doe'; -- Example student name
    v_marks NUMBER := 950;              -- Example marks
    v_class VARCHAR2(10);               -- Variable to hold the class category
BEGIN
    myProcedure(v_name, v_marks, v_class); -- Call the procedure

    DBMS_OUTPUT.PUT_LINE('Student Name: ' || v_name);
    DBMS_OUTPUT.PUT_LINE('Marks: ' || v_marks);
    DBMS_OUTPUT.PUT_LINE('Class: ' || v_class); -- Output the class category
END;
/

--another procedure pracctice
create or replace procedure calcMarks(totalScore in number,sname in varchar2,grade out varchar2) as begin 
if totalScore >= 950 and totalScore <=1500 then
   grade:='dist';
   dbms_output.put_line('in dist class');
elsif totalScore >=850 and totalScore <=950 then
   grade:='second class';
   dbms_output.put_line('in second class');
elsif totalScore>500 and totalScore <=700 then
   grade:='third class';
   dbms_output.put_line('in third class');
else 
   grade:='no category match';
   dbms_output.put_line('no category match');
end if;

end calcMarks;
/

--make call for procedure
set serveroutput on;

DECLARE
 grade varchar(20);
 name varchar(20):='tommy versetti';
 obtained int:=912;

begin
 --take user inout



 --make procedure call
 calcMarks(obtained,name,grade);
 
 end;

 /


 --according to practical latest updated procedure code

--  1) create table first for the question

create table students (rno number,name varchar(50),total number,class varchar(50));

create or replace procedure calcMarks(total in number,name in varchar,grade out varchar) as
begin
    if total>=990 and total <=1500 then
        grade:='dist'; 
    elsif total<=989 and total >=900 then
        grade:='first class';
    elsif total <=899 and total >=825 then
        grade:='hsec class';
    elsif total<=824 and total >=600 then
        grade:='sec class';
    else
        grade:='fail';
    end if;
end;
/

//another best way

create or replace procedure calcGrade as
begin
    for rec in(select rno,total from students where class is NULL) loop
         if rec.total>=990 and rec.total <=1500 then
            --write update query as it is here without any ....
            update students set class = 'dist' where rno=rec.rno;
         elsif rec.total<=989 and rec.total >=900 then
             update students set class = 'first class' where rno=rec.rno;
         elsif rec.total <=899 and rec.total >=825 then
             update students set class = 'dihsec class' where rno=rec.rno;
         elsif rec.total<=824 and rec.total >=600 then
             update students set class = 'sec class' where rno=rec.rno;
         else
          update students set class = 'FAIL' where rno=rec.rno;
         end if;
         end loop;
         commit;
end;
/

//for execute use
EXEC calcGrade;
