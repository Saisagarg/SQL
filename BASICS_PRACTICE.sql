-- practice basics of sql
select * from customers
-- filter data using where clause
select id from person
where birth_date is null

--sorting the data using order by command
select 
	*
from customers
order by country asc, score desc

--aggrate the data , means sum, avg , min , max using group by command
select 
country,
max(score) as sum_score
from customers
where country = 'usa'
group by country
having sum(score)>800

-- using distnict command remove dupilicates
select distinct country from customers

--if i want only limited no.of rows , use TOP command 
select top 3 * from customers

--static values
select 234

select 
id, first_name,'empty' as country
from customers

-- now sql queries
--DDL
-- create
create table students(
id int not null,
first_name varchar(30) not null,
last_name varchar(30) ,
grade char ,
cgpa decimal
)
select * from students

--alter
--if you want to add columns or delete columns
alter table students
add gmail varchar(59)

alter table students
drop column gmail

-- if we want to delet the entire table 
--use drop
drop table students;

--DML
--INSERT DATA
-- method 1
insert into students
VALUES
(1, 'Sai', 'Sagar', 'A', 8.45),
(2, 'Ravi', 'Kumar', 'B', 7.20),
(3, 'Anu', 'Priya', 'A', 9.10),
(4, 'Rahul', 'Sharma', 'C', 6.50),
(5, 'Neha', 'Verma', 'B', 7.85),
(6, 'Amit', 'Patel', 'A', 8.90),
(7, 'Pooja', 'Reddy', 'B', 7.40),
(8, 'Kiran', 'Naik', 'C', 6.10),
(9, 'Suresh', 'Babu', 'A', 9.50),
(10, 'Meena', 'Iyer', 'B', 7.95);
select * from students

--method 2
insert into students
select id,person_name,'empty','e','837529'
from person

--update
update students
set 
  grade = 'F',
  cgpa = 9
where grade='e'

select * from students

--delete data from table
delete from students
where grade='f'

--delete the entire data from the table 
truncate table students


