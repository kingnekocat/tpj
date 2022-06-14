create table team_restaurant(
	tr_num number(3) primary key,
	tr_name varchar2 (30 char) not null,
	tr_food varchar2 (30 char) not null,
	tr_region varchar2 (30 char) not null,
	tr_information varchar2 (300 char) not null
);


create sequence team_restaurant_seq;

insert into team_restaurant values (team_restaurant_seq.nextval, '����1', '�ѽ�', '����', '�Ұ�')
insert into team_restaurant values (team_restaurant_seq.nextval, '����2', '�ѽ�', '����', '�Ұ�')
insert into team_restaurant values (team_restaurant_seq.nextval, '����3', '�߽�', '�λ�', '�Ұ�')
insert into team_restaurant values (team_restaurant_seq.nextval, '����4', '�Ͻ�', '�뱸', '�Ұ�')
insert into team_restaurant values (team_restaurant_seq.nextval, '����5', '�Ͻ�', '�뱸', '�Ұ�')
insert into team_restaurant values (team_restaurant_seq.nextval, '����6', '�Ͻ�', '���', '�Ұ�')
insert into team_restaurant values (team_restaurant_seq.nextval, '����7', '���', '����', '�Ұ�')
insert into team_restaurant values (team_restaurant_seq.nextval, '����8', '���', '�뱸', '�Ұ�')

-- ������� 1:�߽� 2:�Ͻ� 3:�ѽ� 4:��� = --

select * from team_restaurant;