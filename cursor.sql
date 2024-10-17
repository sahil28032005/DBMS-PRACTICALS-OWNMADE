--we have lates namde collection present already apply on that

set serveroutput on;

declare
  cursor myCursor is
    select roll_no,bookName from borrower;

myVar1 borrower.roll_no%TYPE;
myVar2 borrower.bookName%TYPE;

begin
 open myCursor;

  LOOP
   fetch myCursor into myVar1,myVar2;
   exit when myCursor%NOTFOUND;

   dbms_output.put_line('roll'||myVar1||'book'||myVar2);

 end LOOP;
 close myCursor;

END;

/