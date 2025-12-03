--자료형을 정의하여 새 테이블 생성
CREATE TABLE EMP_DDL(
    EMPNO   NUMBER(4),
    ENAME   VARCHAR2(10),
    JOB     VARCHAR2(10),
    MGR     NUMBER(4),
    HIREDATE    DATE,
    SAL      NUMBER(7, 2),
    COMM    NUMBER(7, 2),
    DEPTNO  NUMBER(2)
);
DESC EMP_DDL;