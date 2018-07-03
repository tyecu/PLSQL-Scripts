/*so that output (put_line) is display to terminal window*/
set serveroutput on 

BEGIN
    FOR l_counter in REVERSE 1..3 LOOP
      dbms_output.put_line('l_counter: '||l_counter);
    END LOOP;
END;