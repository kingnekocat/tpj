create table team_restaurant(
	tr_num number(3) primary key,
	tr_name varchar2 (30 char) not null,
	tr_food varchar2 (30 char) not null,
	tr_region varchar2 (30 char) not null,
	tr_information varchar2 (300 char) not null,
	tr_img varchar2 (300 char) not null
);

drop table TEAM_RESTAURANT;

create sequence team_restaurant_seq;

insert into team_restaurant values (team_restaurant_seq.nextval, '����1', '�ѽ�', '����', '�Ұ�', 'img')
insert into team_restaurant values (team_restaurant_seq.nextval, '����2', '�ѽ�', '����', '�Ұ�', 'img' )
insert into team_restaurant values (team_restaurant_seq.nextval, '����3', '�߽�', '�λ�', '�Ұ�', 'img')
insert into team_restaurant values (team_restaurant_seq.nextval, '����4', '�Ͻ�', '�뱸', '�Ұ�', 'img')
insert into team_restaurant values (team_restaurant_seq.nextval, '����5', '�Ͻ�', '�뱸', '�Ұ�', 'img')
insert into team_restaurant values (team_restaurant_seq.nextval, '����6', '�Ͻ�', '���', '�Ұ�', 'img')
insert into team_restaurant values (team_restaurant_seq.nextval, '����7', '���', '����', '�Ұ�', 'img')
insert into team_restaurant values (team_restaurant_seq.nextval, '����8', '���', '�뱸', '�Ұ�', 'img')

-- ������� 1:�߽� 2:�Ͻ� 3:�ѽ� 4:��� = --

select * from team_restaurant;


select * from team_restaurant where tr_name like '%����%'
