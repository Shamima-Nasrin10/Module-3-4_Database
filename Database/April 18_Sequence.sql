create sequence sales_reps_id
increment by 1
START WITH 100
Maxvalue 99999
nocache
nocycle;

select sales_reps_id.nextval
from dual;

select sales_reps_id.currval
from dual;

insert into sales_reps values(sales_reps_id.nextval, 'Shamima', 40000,0.02);

insert into sales_reps values(sales_reps_id.nextval, 'Adiba',50000,0.25);

select * from sales_reps;

rollback;

create sequence student_id
increment by 1
START WITH 1
Maxvalue 99999
nocache
nocycle;

create table student (
id number(5) default student_id.nextval constraint sys_student_id primary key,
name varchar2(30) not null,
email varchar2(60) not null constraint student_email_unique unique
);

insert into student
values(default, 'Shams', 'shams@gmail.com');

insert into student
values(default, 'Adiba', 'adiba@gmail.com');

insert into student
values(default, 'Afifa', 'afifa@gmail.com');

select * from student;

describe user_sequence;


