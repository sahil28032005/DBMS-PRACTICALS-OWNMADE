-- create table student(rno number,name varchar(50),marks number,class varchar(30));

-- procedure for calculaitng values
create or replace function countClasses 
return varchar is 
    distinction number :=0;
    first_class number :=0;
    higher_sec_class number :=0;
    sec_class number :=0;
    fail number :=0;

begin 
   for rec in(select marks from student) loop
       if rec.marks >=75 then 
          distinction := distinction+1;
       elsif rec.marks between 60 and 74 then
           first_class:= first_class+1;
       elsif rec.marks between 50 and 59 then
           higher_sec_class:= higher_sec_class+1;
       elsif rec.marks between 40 and 49 then 
           sec_class:=sec_class+1;
       else
           fail:=fail+1;
       end if;
    end loop;
   --print calculated values for output
    dbms_output.put_line('distinction' || distinction);
    dbms_output.put_line('First Class'|| first_class);
    dbms_output.put_line('Higher Second Class'|| higher_sec_class);
    dbms_output.put_line('Second Class'|| sec_class);
    dbms_output.put_line('fail'|| fail);

    --return value is compulsory as we are inside functio return blank
    return '';
end;
/

//trigger combination with funtion
-- create table books(bid number,title varchar(50),author varchar(50),published number);
-- create table booklog(logid number,title varchar(50),author varchar(50),publshed number);

--create actual trigger here as per probem statement
create or replace trigger deltrig after delete on books for each row 
begin 
  --just add values inside logs table just like kafka and reddis :)
  insert into booklog(logid,title,author,published) values(:old.bid,:old.title,:old.author,:old.published);

end;
/