/* Uses cursor parameters.  Retrieve only the first three rows from select query */
DECLARE
  CURSOR cur_get_emp_depts(p_rows NUMBER DEFAULT 5) IS --note takes a parameter here.
    SELECT (HR.EMPLOYEES.LAST_NAME||', '||HR.EMPLOYEES.FIRST_NAME) AS EMPLOYEE_NAME, HR.DEPARTMENTS.DEPARTMENT_ID, HR.DEPARTMENTS.DEPARTMENT_NAME
    FROM HR.EMPLOYEES INNER JOIN HR.DEPARTMENTS ON HR.DEPARTMENTS.DEPARTMENT_ID = HR.EMPLOYEES.DEPARTMENT_ID
    WHERE HR.DEPARTMENTS.DEPARTMENT_ID = 60 AND ROWNUM <= p_rows;
  cur_get_emp_depts_var cur_get_emp_depts%ROWTYPE;

BEGIN
  OPEN cur_get_emp_depts(3);
  LOOP
    FETCH cur_get_emp_depts INTO cur_get_emp_depts_var;
    EXIT WHEN cur_get_emp_depts%NOTFOUND;
    dbms_output.put_line(cur_get_emp_depts_var.EMPLOYEE_NAME||':  '||cur_get_emp_depts_var.DEPARTMENT_ID);
  END LOOP;
  CLOSE cur_get_emp_depts;
END;