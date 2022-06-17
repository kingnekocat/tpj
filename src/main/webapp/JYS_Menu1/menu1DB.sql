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

insert into team_restaurant values (team_restaurant_seq.nextval, '가게1', '한식', '서울', '소개', 'img')
insert into team_restaurant values (team_restaurant_seq.nextval, '가게2', '한식', '서울', '소개', 'img' )
insert into team_restaurant values (team_restaurant_seq.nextval, '가게3', '중식', '부산', '소개', 'img')
insert into team_restaurant values (team_restaurant_seq.nextval, '가게4', '일식', '대구', '소개', 'img')
insert into team_restaurant values (team_restaurant_seq.nextval, '가게5', '일식', '대구', '소개', 'img')
insert into team_restaurant values (team_restaurant_seq.nextval, '가게6', '일식', '경기', '소개', 'img')
insert into team_restaurant values (team_restaurant_seq.nextval, '가게7', '양식', '서울', '소개', 'img')
insert into team_restaurant values (team_restaurant_seq.nextval, '가게8', '양식', '대구', '소개', 'img')

-- 취급음식 1:중식 2:일식 3:한식 4:양식 = --

select * from team_restaurant;


select * from team_restaurant where tr_name like '%가게%'
