DECLARE
--declare local variables
l_dept_id NUMBER;
l_dept_name VARCHAR2(MAX);

BEGIN
  SELECT dept_id, dept_name
  INTO   l_dept_id, l_dept_name
  FROM   departments
  WHERE  dept_id = 1;
  
  IF SQL%FOUND THEN
    dbms_output.put_line(SQL%ROWCOUNT);
  END IF;
END;