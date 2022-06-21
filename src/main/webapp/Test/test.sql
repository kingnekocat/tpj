create table friendlist (
	f_num number(3) primary key not null,
	f_myid varchar2 (30 char) not null,
	f_yourid varchar2 (30 char) not null
)
				
create sequence friendlist_seq;
				
select * from friendlist;
drop table friendlist;

select * from friendlist where f_myid=1;

insert into frinedlist2 values (frinedlist2_seq.nextval, 'kim', 'park');
insert into friendlist2 values (friendlist2_seq.nextval, 'eng' , 'kor');

SELECT * FROM USER_SEQUENCES;