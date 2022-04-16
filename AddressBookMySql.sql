#--UC1-Ablity_to_create_addressBookServiceDatabase
create database AddressBook;
show databases;
use AddressBook;


#--UC2--Ability to create a Address Book Table

CREATE TABLE address_book(
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL,
    address VARCHAR(100) NOT NULL,
    city VARCHAR(20) NOT NULL,
    state VARCHAR(20) NOT NULL,
    zip VARCHAR(10) NOT NULL,
    phoneNo VARCHAR(15) NOT NULL,
    email VARCHAR(50) NOT NULL
);


#--UC3-Insert new contacts--
 insert into address_book (firstname, lastname, address,city, state, zip,phoneNo,email) 
 values
 ('Deepak', 'Reddy','Medak','Hyderabad','Telangana',502303,9182510123,'deepak@gmail.com'),
 ('Ashok ','Goud','Badhrachalam','Khammam','Telangana',500038,8179795646,'ashok@gmail.com'),
 ('Rushi','Singa','Kadapa','Kadapa','Andra Pradesh',520102,8416658966,'rushi@gmail.com'),
 ('mahesh','kumar','Mdhuranagar','Hyderabad','Telangana',500047,7207455581,'mahesh@gmail.com');
 
  insert into address_book (firstname, lastname, address,city, state, zip,phoneNo,email) 
 values
 ('Anil', 'Kumar','Warangal','Warangal','Telangana',505412,9485886556,'anil@gmail.com'),
 ('mounika ','vishwa','nalgonda','suryapet','Telangana',505438,887525546,'mounika@gmail.com'),
 ('mani','teja','vengalaraonagar','Hyderabad','Telangana',500047,7284455581,'mani@gmail.com');
 
  
 #--UC4-Edit contacts using their name--
 update address_book set address = 'Madhuranagar' WHERE firstname ='mahesh';
update address_book set lastName='Kumar' WHERE firstname='Ashok';

#--UC5-delete the contact by their lastname
delete from address_book  where  lastname='Goud';
select * from address_book;

#-- UC6- retrieve the contact by city or state
 select * from address_book where city = 'Hyderabad' or State='Telangana';
 
 #-- UC7 addressbook size by city and state
 select count(firstname) from address_book where city = 'Hyderabad';
 select count(firstName) from address_book where state = 'Telangana';
select count(firstname) from address_book where city='Kadapa'; 

#-- UC8 addressbook sorting by  name alphabatic order
 select firstname,city from address_book order by city;
 
##-- UC9- altering the table with addressbook name and contact type 
alter table address_book add type varchar(30) after lastName;
update  address_book set type='family' where firstName ='Deepak';
update  address_book set type='friend' where lastName ='Kumar';
update  address_book set type='profession' where firstName ='Mani';
update  address_book set type='friend' where lastName ='Singa';
update  address_book set type='friend' where lastName='vishwa';
select * from address_book;


#-- UC10 ability to get count of contacts by contacttype
select count(firstname) from address_book where type='family';

#--UC11-Ability to add person to both Friend and Family

update  address_book set type='family' where firstName ='mani';
update  address_book set type='friend' where firstName ='mani';





 

