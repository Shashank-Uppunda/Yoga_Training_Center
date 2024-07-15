-- --CREATE AND USE DATABASE

CREATE DATABASE yoga_training_center;
USE yoga_training_center;


--CREATE TABLES

CREATE TABLE STUDENT(
    SID INT PRIMARY KEY,
    name VARCHAR(30),
    age INT,
    email VARCHAR(30),
    phone_number VARCHAR(10),
    gender VARCHAR(10),
    DOB DATE,
    asanas_learnt INT,
    attendance_status_in_percentage INT);

CREATE TABLE TRAINER(
    TID INT PRIMARY KEY,
    name VARCHAR(30),
    age INT,
    email VARCHAR(30),
    phone_number VARCHAR(10),
    gender VARCHAR(10),
    DOB DATE,
    experience VARCHAR(10),
    salary INT,
    number_of_students INT);

 CREATE TABLE TRAINED_BY(
    SID INT,
    TID INT,
    PRIMARY KEY(SID,TID),
    FOREIGN KEY(SID) REFERENCES STUDENT(SID),
    FOREIGN KEY(TID) REFERENCES TRAINER(TID));

 CREATE TABLE MAINTENANCE(
    MID INT PRIMARY KEY,
    name VARCHAR(30),
    age INT,
    phone_number VARCHAR(10),
    gender VARCHAR(10),
    salary INT);

CREATE TABLE ROOM(
    RID INT,
    yoga_mats INT,
    straps INT,
    blocks INT,
    bolsters INT,
    max_occupancy INT,
    MID INT,
    PRIMARY KEY(RID,MID),
    FOREIGN KEY(MID) REFERENCES MAINTENANCE(MID));

 CREATE TABLE COURSE(
    CID INT,
    course_name VARCHAR(30),
    duration VARCHAR(30),
    start_date DATE,
    end_date DATE,
    schedule VARCHAR(50),
    asanas_taught VARCHAR(50),
    fees INT,
    RID INT,
    PRIMARY KEY(CID,RID),
    FOREIGN KEY(RID) REFERENCES ROOM(RID));

 CREATE TABLE ENROLLS(
    SID INT,
    CID INT,
    PRIMARY KEY(SID,CID),
    FOREIGN KEY(SID) REFERENCES STUDENT(SID),
    FOREIGN KEY(CID) REFERENCES COURSE(CID));


--INSERT VALUES INTO EACH OF THE TABLES

INSERT INTO STUDENT VALUES
    (101,'Rohan Kumar',23,'rohan@gmail.com','9484546981','male','2000-04-06',2,85),
    (102,'Sushmitha Singh',20,'sushmitha@gmail.com','8878998562','female','2003-09-19',1,79),
    (103,'Kevin Smith',24,'kevin@gmail.com','7896541255','male','1999-05-05',3,92),
    (104,'Rock Anderson',22,'rock@gmail.com','6466898935','male','2001-01-09',1,76),
    (105,'Emily Jackson',26,'emily@gmail.com','8899412578','female','1997-10-10',3,78),
    (106,'Ashwini Kumar',34,'ashwini@gmail.com','9784565128','female','1989-12-10',2,99),
    (107,'Praveen Singh',28,'praveen@gmail.com','8899551165','male','1995-05-11',1,88),
    (108,'Bhoomika Iyer',19,'bhoomika@gmail.com','9012564698','female','2004-07-07',1,85),
    (109,'Surya Raj',22,'surya@gmail.com','9164014698','male','2001-05-30',3,91),
    (110,'Ganga Kashyap',22,'ganga@gmail.com','8812475998','female','1998-10-24',1,72),
    (111,'Ranjith Jain',19,'ranjith@gmail.com','9898451263','male','2004-05-07',1,93),
    (112,'Poorvika Aachar',23,'poorvika@gmail.com','8585556441','female','2000-11-08',2,84),
    (113,'Kevin Anderson',20,'kevin@gmail.com','8898745125','male','2003-12-18',2,90),
    (114,'Lasya Chawla',25,'lasya@gmail.com','7788451236','female','1998-01-31',3,88),
    (115,'Vikram Singh',22,'bharath@gmail.com','9899451273','male','2001-02-21',1,95);

 INSERT INTO TRAINER VALUES
    (401,'Ben Johnson',35,'ben@gmail.com','9988456123','male','1988-02-29','3 years',10000,6),
    (402,'Meera Rao',24,'meera@gmail.com','6366898943','female','1999-04-20','5 years',15000,5),
    (403,'Nikhil Manjunath',30,'nikhil@gmail.com','8712564788','male','1993-11-26','7 years',20000,4);
    
 INSERT INTO TRAINED_BY VALUES
    (101,401),
    (102,403),
    (103,401),
    (104,402),
    (105,401),
    (106,402),
    (107,402),
    (108,403),
    (109,403),
    (110,401),
    (111,401),
    (112,402),
    (113,402),
    (114,403),
    (115,401);

 INSERT INTO MAINTENANCE VALUES
    (501,'Bhaskar Rao',45,'9474561232','male',5000),
    (502,'Nagarathna C',53,'6366789455','female',7000),
    (503,'Jack Peterson',39,'8812975322','male',9000);

 INSERT INTO ROOM VALUES
    (201,18,18,30,18,15,501),
    (202,15,15,25,15,12,502),
    (203,12,12,20,12,10,503);

 INSERT INTO COURSE VALUES
    (301,'Beginner','8 weeks','2024-01-08','2024-03-01','Morning 7:00-8:00 am , Mon-fri','Tadasana , Vrikshasana , Trikonasana',3000,201),
    (302,'Intermediate','10 weeks','2024-01-15','2024-03-20','Evening 6:00-7:00 pm , Mon-thur','Bakasana , Naukasana , Dhanurasana',5000,202),
    (303,'Advanced','12 weeks','2024-01-22','2024-04-11','Morning 6:00-7:00 am , Mon-thur','Garudasana , Hanumanasana , Vrischikasana',7000,203);

 INSERT INTO ENROLLS VALUES
    (101,301),
    (102,303),
    (103,301),
    (104,302),
    (105,301),
    (106,302),
    (107,302),
    (108,303),
    (109,303),
    (110,301),
    (111,301),
    (112,302),
    (113,302),
    (114,303),
    (115,301);
