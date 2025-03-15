SELECT 
	DATE_FORMAT(from_date,'%Y') AS salary_year, 
    SUM(salary) AS sum,
    MAX(salary) AS max_salary,
    MIN(salary) AS min_salary,
    AVG(salary) AS avg_salary
FROM salaries
WHERE emp_no NOT IN
	(SELECT DISTINCT emp_no FROM dept_manager)
    GROUP BY salary_year;