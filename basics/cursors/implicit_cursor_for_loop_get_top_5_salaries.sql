--Get top 5 salaries
DECLARE
  l_num NUMBER := 5;
BEGIN
  FOR cur_get_employees_var in (
                                SELECT (HR.EMPLOYEES.LAST_NAME||', '||HR.EMPLOYEES.FIRST_NAME) AS EMPLOYEE_NAME, HR.EMPLOYEES.SALARY
                                FROM HR.EMPLOYEES
                                WHERE ROWNUM <= l_num
                                ORDER BY HR.EMPLOYEES.SALARY DESC
                               ) LOOP
        dbms_output.put_line(cur_get_employees_var.EMPLOYEE_NAME||':    '||cur_get_employees_var.SALARY);
    END LOOP;                     
END;