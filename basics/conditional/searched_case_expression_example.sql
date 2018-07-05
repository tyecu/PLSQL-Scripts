DECLARE
  ticket_priority VARCHAR2(8) := 'MEDIUM';
  support_tier NUMBER;
BEGIN
  support_tier := 
    CASE
      WHEN ticket_priority = 'HIGH' THEN 1
      WHEN ticket_priority = 'MEDIUM' THEN 2
      WHEN ticket_priority = 'LOW' THEN 3
      ELSE 0
    END;
  dbms_output.put_line(support_tier);
END;