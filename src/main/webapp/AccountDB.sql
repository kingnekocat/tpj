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

insert into account01 values ('admin','admin','3','4','5','6','서울','8');
insert into account01 values ('4','5','3','4','5','6','서울','8');
insert into account01 values ('ej46','1','SEJ','ej','20','여','대전','mz');
insert into account01 values ('bb','12bB!','5','4','5','6','서울','8');

select * from ACCOUNT01;

update account01
set name = '하이', pw = '1234', nickname = '바이', gender = '여', 
region = '경기', kakao = 'bye'
where id = 'sdfff';

delete ACCOUNT01 where id = 'aaaaa';

select id 
from ACCOUNT01 
where name = '짱구' and kakao = 'bobo';
