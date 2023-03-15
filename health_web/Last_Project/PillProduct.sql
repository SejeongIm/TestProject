use master;
create table PillProduct (
	pID varchar(50) primary key,
	pName varchar(20) not null,
	category varchar(20),
	color varchar(20),
	price int
	)

select * from PillProduct
insert into PillProduct values ('001', '알랑이', '알약공급기','BLACK',150000)
insert into PillProduct values ('002', '필라이즈', '알약통','BLACK',17000)
insert into PillProduct values ('003', '얼웨이즈', '알약통','BLACK',13000)
insert into PillProduct values ('004', 'IOTphill', '알약공급기','BLACK',1500000)
insert into PillProduct values ('005', '유산균', '알약','BLACK',10000)
insert into PillProduct values ('006', '오메가3', '알약','BLACK',9000)
insert into PillProduct values ('007', '비타민', '알약','BLACK',8000)
insert into PillProduct values ('008', '단백질', '알약','BLACK',7000)
insert into PillProduct values ('009', '헬스통', '알약공급기','BLACK',120000)
insert into PillProduct values ('010', '작은약국', '알약통','BLACK',5000)