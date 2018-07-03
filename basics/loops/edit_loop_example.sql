DECLARE
  --declare vaiables
  l_counter NUMBER := 0;
BEGIN
  LOOP
    IF l_counter > 4 THEN
      dbms_output.put_line('Counter is gt 4.');
      dbms_output.put_line('Exiting loop...');
      exit; --exit loop when counter > 4
    END IF;
    dbms_output.put_line('Counter: '||l_counter);
    l_counter := l_counter + 1;
  END LOOP;
  <<out_of_loop>>
  null;
END;
