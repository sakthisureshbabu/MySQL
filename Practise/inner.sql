SELECT 
    emp.emp_no,
    emp.birth_date,
    emp.last_name,
    emp.gender,
    emp.hire_date,
    dm.dept_no,
    dm.from_date,
    dm.to_date,
    dept.dept_name
FROM
    employees emp
        JOIN
    dept_manager dm ON emp.emp_no = dm.emp_no
        JOIN
    departments dept ON dm.dept_no = dept.dept_no
WHERE
	dm.to_date = '9999-01-01'
    AND
    gender = 'M'
ORDER BY
	dept_name;