SELECT  column_name, data_type from user_tab_columns where table_name = 'order_status2';

ALTER TABLE order_status2 ADD modified_by NUMBER;

CREATE TABLE order_status2( 
        idf NUMBER(10) PRIMARY KEY, 
        status VARCHAR2(20), 
        last_modified DATE 
        );

ALTER TABLE order_status2
modify last_modified DEFAULT SYSDATE;

ALTER TABLE order_status2 ADD initially_created DATE DEFAULT SYSDATE NOT NULL;

CREATE TABLE salary_grades(
    salary_grade_id NUMBER(10) PRIMARY KEY,
    low_salary NUMBER(10),
    high_salary NUMBER(10)
    );

ALTER TABLE salary_grades ADD average_salary AS ((low_salary+high_salary)/2);

SELECT * FROm SALARY_GRADES;

SELECT * FROm SALARY_GRADES;

INSERT INTO SALARY_GRADES (SALARY_GRADE_ID,LOW_SALARY,HIGH_SALARY) VALUES (1,1,10);

SELECT * FROm SALARY_GRADES;

ALTER TABLE order_status2 modify last_modified DEFAULT SYSDATE-1;

ALTER TABLE order_status2 DROP COLUMN initially_created;

