/*Day 2 of my Data Analysis path
Today lession is on the use of 'WHERE' clause in My
*/

SELECT *
FROM Parks_and_Recreation.employee_demographics;

-- Condition formating, viewing members earning less than 500
SELECT *
FROM Parks_and_Recreation.employee_salary
WHERE salary > 50000;

-- Here, the result should show male employee, because of the where condition.
SELECT *
FROM Parks_and_Recreation.employee_demographics
WHERE gender != 'Female';

-- ===================================================================================
-- AND OR NOT -- Logical operators
-- ===================================================================================
-- AND
SELECT *
FROM Parks_and_Recreation.employee_demographics
WHERE birth_date > '1985-01-01'
AND gender = 'Male'; -- Only prints employee that meet ALL the above conditon

-- OR
SELECT *
FROM Parks_and_Recreation.employee_demographics
WHERE birth_date > '1985-01-01'
OR gender = 'Male'; -- Prints employee that meet either of the conditon

-- NOT
SELECT *
FROM Parks_and_Recreation.employee_demographics
WHERE age > 20
AND NOT gender = 'Male'; -- Will print out employees who are not below 20 years old and are Female

-- Combining Logical Operators
SELECT *
FROM Parks_and_Recreation.employee_demographics
WHERE (first_name = "Leslie" AND age = 44) OR age > 55; -- USes PEDMAS for checking the conditions

-- LIKE Statement
SELECT *
FROM Parks_and_Recreation.employee_demographics
WHERE first_name LIKE 'a%';-- looks for specific columns that start with letter 'a' and anything afterwards

SELECT *
FROM Parks_and_Recreation.employee_demographics
WHERE birth_date LIKE '1988%'; -- check for employees born by 1988