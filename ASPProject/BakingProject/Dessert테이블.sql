	use master;
	create table Dessert(
	cafeID varchar(30) primary key,
	Dname varchar(20) not null,
	category varchar(20),
	ingredient varchar(20),
	price int)



insert into Dessert Values ('admin', '맛있는빵','빵', '밀가루',2000) 
insert into Dessert Values ('happy', '초코액션가면','케이크','초콜릿',30000)
insert into Dessert Values ('princess', '공주마카롱','마카롱','딸기', 2500)
insert into Dessert Values ('study', '킹왕빵','초콜릿','빵', 3000)

select* from Dessert
