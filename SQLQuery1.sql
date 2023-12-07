create database OurExerciseDb
on primary(Name='Customer_Db',fileName='D:\phase 2\Day-1\OurExercise_Db.mdf',
size=24MB,Maxsize=48MB,filegrowth=8MB)
log on(name='Customer_Db_log',filename='D:\phase 2\Day-1\OurExercise_Db_log.ldf')
COLLATE SQL_Latin1_General_CP1_CI_AS

use OurExerciseDb
create table Product(
PId int primary key,
PName nvarchar(50) not null,
PPrice float check(PPrice>=50 and PPrice<=100000),
PCompany nvarchar(50) check(PCompany in('Samsung','apple','Redmi','HTC')),
PQty int DEFAULT 1 check(PQty>=1)
)
insert into Product Values(1,'Deep',50000,'Samsung',2);
insert into Product Values(2,'Rayar',60000,'apple',4);
insert into Product Values(3,'Jambu',70000,'Redmi',10);
select * from Product