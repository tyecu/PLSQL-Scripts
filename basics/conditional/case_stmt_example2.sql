DECLARE
  logging_level NUMBER := 3;
  logging_level_desc VARCHAR(8);
BEGIN
  CASE logging_level
    WHEN 0 THEN logging_level_desc := 'UNKNOWN';
    WHEN 1 THEN logging_level_desc := 'NORMAL';
    WHEN 2 then logging_level_desc := 'WARNING';
    WHEN 3 then logging_level_desc := 'ERROR';
  END CASE;
  DBMS_OUTPUT.PUT_LINE(logging_level_desc);
END;
