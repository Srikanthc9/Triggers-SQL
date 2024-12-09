create table sales_data(
cust_name varchar not null,
product_name varchar not null,
sales real not null,
quantity int not null,
total_price real
);
select * from sales_data;
--initial record without calculation of total_price.
insert into sales_data values('Srikanth','NoteBooks',110.0,5);
--Function Creation
create function calc_tot_price()    
returns trigger          
as $$
declare
	total numeric;
begin
	total = new.sales * new.quantity;
	new.total_price = total;
	return new;
end;
$$ language plpgsql;

--CREATE THE TRIGGER
create trigger calc_tot_insert
before insert
on sales_data
for each row
execute procedure calc_tot_price();

#Manually  total_price col gets updated
insert into sales_data values('Bharat','Pens',30.0,10),('Manu','Pencils',20,4);
insert into sales_data values('Hari','Erasers',15.0,5),('Surya','Markers',25,15)


