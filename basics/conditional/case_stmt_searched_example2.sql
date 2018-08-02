DECLARE
    score NUMBER(2,0) := 86.5;
    letter_grade VARCHAR(2);
BEGIN
    CASE
        WHEN score >= 95 THEN
            letter_grade := 'A';
        WHEN score >= 93 AND score <= 94 THEN
            letter_grade := 'A-';
        WHEN score >= 91 AND score <= 92 THEN
            letter_grade := 'B+';
        WHEN score >= 87 AND score <= 90 THEN
            letter_grade := 'B';
        WHEN score >= 85 AND score <= 86 THEN
            letter_grade := 'B-';
        WHEN score >= 82 AND score <= 84 THEN
            letter_grade := 'C+';
        WHEN score >= 78 AND score <= 81 THEN
            letter_grade := 'C';
        WHEN score >= 76 AND score <= 77 THEN
            letter_grade := 'C-';
        WHEN score >= 74 AND score <= 75 THEN
            letter_grade := 'D+';
        WHEN score >= 72 AND score <=73  THEN
            letter_grade := 'D';
        WHEN score >= 70 AND score <= 71 THEN
            letter_grade := 'D-';
        WHEN score < 70 THEN
            letter_grade := 'F';
    END CASE;

    DBMS_OUTPUT.PUT_LINE(letter_grade);
END;