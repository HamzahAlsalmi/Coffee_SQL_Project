/*
03_queries.sql
Purpose:
Practice and demonstrate SQL fundamentals and analysis
using the Coffee Shop database.
*/

--------------------------------------------------
-- Basic SELECTS (getting familiar with the data)
--------------------------------------------------

-- View all employees
SELECT * FROM employees;

-- View all coffee shops
SELECT * FROM shops;

-- View all locations
SELECT * FROM locations;

--------------------------------------------------
-- Filtering with WHERE
--------------------------------------------------

-- Employees earning more than 50,000
SELECT *
FROM employees
WHERE salary > 50000;

-- Employees working at Common Grounds (coffeeshop_id = 1)
SELECT *
FROM employees
WHERE coffeeshop_id = 1;

-- Employees who earn more than 50k and work at Common Grounds
SELECT *
FROM employees
WHERE salary > 50000
  AND coffeeshop_id = 1;

--------------------------------------------------
-- Sorting and limiting results
--------------------------------------------------

-- Employees ordered by salary (highest first)
SELECT
  employee_id,
  first_name,
  last_name,
  salary
FROM employees
ORDER BY salary DESC;

-- Top 10 highest paid employees
SELECT
  employee_id,
  first_name,
  last_name,
  salary
FROM employees
ORDER BY salary DESC
LIMIT 10;

--------------------------------------------------
-- Aggregations (business-style questions)
--------------------------------------------------

-- Total number of employees
SELECT COUNT(*) AS total_employees
FROM employees;

-- Average salary across all employees
SELECT ROUND(AVG(salary), 0) AS avg_salary
FROM employees;

-- Salary summary
SELECT
  MIN(salary) AS min_salary,
  MAX(salary) AS max_salary,
  ROUND(AVG(salary), 0) AS avg_salary,
  SUM(salary) AS total_payroll
FROM employees;

--------------------------------------------------
-- GROUP BY (per coffee shop analysis)
--------------------------------------------------

-- Number of employees per coffee shop
SELECT
  coffeeshop_id,
  COUNT(*) AS employee_count
FROM employees
GROUP BY coffeeshop_id
ORDER BY employee_count DESC;

-- Average salary per coffee shop
SELECT
  coffeeshop_id,
  ROUND(AVG(salary), 0) AS avg_salary
FROM employees
GROUP BY coffeeshop_id
ORDER BY avg_salary DESC;

--------------------------------------------------
-- CASE statements (categorizing data)
--------------------------------------------------

-- Categorize employees by pay level
SELECT
  employee_id,
  first_name || ' ' || last_name AS full_name,
  salary,
  CASE
    WHEN salary < 40000 THEN 'Low Pay'
    WHEN salary BETWEEN 40000 AND 60000 THEN 'Medium Pay'
    ELSE 'High Pay'
  END AS pay_category
FROM employees
ORDER BY salary DESC;

--------------------------------------------------
-- JOINs (combining tables)
--------------------------------------------------

-- Employees with shop and location info
SELECT
  e.employee_id,
  e.first_name,
  e.last_name,
  e.salary,
  s.coffeeshop_name,
  l.city,
  l.country
FROM employees e
LEFT JOIN shops s
  ON e.coffeeshop_id = s.coffeeshop_id
LEFT JOIN locations l
  ON s.city_id = l.city_id
ORDER BY s.coffeeshop_name, e.last_name;

--------------------------------------------------
-- Simple subquery
--------------------------------------------------

-- Employees earning more than the company average salary
SELECT
  employee_id,
  first_name,
  last_name,
  salary
FROM employees
WHERE salary > (
  SELECT AVG(salary)
  FROM employees
)
ORDER BY salary DESC;
