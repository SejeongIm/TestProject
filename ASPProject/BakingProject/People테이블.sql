use master;
create table People(
	UserID varchar(30) primary Key,
	Password varchar(30) not null,
	Name varchar(30) not null,
	Phone varchar(30),
	field varchar(30)
)

insert into People Values ('admin', '1111', '관리자','02-333-3333','빵') 
insert into People Values ('happy', '1111', '짱구','02-333-3344','케이크')
insert into People Values ('princess', '1111', '유리','010-3333-2345','마카롱')
insert into People Values ('study', '1111', '철수' , '010-9999-9999','빵')

select* from People