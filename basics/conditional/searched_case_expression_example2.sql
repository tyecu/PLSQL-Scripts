DECLARE
  return_code NUMBER := 0;
  return_code_desc VARCHAR(8);
BEGIN
  return_code_desc :=
    CASE 
      WHEN return_code = 0 THEN 'Normal'
      WHEN return_code = 1 THEN 'Error'
      ELSE 'UNKNOWN'
    END;
    DBMS_OUTPUT.PUT_LINE(return_code_desc); 
END;
