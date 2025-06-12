create table product_source(
P_ID int primary key,
P_NAME varchar(50),
P_PRICE int);


insert into product_source values(101,'Mouse',100),
(102,'Pad',110),
(103,'CPU',250),
(104,'Hard Disk',300);

select * into product_target from product_source;
insert into product_target values(106, 'Keyboard',300)

select * from product_source;
select * from product_target;

-- wants to add record 104 in target table

Merge into product_target trg
using product_source src
on (trg.p_id=src.p_id)
when not matched by target 
then 
insert(p_id,p_name,p_price)
values(src.p_id,src.p_name,src.p_price);

-- wants to update existins records in the target table

update product_source
set P_PRICE=180
where p_id = 101;

update product_source
set P_PRICE=450
where p_id = 103;

select * from product_source;
select * from product_target;

Merge into product_target trg
using product_source src
on (trg.p_id=src.p_id)
when not matched by target 
then 
insert(p_id,p_name,p_price)
values(src.p_id,src.p_name,src.p_price)
when matched then
update 
set trg.p_name = src.p_name,
trg.p_price=src.p_price;

-- wants to delete from target when not exist in resource

Merge into product_target trg
using product_source src
on (trg.p_id=src.p_id)
when not matched by target 
then 
insert(p_id,p_name,p_price)
values(src.p_id,src.p_name,src.p_price)
when matched then
update 
set trg.p_name = src.p_name,
trg.p_price=src.p_price
when not matched by source
then delete;

select * from product_source;
select * from product_target;