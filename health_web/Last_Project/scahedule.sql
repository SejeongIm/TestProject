use master;
Create Table schedule (
seq int Identity(1,1) Primary Key, userID nvarchar(30) not null,
sDate date not null,
sTime nvarchar(12) not null,
toDo nvarchar(max) not null,
hasDone char(1) Default('N')
)
select * from schedule;