DECLARE 
  l_check INTEGER := 1;
BEGIN
  WHILE l_check < 8 LOOP
    l_check := dbms_random.value(1,10);
    dbms_output.put_line(l_check);
  END LOOP;
END;