What are SQL Triggers?

SQL Triggers are automated mechanisms in a database that respond to specific events such as INSERT, UPDATE, or DELETE. They allow you to define actions that are executed automatically when these events occur on a table or view. Triggers help streamline operations, enforce rules, and maintain data consistency without requiring manual intervention.

Types:
BEFORE Triggers: Execute before the triggering operation, allowing pre-checks or value modifications.
AFTER Triggers: Execute after the triggering operation, ensuring dependent processes are handled.
INSTEAD OF Triggers: Override the default behavior of operations, commonly used for views.
Use Cases:
Automating updates or calculations.
Ensuring that business logic is consistently applied.
Maintaining audit logs to track data changes.


Examples
1. Auto-Update Employee Status
This example demonstrates how triggers ensure employees' statuses are updated based on role changes.

Scenario: When an employee is marked as "Retired," their status should automatically switch to "Inactive."
Purpose: Saves time and eliminates manual updates while maintaining data integrity.


2. Calculate Total Sales Price
Illustrates the use of triggers for automating calculations when new records are added.

Scenario: Automatically compute the total price of a sale based on quantity and unit price during data insertion.
Purpose: Ensures accuracy and consistency by embedding calculations directly into the database logic.


Why Use SQL Triggers?
Automation: Eliminates manual operations, reducing human error.
Consistency: Ensures data always adheres to predefined rules.
Efficiency: Embeds business logic directly within the database, avoiding duplication in application code.
