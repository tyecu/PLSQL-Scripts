DECLARE
  return_code NUMBER := 1;
  return_code_desc VARCHAR(8);
BEGIN
  return_code_desc :=
    CASE return_code
      WHEN 0 THEN 'Normal'
      WHEN 1 THEN 'Error'
      ELSE 'UNKNOWN'
    END;
    DBMS_OUTPUT.PUT_LINE(return_code_desc); 
END;
