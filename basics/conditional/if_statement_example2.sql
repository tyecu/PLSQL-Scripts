DECLARE
  l_sales_amt NUMBER := 40000;
  l_num_of_orders NUMBER := 150;
  l_commission NUMBER := 0;
  
BEGIN
  IF (l_sales_amt > 50000 AND l_num_of_orders > 50) OR (l_sales_amt < 50000 AND l_num_of_orders > 100) THEN
    l_commission := 10;
  END IF;
END;