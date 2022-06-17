create table account01(
	id varchar2 (30 char) primary key,
	pw varchar2 (30 char) not null,
	name varchar2 (30 char) not null,
	nickname varchar2 (30 char) not null,
	age varchar2 (3 char) not null,
	gender char (1 char) not null,
	region varchar2 (30 char) not null,
	kakao varchar2 (30 char) not null
);

insert into account01 values ('3','2','3','4','5','6','지역1','8');
insert into account01 values ('4','5','3','4','5','6','서울','8');

select * from ACCOUNT01;

update account01
set name = '하이', pw = '1234', nickname = '바이', gender = '여', 
region = '경기', kakao = 'bye'
where id = 'sdfff';

delete ACCOUNT01 where id = 'aaaaa';
