DECLARE
  l_sales_amt NUMBER := 60000;
  l_commission NUMBER;
  
BEGIN
  IF l_sales_amt > 50000 THEN
    l_commission := 10;
  ELSIF l_sales_amt > 40000 THEN
    l_commission := 5;
  ELSE
    l_commission := 2;
  END IF;
END;