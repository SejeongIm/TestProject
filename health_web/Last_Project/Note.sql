use master;
Create Table Note (
nID int IDENTITY(1,1) primary key,
userID nvarchar(20),
name nvarchar(20),
content nvarchar(max),
email nvarchar(50),
nDate datetime default(getDate( ))
)

select * from Note;

-- drop table Note;
-- 
use master;
create table GuestBook(
seq int identity(1,1) primary key,
userID nvarchar(30) not null,
name nvarchar(20) not null,email nvarchar(50),
gDate datetime default(getdate()) not null,
title nvarchar(50) not null,
body   text)
insert into GuestBook(userID, name, email, title, body)
      values ('ykchoi', '최윤경', 'ykchoi@baewha.ac.kr','방명록을만들었어요', '여러분~ 많이들러주세요~');
select * from GuestBook;

update GuestBook set userID='woo' where name = '우채연'
