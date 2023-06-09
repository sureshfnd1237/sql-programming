SELECT * FROM EMPLOYEE;

CREATE TABLE EMPLOYEE (
EMPNO INT, 
ENAME VARCHAR(40), 
JOB VARCHAR(20), 
MGR INT, 
HIREDATE DATE, 
SAL INT, 
COMM INT, 
DEPTNO INT,
PRIMARY KEY (EMPNO),
FOREIGN KEY(DEPTNO) REFERENCES DEPARTMENT(ID)
);

CREATE TABLE DEPARTMENT(
ID INT,
DNAME VARCHAR(20),
PRIMARY KEY(ID)
);

CREATE TABLE STUDENT(
STUDENT_ID INT,
EMAIL_ID VARCHAR(40),
PRIMARY KEY(STUDENT_ID)
);


INSERT INTO STUDENT (STUDENT_ID, EMAIL_ID) values(101, 'john_herris@gmail.com');
INSERT INTO STUDENT (STUDENT_ID, EMAIL_ID) values(103, 'denis02@outlook.uk');
INSERT INTO STUDENT (STUDENT_ID, EMAIL_ID) values(114, 'mohitkrSharma@gmail.in');
INSERT INTO STUDENT (STUDENT_ID, EMAIL_ID) values(127, 'andrew17scott@yahoo.au');
INSERT INTO STUDENT (STUDENT_ID, EMAIL_ID) values(212	, 'siya_gunjal_1995@outlook.in');
INSERT INTO STUDENT (STUDENT_ID, EMAIL_ID) values(236, 'kevinp$@gmail.com');
COMMIT;

INSERT INTO DEPARTMENT (ID, DNAME) values(10, 'IT');
INSERT INTO DEPARTMENT (ID, DNAME) values(20, 'FINANCE');
INSERT INTO DEPARTMENT (ID, DNAME) values(30, 'SECURITY');
COMMIT;

INSERT INTO EMPLOYEE(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO) values (7369, 'SMITH', 'CLERK', '7902', '80-12-17', 800, NULL, 20);
INSERT INTO EMPLOYEE(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO) values (7499, 'ALLEN', 'SALESMAN', '7698', '81-02-20', 1600, 300, 30);
INSERT INTO EMPLOYEE(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO) values (7521, 'WARD', 'SALESMAN', '7698', '81-02-22', 1250, 500, 30);
INSERT INTO EMPLOYEE(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO) values (7566, 'JIM', 'MANAGER', '7839', '81-04-02', 2975, NULL, 20);
INSERT INTO EMPLOYEE(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO) values (7654, 'MARTIN', 'SALESMAN', '7698', '81-09-28', 1250, 1400, 30);
INSERT INTO EMPLOYEE(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO) values (7698, 'BLAKE', 'MANAGER', '7839', '81-05-01', 2850, NULL, 30);
INSERT INTO EMPLOYEE(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO) values (7782, 'CLARK', 'MANAGER', '7839', '81-06-09', 2450, NULL, 10);
INSERT INTO EMPLOYEE(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO) values (7788, 'SCOTT', 'ANALYST', '7566', '87-04-19', 3000, NULL, 20);
INSERT INTO EMPLOYEE(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO) values (7839, 'JACK', 'PRESIDENT', NULL, '81-11-17', 5000, NULL, 10);
INSERT INTO EMPLOYEE(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO) values (7844, 'TURNER', 'SALESMAN', '7698', '81-09-08', 1500, 0, 30);
INSERT INTO EMPLOYEE(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO) values (7876, 'ADAMS', 'CLERK', '7788', '87-05-23', 1100, NULL, 20);
INSERT INTO EMPLOYEE(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO) values (7900, 'JAMES', 'CLERK', '7698', '81-12-03', 950, NULL, 30);
INSERT INTO EMPLOYEE(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO) values (7902, 'FORD', 'ANALYST', '7566', '81-12-03', 3000, NULL, 20);
INSERT INTO EMPLOYEE(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO) values (7934, 'MILLER', 'CLERK', '7782', '82-01-23', 1300, NULL, 10);
COMMIT;

=========================================================================================================================================

select * from EMPLOYEE;

select substr(EMAIL_ID, 1, INSTR(EMAIL_ID, '@')-1) from STUDENT; 

select substr(substr(EMAIL_ID, instr(EMAIL_ID, '@')+1), instr(substr(EMAIL_ID, instr(EMAIL_ID, '@')+1), '.')+1) from STUDENT;

select substr(substr(EMAIL_ID, instr(EMAIL_ID, '@')+1), 1, instr(substr(EMAIL_ID, instr(EMAIL_ID, '@')+1), '.')-1) from STUDENT;

SELECT replace(replace('Narendra', 'a', ''), 'e', '') from dual;

select * from EMPLOYEE where substr(YEAR(HIREDATE), 3)='81';

-- it should return 14 rows
select *, (SAL+ifnull(COMM, 0)) as HIKED_SALARY from EMPLOYEE;

-- return 2 rows
SELECT * from EMPLOYEE E JOIN EMPLOYEE M on E.MGR = M.EMPNO WHERE E.SAL > M.SAL;
-- returns 6 rows
SELECT * from EMPLOYEE E JOIN EMPLOYEE M on E.MGR = M.EMPNO WHERE E.HIREDATE<M.HIREDATE;
