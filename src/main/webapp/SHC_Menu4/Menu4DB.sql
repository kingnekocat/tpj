create table menu4_01 (
m_no number(5) primary key,
m_title varchar2 (30 char) not null,
m_nickname varchar2 (100 char) not null,
m_txt varchar2 (500 char) not null,
m_img varchar2 (300 char) not null,
m_date date not null,
m_id varchar2 (300 char) not null
);

drop table menu4_01;

create sequence menu4_01_seq;

insert into menu4_01 values(menu4_01_seq.nextval,'제목1','닉네임1','내용1','사진1',sysdate,'아이디1');
insert into menu4_01 values(menu4_01_seq.nextval,'제목1','닉네임1','내용1','사진1',sysdate,'아이디2');
insert into menu4_01 values(menu4_01_seq.nextval,'꾸짖을 갈(喝)!!!!','석가','아제아제','없음',sysdate,'budda');
insert into menu4_01 values(menu4_01_seq.nextval,'배고픈 사람 접어','예수','그러자 지구가 반으로 접혔다','없음',sysdate,'jesu');


select * from menu4_01;