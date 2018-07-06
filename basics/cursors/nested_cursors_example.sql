--Nested Cursors
DECLARE
  CURSOR cur_get_dept_info (p_rownum NUMBER) IS
    SELECT DEPARTMENT_ID
    FROM HR.DEPARTMENTS
    WHERE ROWNUM <= p_rownum;
  CURSOR cur_get_emp_info (p_dept_id HR.EMPLOYEES.DEPARTMENT_ID%TYPE) IS
    SELECT (HR.EMPLOYEES.LAST_NAME||', '||HR.EMPLOYEES.FIRST_NAME) AS EMPLOYEE_NAME
    FROM HR.EMPLOYEES
    WHERE HR.EMPLOYEES.DEPARTMENT_ID = p_dept_id;
BEGIN
  <<dept_loop>> FOR cur_get_dept_info_var IN cur_get_dept_info(2) LOOP
    dbms_output.put_line('Dept id: '||cur_get_dept_info_var.DEPARTMENT_ID);
    <<emp_loop>> FOR cur_get_emp_info_var IN cur_get_emp_info(cur_get_dept_info_var.DEPARTMENT_ID) LOOP
      dbms_output.put_line('Emp Name: '||cur_get_emp_info_var.EMPLOYEE_NAME);
    END LOOP emp_loop;
  END LOOP dept_loop;
END;
