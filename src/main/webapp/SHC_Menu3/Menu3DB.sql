create table menu3_01 (
m_no number(5) primary key,
m_title varchar2 (30 char) not null,
m_nickname varchar2 (100 char) not null,
m_txt varchar2 (500 char) not null,
m_kakao varchar2 (100 char) not null,
m_date date not null,
m_id varchar2 (300 char) not null,
m_region varchar2 (300 char) not null,
m_gender varchar2 (300 char) not null
);

drop table menu3_01

create sequence menu3_01_seq;

insert into menu3_01 values(menu3_01_seq.nextval,'제목1','닉네임1','내용1','카카오1',sysdate,'아이디1','서울','남');
insert into menu3_01 values(menu3_01_seq.nextval,'제목2','닉네임2','내용2','카카오2',sysdate,'아이디2','경기','여');


select * from menu3_01;

select * from menu3_01 where m_title like '%스파%';