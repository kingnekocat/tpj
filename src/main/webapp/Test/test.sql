create table friendlist (
	f_num number(3) primary key,
	f_myid varchar2 (30 char) not null,
	f_yourid varchar2 (30 char) not null
)
				
create sequence friendlist_seq;
				
select * from friendlist;

select * from friendlist where f_myid=4;

insert into frinedlist2 values (frinedlist2_seq.nextval, 'kim', 'park')
insert into friendlist2 values (friendlist2_seq.nextval, 'eng' , 'kor')
SELECT * FROM USER_SEQUENCES;