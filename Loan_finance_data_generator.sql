SET SERVEROUTPUT ON;
BEGIN
   FOR i IN 1..30 LOOP
   i := i + 1;
      INSERT INTO CUSTOMER_INFO VALUES (DBMS_RANDOM.value (100000000, 999999999), DBMS_RANDOM.string('first_name', DBMS_RANDOM.value (1, 30)));
      END LOOP;
      END;
      /