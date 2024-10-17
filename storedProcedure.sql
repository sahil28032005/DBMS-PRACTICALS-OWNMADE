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