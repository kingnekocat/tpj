create table menu2_01 (
m_no number(5) primary key,
m_title varchar2 (30 char) not null,
m_nickname varchar2 (100 char) not null,
m_txt varchar2 (500 char) not null,
m_img varchar2 (300 char) not null,
m_date date not null,
m_id varchar2 (300 char) not null
);

drop table menu2_01;

create sequence menu2_01_seq;

insert into menu2_01 values(menu2_01_seq.nextval,'제목1','닉네임1','내용1','사진1',sysdate,'아이디1');
insert into menu2_01 values(menu2_01_seq.nextval,'제목1','닉네임1','내용1','사진1',sysdate,'아이디2');


select * from menu2_01;