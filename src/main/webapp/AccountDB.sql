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

insert into account01 values ('3','2','3','4','5','6','Áö¿ª1','8');

select * from ACCOUNT01;