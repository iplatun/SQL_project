DECLARE
    ssn NUMBER (9):= 0;
    first_ VARCHAR (20) := 0;
    last_ VARCHAR (20) := 0;
    birthdate DATE := '1970-01-01';
    type_phone NUMBER (10) := 0;
    phone_ NUMBER (20):= 0;
    city_ VARCHAR (20):= 0;
    state_ VARCHAR (10):= 0;
    street_ VARCHAR (10):= 0;
    zip_ NUMBER (5):= 0;
    w2_ CHAR (1):= 0;
    tax_return_ CHAR (1):= 0;
    credit_report_ CHAR(1):= 0;
    bank_info_ VARCHAR (20):= 0;
    prim_income NUMBER (20):=0;
    second_income NUMBER (20):=0;
BEGIN
  FOR i IN 1..30 LOOP
  ssn := 100000000 + trunc(dbms_random.value(1, 899999999));
  first_ := DBMS_RANDOM.STRING ('X', 8);
  last_ := DBMS_RANDOM.STRING ('X', 12);
  birthdate_ := TO_DATE (birthdate, 'YYYY-MM-DD') + DBMS_RANDOM.VALUE (1, 1000);
  type_phone := DBMS_RANDOM.STRING ('x', 10);
  phone_ := 1000000000 + trunc(dbms_random.value(1, 8999999999));
  city_ := DBMS_RANDOM.STRING ('X', 8);
  state_ := DBMS_RANDOM.STRING ('X', 8);
  street_ := DBMS_RANDOM.STRING ('X', 8);
  zip_ := trunc(dbms_random.value(10000, 99999));
  w2_ := DECODE (ROUND(DBMS_RANDOM.VALUE (0,2), 0, 'N', 1, 'Y'));
  tax_return_ := DECODE (ROUND(DBMS_RANDOM.VALUE (0,2), 0, 'N', 1, 'Y'));
  credit_report_ := DECODE (ROUND(DBMS_RANDOM.VALUE (0,2), 0, 'N', 1, 'Y'));
  bank_info_ := DBMS_RANDOM.STRING ('X', 20);
  prim_income := trunc(dbms_random.value(1, 999999999999999999));
  second_income := trunc(dbms_random.value(1, 999999999999999999));
     INSERT INTO CUSTOMER_INFO (CUSTOMER_SSN, FIRST_NAME, LAST_NAME, BIRTH_DATE, PHONE_TYPE, PHONE_NUMBER, CITY, STATE, STREET, ZIP, W2, TAX_RETURN, CREDIT_REPORT, BANK_INFO, PRIMARY_INCOME, SECONDARY_INCOME) 
     VALUES (ssn, first_, last_, birthdate, type_phone, phone_, city_, state_, street_, zip_, w2, tax_return_, credit_report_, bank_info_, prim_income, second_income ));
  END LOOP;
END;
/
 
