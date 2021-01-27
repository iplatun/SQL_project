DECLARE
    generate_customers NUMBER := 1;
    generate_statement NUMBER := 1;
    generate_employees NUMBER := 1;
    generate_loans NUMBER := 1;
    generate_transactions :=1;
    generate_check :=1;
    customers_amount :=30;
    statements_amount : =60;
    employees_amount :=10;
    loan_amount := 20; 
    transactions_amount := 200;
    check_amount : = 20;
--added customer info
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
--monthly statement
    statement_id NUMBER (9):= 0;
    princ_balance DECIMAL (12,4):= 0;    
    statement_date TO_DATE :='2000-01-01';
    payment_due_date TO_DATE :='2000-01-01';
    ramain_balance DECIMAL(12,4) :=0;
    date_last_payment TO_DATE :='2000-01-01';
--employees 
    employee_id NUMBER (10):= 0;
    officer_id NUMBER (10):= 0;
    ident_id NUMBER (10):= 0;
    empl_first VARCHAR (20) := 0;
    empl_last VARCHAR (20) := 0;
--loan_application
    loan_ident NUMBER (10):= 0;
    int_rate NUMBER (10):= 0;
    loantype VARCHAR (10) := 0;
    monthlypayments DECIMAL (12,4):= 0;
    restriction VARCHAR (10) := 0;
    applicant_date TO_DATE :='2000-01-01';
    loanamount DECIMAL (12,4):= 0;
    loanterm VARCHAR (10) := 0;
--transactions
    transact_id NUMBER (10):= 0;
    due_date TO_DATE :='2000-01-01';
    amountbilled NUMBER (10):= 0;
    datereceived :='2000-01-01';
    amountreceived NUMBER (10):= 0;
    interest DECIMAL (12,4):= 0;
    principle DECIMAL (12,4):= 0;
--loan disbersement
    checkid NUMBER (10):= 0;
    disbersementdate TO_DATE :='2000-01-01';
    checkamount NUMBER (10):= 0;
    
BEGIN
  if generate_customers = 1 then 
  FOR i IN 1..customers_amount LOOP
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
end if;

--added monthly statement
  if generate_statements = 1 then
  FOR i IN 1..statements_amount LOOP
  statement_id := trunc(dbms_random.value(1, 999999999));
  princ_balance := dbms_random.value(1, 999999999);
  statement_date := TO_DATE (statement_date, 'YYYY-MM-DD') + DBMS_RANDOM.VALUE (1, 1000);
  payment_day_date := TO_DATE (statement_date, 'YYYY-MM-DD') + DBMS_RANDOM.VALUE (1, 1000);
  remain_balance := dbms_random.value(1, 999999999);
  date_last_payment := TO_DATE (statement_date, 'YYYY-MM-DD') + DBMS_RANDOM.VALUE (1, 1000);
   INSERT INTO MONTHLY_STATEMENT (STATEMENT_ID, PRINCIPLE_BALANCE, STATEMENT_DATE, PAYMENT_DUE_DATE, REMAINING_PAYMENTS, DATE_LAST_PAYMENT
   VALUES (statement_id, princ_balance, statement_date, payment_day_date, remain_balance, date_last_payment));
  END LOOP;
end if;

--added employess
  if generate_employees = 1 then
  FOR i IN 1..employees_amount LOOP
  employee_id := 100000 + trunc(dbms_random.value(1, 899999));
  officer_id := 1000 + trunc(dbms_random.value(1, 8999));
  ident_id := 100 + trunc(dbms_random.value(1, 899));
  empl_first := DBMS_RANDOM.STRING ('X', 8);
  empl_last := DBMS_RANDOM.STRING ('X', 12); 
  INSERT INTO EMPLOYESS (EMPLOYEEID, OFFICERID, IDENTIFIERID, EMPL_FIRST_NAME, EMPL_LAST_NAME
  VALUES (employee_id, officer_id, ident_id, empl_first, empl_last));
  END LOOP;
end if;

--added loan application
  if generate_loans = 1 then
  FOR i IN 1..loans_amount LOOP
  loan_ident : = 1000000 + trunc(dbms_random.value(1, 8999999));
  int_rate : = tranc(dbms_random.value(1, 99));
  loantype : = DBMS_RANDOM.STRING ('x', 6);
  monthlypayments : = 100000 + dbms_random.value(1, 899999);
  restriction : = DBMS_RANDOM.STRING ('x', 10);
  applicant_date := TO_DATE (applicant_date, 'YYYY-MM-DD') + DBMS_RANDOM.VALUE (1, 1000);
  loanamount := 100000 + dbms_random.value(1, 899999);
  loanterm := 10 + dbms_random.value(1, 89);
  INSERT INTO LOAN_APPLICATION_FORM (LOAN_ID, INTEREST_RATE, LOAN_TYPE, MONTHLY_PAYMENT, RESTRICTION_ON_LOAN, APPLICATION_DATE, LOAN_AMOUNT, LOAN_TERM
  VALUES (loan_ident, int_rate, loantype, monthlypayments, restriction, applicant_date, loanamount, loanterm));
  END LOOP;
end if; 

--added transactions
  if generate_transactions =1 then
  FOR i IN 1..transactions_amount LOOP
  transact_id : = 1000000 + trunc(dbms_random.value(1, 8999999));
  due_date : = TO_DATE (applicant_date, 'YYYY-MM-DD') + DBMS_RANDOM.VALUE (1, 1000);
  amountbilled : = 100000 + dbms_random.value(1, 899999);
  datereceived : TO_DATE (applicant_date, 'YYYY-MM-DD') + DBMS_RANDOM.VALUE (1, 1000);
  amountreceived := 100000 + dbms_random.value(1, 899999);
  interest := 10 + dbms_random.value(1, 89);
  principle := 100000 + dbms_random.value(1, 899999);
  INSERT INTO TRANSACTIONS (TRANSACTIONID, DATE_DUE, AMOUNT_BILLED, DATE_RECEIVED, AMOUNT_RECEIVED, INTEREST_PAID, PRINCIPLE_APPLIED
  VALUES (transact_id, due_date, amountbilled, datereceived, interest, principle));
 END LOOP;
end if;  
  
if generate_check = 1 then 
  FOR i IN 1..check_amount LOOP
  checkid : = 1000000 + trunc(dbms_random.value(1, 8999999));
  disbersementdate : = TO_DATE (applicant_date, 'YYYY-MM-DD') + DBMS_RANDOM.VALUE (1, 1000);
  checkamount : = 1000000 + dbms_random.value(1, 8999999);
  INSERT INTO LOAN_PROCEED_DISBERSEMENT (CHECK_ID, DISBERSEMENT_DATE, CHECK_AMOUNT
  VALUES (checkid, disbersementdate, checkamount));
END LOOP;
end if;  
END;
/