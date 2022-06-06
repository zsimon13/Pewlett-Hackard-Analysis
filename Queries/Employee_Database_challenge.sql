------- Deliverable 1
-- Create a table of retiring  employees
-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (e.emp_no, ti.title) e.emp_no,
	e.first_name,
	e.last_name,
	ti.title,
	ti.from_date,
	ti.to_date
INTO retirement_titles
FROM employees AS e
INNER JOIN titles AS ti
ON (e.emp_no=ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no, ti.title ASC;

-- Remove duplicate rows of titles from changed positions
SELECT DISTINCT ON (er.emp_no) er.emp_no,
	er.first_name,
	er.last_name,
	er.title
INTO unique_titles
FROM emp_retirement AS er
WHERE (er.to_date = '9999-01-01')
ORDER BY er.emp_no ASC;

-- Retrieve number of employees who are about to retire by most recent title
SELECT COUNT (ut.emp_no), ut.title
INTO retiring_titles
FROM unique_titles AS ut
GROUP BY ut.title
ORDER BY COUNT(title) DESC;

------- Deliverable 2
SELECT DISTINCT ON(e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	ti.title
INTO mentorship_eligibilty
FROM employees AS e
INNER JOIN dept_emp AS de 
ON (e.emp_no=de.emp_no)
INNER JOIN titles as ti
ON (e.emp_no=ti.emp_no)
WHERE (de.to_date='9999-01-01')
	AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no ASC;

select * from mentorship_eligibilty