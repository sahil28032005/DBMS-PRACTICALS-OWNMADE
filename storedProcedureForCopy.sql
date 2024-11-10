-- create table Old_Roll_Call(id number primary key,name varchar2(255),address varchar2(200));
-- create table New_Roll_Call(id number primary key,name varchar2(100),address varchar2(200));

//now create procedure

create or replace procedure copy as 

begin

    insert into New_Roll_Call(id,name,address) select id,name,address from Old_Roll_call where (id,name,address) not in (select id,name,address from new_Roll_Call);
    commit;
end;
/

//for execute 

exec copy;