DECLARE
  emp_name VARCHAR2(60);
  dept_id HR.DEPARTMENTS.DEPARTMENT_ID%TYPE;
  dept_name HR.DEPARTMENTS.DEPARTMENT_NAME%TYPE;
  
CURSOR cur_get_department_employees IS
  SELECT (HR.EMPLOYEES.LAST_NAME||', '||HR.EMPLOYEES.FIRST_NAME) AS EMPLOYEE_NAME, HR.DEPARTMENTS.DEPARTMENT_ID, HR.DEPARTMENTS.DEPARTMENT_NAME
  FROM HR.EMPLOYEES INNER JOIN HR.DEPARTMENTS ON HR.DEPARTMENTS.DEPARTMENT_ID = HR.EMPLOYEES.DEPARTMENT_ID
  WHERE HR.DEPARTMENTS.DEPARTMENT_ID = 60;
  
BEGIN
  OPEN cur_get_department_employees;
  LOOP
    FETCH cur_get_department_employees INTO emp_name, dept_id, dept_name;
    EXIT WHEN cur_get_department_employees%NOTFOUND;
    dbms_output.put_line(emp_name||'      '||dept_name);
  END LOOP;
  IF cur_get_department_employees%ISOPEN THEN
    CLOSE cur_get_department_employees;
  END IF;
END;