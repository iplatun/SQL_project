DECLARE
    ssn NUMBER (9):= 0;
    first VARCHAR (20) := 0;
    last VARCHAR (20) := 0;
    birthdate TO_DATE := '1970-01-01';
    type_phone NUMBER (10) := 0;
    phone NUMBER (20):= 0;
    city VARCHAR (20):= 0;
    state VARCHAR (10):= 0;
    street VARCHAR (10):= 0;
    zip NUMBER (5):= 0;
    w2 CHAR (1):= 0;
    tax_return_ CHAR (1):= 0;
    credit_report CHAR(1):= 0;
    bank_info VARCHAR (20):= 0;
    prim_income NUMBER (20):=0;
    second_income NUMBER (20):=0;
BEGIN
  FOR i IN 1..30 LOOP
  ssn := 100000000 + trunc(dbms_random.value(1, 899999999));
  first := DBMS_RANDOM.STRING ('X', 8);
  last := DBMS_RANDOM.STRING ('X', 12);
  birthdate := TO_DATE (birthdate, 'YYYY-MM-DD') + DBMS_RANDOM.VALUE (1, 1000);
  type_phone := DBMS_RANDOM.STRING ('x', 10);
  phone := 1000000000 + trunc(dbms_random.value(1, 8999999999));
  city := DBMS_RANDOM.STRING ('X', 8);
  state := DBMS_RANDOM.STRING ('X', 8);
  street := DBMS_RANDOM.STRING ('X', 8);
  zip := trunc(dbms_random.value(10000, 99999));
  w2 := DECODE (ROUND(DBMS_RANDOM.VALUE (0,2), 0, 'N', 1, 'Y'));
  tax_return := DECODE (ROUND(DBMS_RANDOM.VALUE (0,2), 0, 'N', 1, 'Y'));
  credit_report := DECODE (ROUND(DBMS_RANDOM.VALUE (0,2), 0, 'N', 1, 'Y'));
  bank_info := DBMS_RANDOM.STRING ('X', 20);
  prim_income := trunc(dbms_random.value(1, 9999999990));
  second_income := trunc(dbms_random.value(1, 9999999999));
     INSERT INTO CUSTOMER_INFO (CUSTOMER_SSN, FIRST_NAME, LAST_NAME, BIRTH_DATE, PHONE_TYPE, PHONE_NUMBER, CITY, STATE, STREET, ZIP, W2, TAX_RETURN, CREDIT_REPORT, BANK_INFO, PRIMARY_INCOME, SECONDARY_INCOME) 
     VALUES (ssn, first, last, birthdate, type_phone, phone, city, state, street, zip, w2, tax_return, credit_report_, bank_info, prim_income, second_income ));
  END LOOP;
END;
/
 
DECLARE
    statement_id NUMBER (9):= 0;
    princ_balance DECIMAL (12,4):= 0;    
    statement_date TO_DATE :='2000-01-01';
    payment_due_date TO_DATE :='2000-01-01';
    ramain_balance DECIMAL(12,4) :=0;
    date_last_payment TO_DATE :='2000-01-01';
    
BEGIN
  FOR i IN 1..30 LOOP
  statement_id := trunc(dbms_random.value(1, 999999999));
  princ_balance := dbms_random.value(1, 999999999);
  statement_date := TO_DATE (statement_date, 'YYYY-MM-DD') + DBMS_RANDOM.VALUE (1, 1000);
  payment_day_date := TO_DATE (statement_date, 'YYYY-MM-DD') + DBMS_RANDOM.VALUE (1, 1000);
  remain_balance := dbms_random.value(1, 999999999);
  date_last_payment := TO_DATE (statement_date, 'YYYY-MM-DD') + DBMS_RANDOM.VALUE (1, 1000);
   INSERT INTO MONTHLY_STATEMENT (STATEMENT_ID, PRINCIPLE_BALANCE, STATEMENT_DATE, PAYMENT_DUE_DATE, REMAINING_PAYMENTS, DATE_LAST_PAYMENT
   VALUES (statement_id, princ_balance, statement_date, payment_day_date, remain_balance, date_last_payment));
  END LOOP;
END;
/

DECLARE
    employee_id NUMBER (10):= 0;
    officer_id NUMBER (10):= 0;
    ident_id NUMBER (10):= 0;
    empl_first VARCHAR (20) := 0;
    empl_last VARCHAR (20) := 0;

BEGIN
FOR i IN 1..30 LOOP
  employee_id := 100000 + trunc(dbms_random.value(1, 899999));
  officer_id := 1000 + trunc(dbms_random.value(1, 8999));
  ident_id := 100 + trunc(dbms_random.value(1, 899));
  empl_first := DBMS_RANDOM.STRING ('X', 8);
  empl_last := DBMS_RANDOM.STRING ('X', 12); 
  INSERT INTO EMPLOYESS (EMPLOYEEID, OFFICERID, IDENTIFIERID, EMPL_FIRST_NAME, EMPL_LAST_NAME
  VALUES (employee_id, officer_id, ident_id, empl_first, empl_last));
  END LOOP;
END;
/ 