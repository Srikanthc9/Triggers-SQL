Create table employee(
id serial primary key,
name varchar not null,
dept varchar not null,
date_of_joining date not null,
status varchar default 'Active',
salary real not null,
last_updated timestamp default CURRENT_TIMESTAMP
);
--serial type automatically update id in sequence.
insert into employee(name,dept,date_of_joining,salary) values ('Srikanth','Data Analyst','2021-04-29',40000.00), 
('Hari','Software Engineer','2020-02-15',35000.00),('Bharat','HR','2019-12-07',30000.00),
('Manu','System Enginner','2021-04-14',25000.00),
('Surya','Web Developer','2020-06-10',29000.00);
select * from employee
--creating function 
CREATE  FUNCTION update_on_status_change()
RETURNS TRIGGER 
AS $$
BEGIN
    NEW.last_updated = now();
    RETURN NEW;
END;
$$ language plpgsql;


CREATE TRIGGER status_updated_on
    BEFORE UPDATE
    ON
	employee
    FOR EACH ROW
EXECUTE PROCEDURE update_on_status_change();

/*Today Bharat SURYA left organisation*/
update employee set status='InActive' where name = 'Surya';

select * from employee;
