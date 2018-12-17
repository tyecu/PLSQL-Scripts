DECLARE
  salary_offer NUMBER := 82001;
  decision VARCHAR(20);

BEGIN
  IF salary_offer >= 82000 
    THEN decision := 'ACCEPT OFFER';
  ELSIF salary_offer >= 70000 AND salary_offer < 82000
    THEN decision := 'DECLINE OFFER';
  ELSE
    decision := 'HANG UP';
  END IF;
  
  DBMS_OUTPUT.PUT_LINE(decision);
END;
