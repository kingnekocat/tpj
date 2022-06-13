create table tpj_restaurant(
	tpjr_num number(3) primary key,
	tpjr_name varchar2 (30 char) not null,
	tpjr_food varchar2 (30 char) not null,
	tpjr_region varchar2 (30 char) not null
);


create sequence tpj_restaurant_seq;

insert into tpj_restaurant values (tpj_restaurant_seq.nextval, '가게이름', '취급음식', '지역')


select * from tpj_restaurant;