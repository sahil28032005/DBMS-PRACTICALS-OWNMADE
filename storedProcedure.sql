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

INSERT INTO students (rno, name, total, class) 
VALUES (1, 'John Doe', 950, NULL);

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



//for fine procedure code

1) tables:
//members table
create table member(id number primary key,name varchar(100),phone varchar(15));
//book table
create table book(id number primary key,title varchar(100),status varchar(10));
//issue table
create table issue(member_id number,book_id number,issue_date date,returnDate date,fine number default 0, primary key(book_id,member_id),foreign key(member_id) references member(id),foreign key(book_id) references book(id));

//main procedure for doing that
create or replace procedure issueBook(mem_id in number,pbook_id in number,returnDatep in date) as
begin
    update issue set returnDate = returnDatep,fine=case when (returnDatep - issue_date) > 15 then (returnDatep - issue_date -15) * 5 
    else 0
    end
    where book_id=pbook_id AND member_id = mem_id;

    --mark that book sa avaliable
   commit;
end;
/

--sample records to store
-- Insert sample members
INSERT INTO member (id, name, phone) VALUES (1, 'John Doe', '123-456-7890');
INSERT INTO member (id, name, phone) VALUES (2, 'Jane Smith', '987-654-3210');
-- Insert sample books
INSERT INTO book (id, title, status) VALUES (101, 'Database Fundamentals', 'issued');
INSERT INTO book (id, title, status) VALUES (102, 'Advanced SQL', 'issued');
-- Insert sample issue records
INSERT INTO issue (member_id, book_id, issue_date, returnDate, fine) 
VALUES (1, 101, TO_DATE('2024-01-01', 'YYYY-MM-DD'), TO_DATE('2024-03-01', 'YYYY-MM-DD'), 0);

INSERT INTO issue (member_id, book_id, issue_date, returnDate, fine) 
VALUES (2, 102, TO_DATE('2024-01-10', 'YYYY-MM-DD'), TO_DATE('2024-02-25', 'YYYY-MM-DD'), 0);

//execute
EXEC issueBook(1, 101, SYSDATE);


//attandance calcualation procedure

--table format
CREATE TABLE Student (
    Roll NUMBER PRIMARY KEY,
    Name VARCHAR2(100),
    Attendance NUMBER,
    Status VARCHAR2(20)
);

//dummy values to insert
INSERT INTO Student (Roll, Name, Attendance, Status)
VALUES (1, 'John Doe', 80, 'Not Detained');

INSERT INTO Student (Roll, Name, Attendance, Status)
VALUES (2, 'Jane Smith', 60, 'Not Detained');

INSERT INTO Student (Roll, Name, Attendance, Status)
VALUES (3, 'Alice Brown', 90, 'Not Detained');

INSERT INTO Student (Roll, Name, Attendance, Status)
VALUES (4, 'Bob White', 50, 'Not Detained');

--procedure to check his term attandance status
--idea is take his roll number and fetch his attandance and then update status or display msg anything
set serveroutput on;
create or replace procedure chkAttendance(rno in number) as attendance number;
begin 
    --fetch his attancance in precntages assuming 
     select Attendance into attendance from Student where  Roll=rno;

     --check attendance and set status
     if attendance < 75 then
        DBMS_OUTPUT.PUT_LINE('TERM NOT GRANTED');
     else
         DBMS_OUTPUT.PUT_LINE('TERM  GRANTED');
     end if;

     commit;

exception
    when no_data_found then
         DBMS_OUTPUT.PUT_LINE('NO DATA FOUND');
    when others then
        DBMS_OUTPUT.PUT_LINE('OTHER EXCEPTION');
        rollback;
end;
/

//execution command 
 EXEC chkAttendance(101);  -- Replace `101` with the Roll number of the student




    
    


