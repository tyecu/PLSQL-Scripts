/* This version uses %ROWTYPE variable to select into */
DECLARE
  emp_name VARCHAR2(60);
  
CURSOR cur_get_dept_employees IS
  SELECT (HR.EMPLOYEES.LAST_NAME||', '||HR.EMPLOYEES.FIRST_NAME) AS EMPLOYEE_NAME, HR.DEPARTMENTS.DEPARTMENT_ID, HR.DEPARTMENTS.DEPARTMENT_NAME
  FROM HR.EMPLOYEES INNER JOIN HR.DEPARTMENTS ON HR.DEPARTMENTS.DEPARTMENT_ID = HR.EMPLOYEES.DEPARTMENT_ID
  WHERE HR.DEPARTMENTS.DEPARTMENT_ID = 60;
cur_get_dept_employees_var cur_get_dept_employees%ROWTYPE;
  
BEGIN
  OPEN cur_get_dept_employees;
  LOOP
    FETCH cur_get_dept_employees INTO cur_get_dept_employees_var;
    EXIT WHEN cur_get_dept_employees%NOTFOUND;
    dbms_output.put_line(cur_get_dept_employees_var.EMPLOYEE_NAME||'      '||cur_get_dept_employees_var.DEPARTMENT_NAME);
  END LOOP;
  IF cur_get_dept_employees%ISOPEN THEN
    CLOSE cur_get_dept_employees;
  END IF;
END;