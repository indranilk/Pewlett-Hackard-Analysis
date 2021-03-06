--Deliverable 1

SELECT * FROM Employees;

SELECT emp_no, first_name, last_name FROM Employees;

SELECT * FROM Titles;

SELECT title, from_date, to_date FROM Titles;

-- Join employees with titles 
SELECT e.emp_no,
	e.birth_date,
	e.first_name,
	e.last_name,
	e.gender,
	e.hire_date,
	t.title,
	t.from_date,
	t.to_date
FROM employees as e
LEFT JOIN titles as t on e.emp_no = t.emp_no;

SELECT e.emp_no, 
	e.first_name, 
	e.last_name, 
	t.title,
	t.from_date, 
	t.to_date
INTO retirement_titles	
FROM employees as e
LEFT JOIN titles as t on e.emp_no = t.emp_no
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY emp_no;
--COMMIT;

--DROP TABLE retirement_titles;
SELECT * FROM retirement_titles;

SELECT emp_no, first_name, last_name, title FROM retirement_titles;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title

INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;

SELECT * FROM unique_titles;

-- Employee count by department number
SELECT COUNT(emp_no), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT DESC;

SELECT * FROM retiring_titles;

-- Deliverable 2

SELECT emp_no, first_name, last_name, birth_date FROM Employees;

SELECT * FROM dept_emp;

SELECT from_date, to_date FROM dept_emp;

SELECT title FROM Titles;

SELECT DISTINCT ON (e.emp_no) e.emp_no,
e.first_name,
e.last_name,
e.birth_date,
de.from_date,
de.to_date,
t.title
INTO mentorship_eligibility
FROM employees as e
INNER JOIN dept_emp as de
ON e.emp_no = de.emp_no
INNER JOIN titles as t
ON e.emp_no = t.emp_no
WHERE de.to_date = '1-1-9999'
AND (birth_date BETWEEN '1965-01-01' AND '1965-12-31') 
ORDER BY emp_no;

SELECT * FROM mentorship_eligibility;


