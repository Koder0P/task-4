use librarydb;
show tables;

select * from library;
select * from loans;
select count(*) from loans; 
select count(*) from books;
select count(*) from members;

select count(*) from loans where fee >= 100;

select min(fee) from loans;
select max(fee) from loans;

select sum(fee) from loans;

select avg(fee) from loans;
select * from loans where fee > (select avg(fee) from loans);

select avg(NoOfDays) as AverageDays, fee from loans Group By fee;

select fee,NoOfDays,MemberID from loans group by NoOfDays having fee > 5;





