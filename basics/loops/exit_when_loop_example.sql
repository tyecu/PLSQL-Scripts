BEGIN
  <<outer>>
  FOR l_outer_counter in 1..3 LOOP
    DBMS_OUTPUT.PUT_LINE('l_outer_counter: '|| l_outer_counter);
    <<inner>>
    FOR l_inner_counter in 1..5 LOOP
      EXIT outer WHEN l_inner_counter = 3;
      DBMS_OUTPUT.PUT_LINE('    l_inner_counter: '|| l_inner_counter);
    END LOOP inner;
  END LOOP outer;
END;