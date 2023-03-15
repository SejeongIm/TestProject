
use master
CREATE TABLE board (
seq int identity(1,1) primary key,
userID nvarchar(30),
name nvarchar(50) not null,
pwd nvarchar(50) not null,
title nvarchar(100) not null,
body nvarchar(max),
ref_id int default(0),
inner_id int default(0),
depth int default(0),
hit int default(0),
deleted char(1) default('N'),
wDate datetime,
fName nvarchar(50),
fSize int default(0),
hitDown int default(0)
)

select * from board