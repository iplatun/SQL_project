 DECLARE
    tmp := 0;
    tmp1 := 0;
    tmp2 := 0;
    birthdate := '1970-01-01';
    tmp3 := 0;
    tmp4 := 0;
    tmp5 := 0;
    tmp6 := 0;
    tmp7 := 0;
    tmp8 := 0;
    tmp9 := 0;
    tmp10 := 0;
    tmp11 := 0;
BEGIN
  FOR i IN 1..30 LOOP
  tmp := 100000000 + trunc(dbms_random.value(1, 899999999));
  tmp1 := DBMS_RANDOM.STRING ('X', 8);
  tmp2 := DBMS_RANDOM.STRING ('X', 12);
  SELECT TO_DATE (birthdate, 'YYYY-MM-DD') + DBMS_RANDOM.VALUE (1, 1000) FROM DUAL;
  tmp3 := DBMS_RANDOM.STRING ('x', 10);
  tmp4 := 1000000000 + trunc(dbms_random.value(1, 8999999999));
  tmp5 := DBMS_RANDOM.STRING ('X', 8);
  tmp6 := DBMS_RANDOM.STRING ('X', 8);
  tmp7 := DBMS_RANDOM.STRING ('X', 8);
  tmp8 := trunc(dbms_random.value(10000, 99999));
  SELECT W2, TAX_RETURN, CREDIT_REPORT, DECODE ('yes', 'no') FROM dual;
  tmp9 := DBMS_RANDOM.STRING ('X', 20);
  tmp10 := trunc(dbms_random.value(1, 999999999999999999));
  tmp11 := trunc(dbms_random.value(1, 999999999999999999));
     INSERT INTO CUSTOMER_INFO (CUSTOMER_SSN, FIRST_NAME, LAST_NAME, BIRTH_DATE, PHONE_TYPE, PHONE_NUMBER, CITY, STATE, STREET, ZIP, W2, TAX_RETURN, CREDIT_REPORT, BANK_INFO, PRIMARY_INCOME, SECONDARY_INCOME) VALUES (tmp, tmp1, tmp2, birthdate, tmp3, tmp4, tmp5, tmp6, tmp7, tmp8, tmp9, tmp10, tmp11 ));
  END LOOP;
END;
/
 
