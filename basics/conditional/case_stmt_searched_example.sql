DECLARE
  ticket_priority VARCHAR2(8) := 'MEDIUM';
  support_tier NUMBER;
BEGIN
  CASE WHEN ticket_priority = 'HIGH' THEN
        support_tier := 1;
      WHEN ticket_priority = 'MEDIUM' THEN
        support_tier := 2;
      WHEN ticket_priority = 'LOW' THEN
        support_tier := 3;
      ELSE
        support_tier := 0;
  END CASE;
  dbms_output.put_line(support_tier);
END;