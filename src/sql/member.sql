select * from member;
create table member(
       		id varchar2(20) primary key,
       		pw varchar2(20),
       		name varchar2(20),
       		reg_date varchar2(20),
       		ssn varchar2(10),
       		email varchar2(30),
       		profile_img varchar2(100)
            );
-- CREATE            
insert into member(id,pw,name,reg_date,ssn,email,profile_img)
values('song','1','송지효','2012-06-01','850901-1','song@test.com','song.jpg');
insert into member(id,pw,name,reg_date,ssn,email,profile_img)
values('hong','1','홍길동','2015-07-01','901201-1','hong@test.com','hong.jpg');
insert into member(id,pw,name,reg_date,ssn,email,profile_img)
values('you','1','유관순','2014-07-01','610701-4','you@test.com','you.jpg');
insert into member(id,pw,name,reg_date,ssn,email,profile_img)
values('hong2','1','홍길동','2015-07-01','820601-1','hong2@test.com','hong2.jpg');
insert into member(id,pw,name,reg_date,ssn,email,profile_img)
values('kim','1','김유신','2015-06-08','810611-1','kim@test.com','kim.jpg');
-- READ ()
select * from member; -- list
select * from member where id = 'hong'; -- findByPK (primary key)
select * from member where gender = '남'; -- findByNotPK
select count(*) as count from member; -- count

-- UPDATE
update member set email = id || '@test.com';               <!-- 아래와 같은 방법인데 이 방법은 문법을통해 결합한다 -->
update member set email = 'reper@test.com' where id = 'reper';
alter table member add email varchar2(30);
alter table member add profile_img varchar2(100);
update member set ssn = '580301-2' where id = 'k';
update member set profile_img = id || '.jpg' where profile_img IS NULL;

-- DELETE
delete from member where id = 'kim';


