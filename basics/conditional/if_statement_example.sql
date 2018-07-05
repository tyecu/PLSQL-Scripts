DECLARE
  l_sales_amt NUMBER := 40000;
  l_commission NUMBER := 0;
  
BEGIN
  IF l_sales_amt > 50000 THEN
    l_commission := 10;
  END IF;
END;