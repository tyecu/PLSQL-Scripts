/*so that output (put_line) is display to terminal window*/
set serveroutput on 

DECLARE
    --Declare local variables
    l_counter NUMBER := 0;
    l_sum NUMBER := 0;

BEGIN
    LOOP
        dbms_output.put_line('value of l_counter: '||l_counter);
        l_sum := l_sum + l_counter;
        l_counter := l_counter + 1;
        EXIT WHEN l_counter > 3;
    END LOOP;
END;