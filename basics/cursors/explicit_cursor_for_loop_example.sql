DECLARE
  --this cursor can be reused because it's referenced by name below in FOR LOOP.
  CURSOR cur_get_employees IS
    SELECT (HR.EMPLOYEES.LAST_NAME||', '||HR.EMPLOYEES.FIRST_NAME) AS EMPLOYEE_NAME, HR.EMPLOYEES.SALARY * 0.10 BONUS
    FROM HR.EMPLOYEES;
BEGIN
  FOR cur_get_employees_var IN cur_get_employees LOOP
    dbms_output.put_line(cur_get_employees_var.EMPLOYEE_NAME||':    '||cur_get_employees_var.BONUS);
  END LOOP;
END;