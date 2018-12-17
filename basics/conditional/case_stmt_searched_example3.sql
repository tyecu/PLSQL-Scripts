DECLARE
  score NUMBER := 10;
  letter_grade varchar(1);
BEGIN
  CASE WHEN score >= 93                THEN letter_grade := 'A';
       WHEN score >= 85 AND score < 93 THEN letter_grade := 'B';
       WHEN score >= 70 AND score < 85 THEN letter_grade := 'C';
       WHEN score >= 65 AND score < 70 THEN letter_grade := 'D';
       WHEN score < 65                 THEN letter_grade := 'F';
  END CASE;
  DBMS_OUTPUT.PUT_LINE(letter_grade);
END;
