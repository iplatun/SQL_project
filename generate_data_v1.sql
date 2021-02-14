 DECLARE
    customers_amount NUMBER := 30;
    ssn NUMBER(9) := 0;
    firstname VARCHAR(10) := 0;
    lastname VARCHAR(20) := 0;
    birthdate DATE := TO_DATE('01-01-1979', 'MM-DD-YYYY');
    type_phone VARCHAR(10) := 0;
    phone NUMBER(9) := 0;
    city VARCHAR(10) := 0;
    state VARCHAR(10) := 0;
    street VARCHAR(10) := 0;
    zip NUMBER(5) := 0;
    w2 CHAR(1) := 0;
    taxreturn CHAR(1) := 0;
    creditreport CHAR(1) := 0;
    bankinfo VARCHAR(20) := 0;
    prim_income DECIMAL(12,4) :=0;
    second_income DECIMAL(12,4) :=0; 
    typephone varchar(10) := 'mobile';
   
   
  BEGIN
 -- if generate_customers = 1 then 
  FOR i IN 1..customers_amount LOOP
  ssn := 100000000 + trunc(dbms_random.value(1, 899999999));
  firstname := DBMS_RANDOM.STRING ('X', 8);
  lastname := DBMS_RANDOM.STRING ('X', 20);
  birthdate := birthdate + DBMS_RANDOM.VALUE (1, 1000);
  --type_phone := DBMS_RANDOM.STRING ('x', 10);
  IF typephone = 'mobile' THEN 
     type_phone := 'cellphone';
     ELSE type_phone := 'work';
     END IF; 
  phone := 100000000 + trunc(dbms_random.value(1, 899999999));
  city := DBMS_RANDOM.STRING ('X', 8);
  state := DBMS_RANDOM.STRING ('X', 8);
  street := DBMS_RANDOM.STRING ('X', 8);
  zip := trunc(dbms_random.value(10000, 99999));
  SELECT DECODE(ROUND(DBMS_RANDOM.VALUE(0,1)), 0, 'N', 1, 'Y') INTO w2 FROM dual;
  SELECT DECODE(ROUND( DBMS_RANDOM.VALUE(0,1)), 0, 'N', 1, 'Y') INTO taxreturn FROM dual;
  SELECT DECODE(ROUND(DBMS_RANDOM.VALUE(0,1)), 0, 'N', 1, 'Y') INTO creditreport FROM dual;
  dbms_output.put_line (type_phone);
  bankinfo := DBMS_RANDOM.STRING ('X', 20);
  prim_income := trunc(dbms_random.value(1, 8999999));
  second_income := trunc(dbms_random.value(1, 8999999));
 INSERT INTO CUSTOMER_INFO (CUSTOMER_SSN, FIRST_NAME, LAST_NAME, BIRTH_DATE, PHONE_TYPE, PHONE_NUMBER, CITY, STATE, STREET, ZIP, W2, TAX_RETURN, CREDIT_REPORT, BANK_INFO, PRIMARY_INCOME, SECONDARY_INCOME) VALUES (ssn, firstname, lastname, birthdate, type_phone, phone, city, state, street, zip, w2, taxreturn, creditreport, bankinfo, prim_income, second_income);
 END LOOP;
END;
/
