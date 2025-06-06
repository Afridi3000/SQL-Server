CREATE TABLE Customers(
Cust_ID int primary key,
Cust_Name varchar(100));

insert into Customers values(1,'Singh'),
(2,'John'),
(3,'Smith'),
(4,'Leenda');

create table Orders(
Order_ID int Identity(1,1),
Cust_ID int,
Item varchar(100)
foreign key(Cust_ID) references Customers(Cust_ID));

Insert into Orders(Cust_ID,Item) values(1,'Pen'),
(2,'Mouse'),
(2,'Keyboard'),
(3,'CPU'),
(4,'Pad');