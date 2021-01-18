DECLARE
    tmp := 0;
BEGIN
  FOR i IN 1..30 LOOP
  tmp := 100000000 + trunc(dbms_random.value(1, 899999999));
     INSERT INTO CUSTOMER_INFO (CUSTOMER_SSN) VALUES (DBMS_OUTPUT.put_line(tmp));
  END LOOP;
END;
/
