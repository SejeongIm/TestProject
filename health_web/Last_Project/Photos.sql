USE master;
CREATE TABLE Photos (
 imgID int IDENTITY(1,1) primary key,
 userID nvarchar(30) , 
 name nvarchar(50) Default('작성자'),
 pwd nvarchar(50) Default(' '),
 title nvarchar(50) not NULL,
 body nvarchar(max) ,
 fName nvarchar(100) ,
 hit int Default(0),
 pDate datetime Default(getdate())
)

select * from Photos
insert into Photos(name, pwd, title) values('얌냠이', '1111', '사진앨범입니다.');