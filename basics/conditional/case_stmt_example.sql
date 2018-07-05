DECLARE
  ticket_priority VARCHAR2(8) := 'MEDIUM';
  support_tier NUMBER;
BEGIN
  CASE ticket_priority
    WHEN 'HIGH' THEN
      support_tier := 1;
    WHEN 'MEDIUM' THEN
      support_tier := 2;
    WHEN 'LOW' THEN
      support_tier := 3;
    ELSE
      support_tier := 0;
  END CASE;
  dbms_output.put_line(support_tier);
END;