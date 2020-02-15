DROP TABLE IF EXISTS Import_table;

create table Import_table (Name varchar(50) not null, Idn varchar(5) not null primary key, Mobile int(10) not null, Email_id varchar(50) not null);

insert into Import_table values('ak0','ak101',1234567890,'qbc@gmail.com');
insert into Import_table values('ak1','ak102',1122334455,'ggrt@gov.in');
insert into Import_table values('ak2','ak103',1412563894,'kjl@apual.in');
insert into Import_table values('ak3','ak104',1020304050,'yyutr@gmail.com');
