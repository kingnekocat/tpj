create table menu4_01 (
m_no number(5) primary key,
m_title varchar2 (30 char) not null,
m_nickname varchar2 (100 char) not null,
m_txt varchar2 (500 char) not null,
m_img varchar2 (300 char) not null,
m_date date not null
);

create sequence menu4_01_seq;

insert into menu4_01 values(menu4_01_seq.nextval,'����1','�г���1','����1','����1',sysdate);
insert into menu4_01 values(menu4_01_seq.nextval,'����1','�г���1','����1','����1',sysdate);


select * from menu4_01;