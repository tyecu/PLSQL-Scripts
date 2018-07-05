DECLARE
  ticket_priority VARCHAR2(8) := 'MEDIUM';
  support_tier NUMBER;
BEGIN
  support_tier := 
    CASE ticket_priority
      WHEN 'HIGH' THEN 1
      WHEN 'MEDIUM' THEN 2
      WHEN 'LOW' THEN 3
      ELSE 0
    END;
  dbms_output.put_line(support_tier);
END;