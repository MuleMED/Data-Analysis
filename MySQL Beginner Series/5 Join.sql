USE Parks_and_Recreation;
-- JOINS 

SELECT *
FROM employee_demographics;

SELECT *
FROM es;

-- INNER JOIN

SELECT em.employee_id, em.first_name, age, occupation, salary
FROM employee_demographics AS em
INNER JOIN employee_salary AS es
ON em.employee_id = es.employee_id
ORDER BY salary DESC;

-- OUTTER JOIN

SELECT *
FROM employee_demographics AS em
RIGHT JOIN employee_salary AS es
ON em.employee_id = es.employee_id;

-- SELF JOIN
SELECT emp1.employee_id AS santa_id,
emp1.first_name AS f_santa_name,
emp1.last_name AS l_santa_name,
emp2.employee_id AS emp_id,
emp2.first_name AS em_first_name,
emp2.last_name AS emp_last_name
FROM employee_salary emp1
JOIN employee_salary emp2
ON  emp1.employee_id + 1 = emp2.employee_id;


-- MULTIPLE JOINING 

SELECT dem.employee_id, age,dem.first_name, dem.last_name, occupation,salary, department_name
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments AS dept
ON sal.dept_id = dept.department_id;

