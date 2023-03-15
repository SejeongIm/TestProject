use master
create table Member ( 
UserID varchar(30) primary key,
Password varchar(30) not null,
Name varchar(30) not null,
Phone varchar(30)
)

select * from Member;

insert into Member(UserID, Password, Name, Phone)
      values ('ykchoi', 1111, '우채연','010-111-1111');


drop table Member;