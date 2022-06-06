-- Deliverable 1
-- Create a table of retiring  employees
-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (e.emp_no, ti.title) e.emp_no,
e.first_name,
e.last_name,
ti.title,
ti.from_date,
ti.to_date
INTO emp_retirement
FROM employees AS e
INNER JOIN titles AS ti
ON (e.emp_no=ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no, ti.title ASC;

-- Remove duplicate rows of titles from changed positions
SELECT DISTINCT ON (er.emp_no) er.emp_no,
er.first_name,
er.last_name
INTO unique_titles
FROM emp_retirement AS er
WHERE (er.to_date = '9999-01-01')
ORDER BY er.emp_no ASC;

