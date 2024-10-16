
SQL*Plus: Release 21.0.0.0.0 - Production on Wed Oct 16 22:33:36 2024
Version 21.3.0.0.0

Copyright (c) 1982, 2021, Oracle.  All rights reserved.

Enter user-name: system
Enter password:
Last Successful login time: Wed Oct 16 2024 22:17:23 +05:30

Connected to:
Oracle Database 21c Express Edition Release 21.0.0.0.0 - Production
Version 21.3.0.0.0

SQL> select * from lib_audit;

no rows selected

SQL> truncate table lib_audit;

Table truncated.

SQL> insert into library(roll_no,name,date_of_issue,book_name,status,author) values(1,'alice',to_date('2023-4-1','yy-mm-dd'),'firebolt','avaliable','michel');
insert into library(roll_no,name,date_of_issue,book_name,status,author) values(1,'alice',to_date('2023-4-1','yy-mm-dd'),'firebolt','avaliable','michel')
*
ERROR at line 1:
ORA-00001: unique constraint (SYSTEM.SYS_C008317) violated


SQL> SELECT * FROM library WHERE roll_no = 1;

   ROLL_NO NAME                                     DATE_OF_I
---------- ---------------------------------------- ---------
BOOK_NAME                      STATUS
------------------------------ --------------------
AUTHOR
--------------------------------------------------
         1 mike                                     19-MAY-23
philosophers stone             avalliable
ramesh doshi


SQL> SELECT * FROM library WHERE roll_no = 1;

   ROLL_NO NAME                                     DATE_OF_I
---------- ---------------------------------------- ---------
BOOK_NAME                      STATUS
------------------------------ --------------------
AUTHOR
--------------------------------------------------
         1 mike                                     19-MAY-23
philosophers stone             avalliable
ramesh doshi


SQL> create or replace trigger updateTrig after update on library for each row begin insert into audit_lib(roll_no,name,date_of_issue,book_name,status,author,operation_type) values(:old.name,:old.date_of_issue,:old.book_name,:old.status,:old.author,'update'); end;
  2  /

Warning: Trigger created with compilation errors.

SQL> create or replace trigger updateTrig after update on library for each row begin insert into audit_lib(roll_no,name,date_of_issue,book_name,status,author,operation_type) values(:old.name,:old.date_of_issue,:old.book_name,:old.status,:old.author,'update'); end;
  2  /

Warning: Trigger created with compilation errors.

SQL> show errors;
Errors for TRIGGER UPDATETRIG:

LINE/COL ERROR
-------- -----------------------------------------------------------------
1/7      PL/SQL: SQL Statement ignored
1/96     PL/SQL: ORA-00947: not enough values
SQL> create or replace trigger updateTrig after update on library for each row begin insert into audit_lib(roll_no,name,date_of_issue,book_name,status,author,operation_type) values(:old.name,:old.date_of_issue,:old.book_name,:old.status,:old.author,'update'); end;/
  2  ;
  3  /

Warning: Trigger created with compilation errors.

SQL> create or replace trigger updateTrig after update on library for each row begin insert into audit_lib(roll_no,name,date_of_issue,book_name,status,author,operation_type) values(:old.roll_no,:old.name,:old.date_of_issue,:old.book_name,:old.status,:old.author,'update'); end;
  2  /

Warning: Trigger created with compilation errors.

SQL> show errors
Errors for TRIGGER UPDATETRIG:

LINE/COL ERROR
-------- -----------------------------------------------------------------
1/7      PL/SQL: SQL Statement ignored
1/19     PL/SQL: ORA-00942: table or view does not exist
SQL> create or replace trigger updateTrig after update on library for each row begin insert into lib_audit(roll_no,name,date_of_issue,book_name,status,author,operation_type) values(:old.roll_no,:old.name,:old.date_of_issue,:old.book_name,:old.status,:old.author,'update'); end;
  2  ;
  3  /

Warning: Trigger created with compilation errors.

SQL> create or replace trigger updateTrig after update on library for each row begin insert into lib_audit(roll_no,name,date_of_issue,book_name,status,author,operation_type) values(:old.roll_no,:old.name,:old.date_of_issue,:old.book_name,:old.status,:old.author,'update'); end;
  2  /

Trigger created.