SQL Triggers 📜
What are SQL Triggers?
SQL Triggers are special procedures in a database that execute automatically in response to specific events like INSERT, UPDATE, or DELETE on a table or view. They are designed to help automate tasks, enforce business logic, and maintain data integrity without manual intervention.

Key Features of Triggers
Event-Driven: Triggered by data manipulation events (INSERT, UPDATE, DELETE).
Types of Triggers:
BEFORE: Executes before the event occurs.
AFTER: Executes after the event occurs.
INSTEAD OF: Replaces the default behavior of the event (commonly for views).
Use Cases:
Automating repetitive tasks.
Ensuring data consistency.
Enforcing business rules.
Generating audit logs for changes.
Examples
1. Auto-Update Employee Status
Scenario: When an employee’s role changes to "Retired," their status should automatically update to "Inactive."

sql
Copy code
CREATE TRIGGER update_employee_status
AFTER UPDATE ON employees
FOR EACH ROW
BEGIN
    IF NEW.role = 'Retired' THEN
        UPDATE employees
        SET status = 'Inactive'
        WHERE employee_id = NEW.employee_id;
    END IF;
END;
Explanation:
Event: Trigger activates after an UPDATE operation on the employees table.
Logic: Checks if the updated role is "Retired" and updates the status column to "Inactive."
Purpose: Ensures that employee status reflects their role without manual updates.
2. Calculate Total Sales Price
Scenario: Automatically calculate the total_price for a sale when a new record is inserted into the sales table.

sql
Copy code
CREATE TRIGGER calculate_total_price
BEFORE INSERT ON sales
FOR EACH ROW
BEGIN
    SET NEW.total_price = NEW.quantity * NEW.unit_price;
END;
Explanation:
Event: Trigger activates before an INSERT operation on the sales table.
Logic: Computes total_price as the product of quantity and unit_price and assigns it to the new row.
Purpose: Ensures that sales records always include an accurate total price automatically.
Why Use SQL Triggers?
Automate repetitive tasks within the database.
Ensure data consistency and accuracy.
Enforce business rules directly at the database level.
Simplify audit trail generation for tracking changes.
