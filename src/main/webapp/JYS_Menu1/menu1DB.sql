create table tpj_restaurant(
	tpjr_num number(3) primary key,
	tpjr_name varchar2 (30 char) not null,
	tpjr_food varchar2 (30 char) not null,
	tpjr_region varchar2 (30 char) not null
);


create sequence tpj_restaurant_seq;

insert into tpj_restaurant values (tpj_restaurant_seq.nextval, '가게이름', '취급음식', '지역')
insert into tpj_restaurant values (tpj_restaurant_seq.nextval, '가게이름1', '1', '지역2')
insert into tpj_restaurant values (tpj_restaurant_seq.nextval, '가게이름2', '2', '지역1')
insert into tpj_restaurant values (tpj_restaurant_seq.nextval, '가게이름3', '3', '지역1')
insert into tpj_restaurant values (tpj_restaurant_seq.nextval, '가게이름4', '4', '지역1')
insert into tpj_restaurant values (tpj_restaurant_seq.nextval, '가게이름5', '4', '지역1')

-- 취급음식 1:중식 2:일식 3:한식 4:양식 = --

select * from tpj_restaurant;