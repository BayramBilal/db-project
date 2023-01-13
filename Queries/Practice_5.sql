create table Developer
(

                           Id_Number Integer primary key,

                           Names varchar(30),

                           Salary Integer

);

create table Tester(

                        Id_Number Integer primary key,

                        Names varchar(30),

                        Salary Integer

);



insert all

    into Developer values (1, 'Nurullah', 155000)

into Developer values (2, 'Safwan', 142000)

into Developer values (3, 'Erhan', 850000)

into Developer values (4, 'Seyfo', 120000)

into tester values (1, 'Seyfo', 110000)

into tester values(2, 'Hakan', 105000)

into tester values (3, 'Ibrohim', 100000)

select * from dual;

commit work;

select * from DEVELOPER join TESTER on Developer.Id_Number=Tester.Id_Number;
select * from DEVELOPER inner join TESTER on Developer.Id_Number=Tester.Id_Number;
select * from DEVELOPER full outer join TESTER on Developer.Id_Number=Tester.Id_Number;
select * from DEVELOPER left join TESTER on Developer.Id_Number=Tester.Id_Number;
select * from DEVELOPER right join TESTER on Developer.Id_Number=Tester.Id_Number;