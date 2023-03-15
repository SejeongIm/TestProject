use master;
Create Table AI (
 이름  varchar(30) primary key,
 용도  varchar(300) ,
 가격 int,

)
insert into AI values ('헤이카카오','휴대용',200000);
insert into AI values ('구글 홈 미니','휴대용',60000);
insert into AI values ('SK NUGU','가정용',100000);
insert into AI values ('기가지니 미니','가정용',90000);
insert into AI values ('클로바 클락','가정용',120000);
insert into AI values ('애플 스마트 스피커','휴대용',180000);
select * from AI;