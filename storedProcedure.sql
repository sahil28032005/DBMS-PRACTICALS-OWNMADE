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