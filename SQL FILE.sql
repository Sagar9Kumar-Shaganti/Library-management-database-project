CREATE DATABASE library;
USE library;

CREATE TABLE Books (
  Book_ID varchar(50) NOT NULL,
  Title varchar(50) not null,
  Number_of_copies int,
  PRIMARY KEY (Book_ID)
);

CREATE TABLE Genres(
Title varchar(50) NOT NULL,
Genre varchar(30) NOT NULL,
PRIMARY KEY (Title)
);

CREATE TABLE Types(
Genre varchar(30) NOT NULL,
Type varchar(15) not null,
PRIMARY KEY (Genre)
);

CREATE TABLE Authors(
Book_ID varchar(50) NOT NULL primary key,
Author_Name varchar(20) not null,
foreign key(Book_ID) references Books(Book_ID)
);

create table Author_Mail_Id(
 Author_Name varchar(20) not null primary key,
 Author_Mail_Id varchar(20) not null
);


create table Publishers(
Book_ID varchar(50) NOT NULL primary key,
Publisher_Name varchar(20) not null,
foreign key(Book_ID) references Books(Book_ID)
);

create table Publishers_Details(
Publisher_Name varchar(20) not null primary key,
Publisher_Address varchar(30) not null,
Publisher_PNO varchar(15) not null
);

create table employees(
employee_ID int primary key,
Employee_Name varchar(20) not null,
Employee_NO bigint not null,
Designation varchar(15) not null,
joining_Date date not null
);

create table salary(
Designation varchar(15) not null primary key,
salary int not null
);

create table borrowers(
card_number int not null primary key,
Borrower_Name varchar(20) not null,
Borrower_PNO bigint not null,
Occupation varchar(20) not null,
Borrower_DOB date not null,
Registration_date date not null,
Borrower_Address varchar(30) not null
);

create table loans(
Loan_Id int not null primary key,
card_number int not null,
Book_ID varchar(50) NOT NULL,
employee_ID int not null,
Issue_Date date not null,
Return_Date date,
foreign key(card_number) references borrowers(card_number),
foreign key(Book_ID) references Books(Book_ID),
foreign key(employee_id) references employees(employee_id)
);

create table Due_Date(
Issue_Date date not null primary key,
Due_Date date not null
);


insert into Books values('ISBN 99921-58-10-7','basic physics',5);
insert into Books values('ISBN 9971-5-0210-0','basic maths',7);
insert into Books values('ISBN 960-425-059-0','marvel',9);
insert into Books values('ISBN 80-902734-1-6','atomic habits',2);
insert into Books values('ISBN 80-906734-4-8','mastering creativity',4);
insert into Books values('ISBN 85-359-0277-5','walter sawitch',7);
insert into Books values('ISBN 85-359-0457-5','c++ primer',4);


insert into genres values ('basic physics','physics' );
insert into genres values ('basic maths','maths' );
insert into genres values ( 'marvel','comics');
insert into genres values ( 'atomic habits','personality development');
insert into genres values ( 'walter sawitch','computer');
insert into genres values ( 'c++ primeer','computer');
insert into genres values ('mastering creativity','personality development');


insert into Types values ('physics','non fiction' );
insert into Types values ('maths','non fiction' );
insert into Types values ('marvel',' fiction' );
insert into Types values ( 'personality development','non fiction');
insert into Types values ('computer' ,'non fiction' );


insert into Authors values ('ISBN 99921-58-10-7', 'HC Verma');
insert into Authors values ('ISBN 9971-5-0210-0', 'iyenger');
insert into Authors values ('ISBN 960-425-059-0', 'stan lee');
insert into Authors values ('ISBN 85-359-0277-5', 'walter sawitch');
insert into Authors values ('ISBN 85-359-0457-5', 'stanley');
insert into Authors values ('ISBN 80-902734-1-6', 'james ');
insert into Authors values ('ISBN 80-906734-4-8', 'james ');


insert into Author_Mail_Id values('HC Verma','hcverma@gmail.com');
insert into Author_Mail_Id values('iyenger','iyer@gmail.com');
insert into Author_Mail_Id values('walter sawitch','walter@gmail.com');
insert into Author_Mail_Id values('stanley','stan@gmail.com');
insert into Author_Mail_Id values('stan lee','lee@gmail.com');
insert into Author_Mail_Id values('james','james@gmail.com');

insert into Publishers values('ISBN 99921-58-10-7','khanna');
insert into Publishers values('ISBN 9971-5-0210-0','khanna');
insert into Publishers values('ISBN 960-425-059-0','M.S.K');
insert into Publishers values('ISBN 80-902734-1-6','MCgrawhill');
insert into Publishers values('ISBN 80-906734-4-8','MCgrawhill');
insert into Publishers values('ISBN 85-359-0277-5','MCgrawhill');
insert into Publishers values('ISBN 85-359-0457-5','MCgrawhill');

insert into Publishers_Details values ('MCgrawhill','New Delhi','9346907122');
insert into Publishers_Details values ('khanna','Banglore','8765428902');
insert into Publishers_Details values ('M.S.K','vijayawada','9705242829');

insert into   employees values (1,'Rajesh','6472896524','Librarian','2019-08-23');
insert into   employees values (2,'varun','913262829','Librarian','2004-03-03');
insert into   employees values (3,'anil','9268275347','cleaner','2015-05-24');
insert into   employees values (4,'vasu','8726352739','security','2020-07-25');
insert into   employees values (5,'tharun','9826253765','security','2015-08-03');
insert into   employees values (6,'vamsi','9725143789','Manager','2003-12-16');


insert into   salary values('Librarian',8000);
insert into   salary values('Manager',12000);
insert into   salary values('cleaner',4000);
insert into   salary values('security',3000);

insert into   borrowers values(100,'rupesh','9826457836','student','2012-01-24','2021-05-24','nitw');
insert into   borrowers values(101,'akash','9264758264','teacher','1996-06-20','2022-02-19','chourasta');
insert into   borrowers values(102,'alekya','9264848264','bussiness man','2000-05-22','2019-11-12','kazipet');
insert into   borrowers values(103,'vishnu','9174035284','student','2015-12-24','2022-08-24','nitw');
insert into   borrowers values(104,'yochana','6972647593','pilot','1987-05-02','2015-01-14','hanumakonda');
insert into   borrowers values(105,'ruthvika','8265036279','manager','1993-02-14','2020-08-08','manchiryal');
insert into   borrowers values(106,'jayanth','9363726280','director','1994-05-24','218-07-29','nitw');



insert into   loans values(1000,103,'ISBN 99921-58-10-7',1,'2022-01-17','2022-06-23');
insert into   loans values(1001,104,'ISBN 99921-58-10-7',2,'2021-11-08','2022-03-23');
insert into   loans values(1002,100,'ISBN 80-902734-1-6',2,'2022-05-08','2022-06-18');
insert into   loans values(1003,105,'ISBN 960-425-059-0',1,'2022-01-17','2022-06-18');
insert into   loans values(1004,105,'ISBN 9971-5-0210-0',1,'2016-04-27','2016-08-08');
insert into   loans values(1005,102,'ISBN 80-902734-1-6',2,'2021-11-08','2022-06-18');
insert into   loans values(1006,104,'ISBN 80-906734-4-8',1,'2014-12-08','2014-04-08');

insert into  Due_Date values('2022-01-17','2022-02-17');
insert into  Due_Date values('2021-11-08','2021-12-08');
insert into  Due_Date values('2022-05-08','2022-06-08');
insert into  Due_Date values('2016-04-27','2016-05-27');
insert into  Due_Date values('2014-12-08','2015-01-08');