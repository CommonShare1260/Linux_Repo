USE learning;

DROP TABLE IF EXISTS tableLearn;

create table tableLearn (Name varchar(50) not null, Id varchar(5) not null, Mobile int(10) not null);

insert into tableLearn values('Jhon','01101',1234567890);
insert into tableLearn values('Parker','01102',1122334455);
insert into tableLearn values('Jack','01103',1412563894);
insert into tableLearn values('Adam','01104',1020304050);
