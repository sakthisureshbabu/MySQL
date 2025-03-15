SELECT 
    dept.dept_name AS 'department Name',
    e.first_name AS 'First Name', 
    e.last_name AS 'Last Name', 
    t.title AS 'Title'
FROM
    employees e
        JOIN
    dept_emp de ON e.emp_no = de.emp_no
        JOIN
    departments dept ON de.dept_no = dept.dept_no
        JOIN
    titles t ON e.emp_no = t.emp_no
ORDER BY
	dept_name, title;