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

insert into menu3_01 values(menu3_01_seq.nextval,'�׽�Ʈ1','�г���1','����1','īī��1',sysdate,'���̵�1','����','��');
insert into menu3_01 values(menu3_01_seq.nextval,'�׽�Ʈ2','�г���2','����2','īī��2',sysdate,'���̵�2','����','��');
insert into menu3_01 values(menu3_01_seq.nextval,'�׽�Ʈ3','�г���3','����3','īī��3',sysdate,'���̵�3','����','��');
insert into menu3_01 values(menu3_01_seq.nextval,'�׽�Ʈ4','�г���4','����4','īī��4',sysdate,'���̵�4','����','��');
insert into menu3_01 values(menu3_01_seq.nextval,'�׽�Ʈ5','�г���5','����5','īī��5',sysdate,'���̵�5','���','��');


select * from menu3_01;

select * from menu3_01 where m_title like '%����%';