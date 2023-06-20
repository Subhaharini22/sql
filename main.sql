create table student(Id integer primary key, Name varchar(20),Age integer,Department varchar(50),Subject varchar(10),Marks integer);

insert into student values(1,'Subha',19,'ECE','data structures',65);
insert into student values(2,'sanjay',19,'CSE','data structures',96);
insert into student values(3,'sv',19,'CSE','data structures',88);
insert into student values(4,'Niru',19,'EEE','Basic EEE',92);
insert into student values(5,'vachu',21,'CSE','data structures',95);
insert into student values(6,'Vithu',20,'Mech','Thermodynamics',73);
insert into student values(7,'Sathish',20,'ECE','Computer networks',59);
insert into student values(8,'Shaik',22,'Mech','Thermodynamics',75);
insert into student values(9,'Venu',21,'ECE','Computer networks',90);
insert into student values(10,'Stejoys',18,'IT','data structures',99);

select * from student;

select count (Id) from student;
select avg(Marks) from student;
select sum(Marks) from student;

create table stdcourse(course Id integer,Name varchar(20));

insert into stdcourse values(1,'Subha');
insert into stdcourse values(1,'Subha');
insert into stdcourse values(2,'Sanjay');
insert into stdcourse values(3,'Shaik');
insert into stdcourse values(4,'Sathish');
insert into stdcourse values(5,'Vachu');
insert into stdcourse values(6,'Vithu');
insert into stdcourse values(7,'Stejoys');
insert into stdcourse values(8,'venu');
insert into stdcourse values(9,'Sulur');
insert into stdcourse values(10,'SV');

--inner join

select stdcourse.course Id,student.Name,student.Subject from student inner join stdcourse on student.Name = stdcourse.Name;

--left join

select student.Id,student.Name,stdcourse.course Id from student Left join stdcourse on student.Name = stdcourse.Name;

--right join

select stdcourse.course Id,stdcourse.name from stdcourse left join student on student.Name = stdcourse.Name;

--outer join

select student.Name,stdcourse.course Id from student left join stdcourse on student.Name = stdcourse.Name UNION select stdcourse.course Id,stdcourse.Name from stdcourse left join student on student.Name = stdcourse.Name;




