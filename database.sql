CREATE database studentInfo;

use studentInfo;

create table studentInfo(

		userID int,
        FirstName varchar(50),
        LastName varchar(50),
        Primary key(userID)
        
);
Insert INTO studentInfo(userID,FirstName,LastName)
Values(1,"Fatima","Abdul Wahid"),(2,"Zuha","Umar"),(3,"Hadiya","Farooq");
