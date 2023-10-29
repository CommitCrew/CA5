CREATE database user_Info;

use user_Info;

create table users(

		userID int,
        FirstName varchar(50),
        LastName varchar(50),
        Primary key(userID)
        
);
Insert INTO users(userID,FirstName,LastName)
Values(1,"Fatima","Abdul Wahid"),(2,"Zuha","Umar"),(3,"Hadiya","Farooq");