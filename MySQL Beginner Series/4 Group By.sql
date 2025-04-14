-- ================================================
-- GROUP BY
-- ================================================
SELECT *
FROM Parks_and_Recreation.employee_demographics;

SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM Parks_and_Recreation.employee_demographics
GROUP BY gender; -- Here we get the data group by gender and the average of each gender

-- Multiple Grouping

SELECT occupation, salary
FROM Parks_and_Recreation.employee_salary
GROUP BY occupation, salary;

-- ORDER BY 

SELECT *
FROM Parks_and_Recreation.employee_demographics
ORDER BY first_name; -- By defult is ASC Order

SELECT *
FROM Parks_and_Recreation.employee_demographics
ORDER BY gender, age DESC; 
