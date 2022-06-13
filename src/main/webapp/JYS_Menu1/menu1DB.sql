create table tpj_restaurant(
	tpjr_num number(3) primary key,
	tpjr_name varchar2 (30 char) not null,
	tpjr_food varchar2 (30 char) not null,
	tpjr_region varchar2 (30 char) not null
);


create sequence tpj_restaurant_seq;

insert into tpj_restaurant values (tpj_restaurant_seq.nextval, '�����̸�', '�������', '����')
insert into tpj_restaurant values (tpj_restaurant_seq.nextval, '�����̸�1', '1', '����2')
insert into tpj_restaurant values (tpj_restaurant_seq.nextval, '�����̸�2', '2', '����1')
insert into tpj_restaurant values (tpj_restaurant_seq.nextval, '�����̸�3', '3', '����1')
insert into tpj_restaurant values (tpj_restaurant_seq.nextval, '�����̸�4', '4', '����1')
insert into tpj_restaurant values (tpj_restaurant_seq.nextval, '�����̸�5', '4', '����1')

-- ������� 1:�߽� 2:�Ͻ� 3:�ѽ� 4:��� = --

select * from tpj_restaurant;