SQL> select lower(ename), sal from emp;

LOWER(ENAM      SAL                                                                                                                                                                                     
---------- --------                                                                                                                                                                                     
smith           800                                                                                                                                                                                     
allen          1600                                                                                                                                                                                     
ward           1250                                                                                                                                                                                     
jones          2975                                                                                                                                                                                     
martin         1250                                                                                                                                                                                     
blake          2850                                                                                                                                                                                     
clark          2450                                                                                                                                                                                     
scott          3000                                                                                                                                                                                     
king           5000                                                                                                                                                                                     
turner         1500                                                                                                                                                                                     
adams          1100                                                                                                                                                                                     
james           950                                                                                                                                                                                     
ford           3000                                                                                                                                                                                     
miller         1300                                                                                                                                                                                     

14 rows selected.

SQL> update emp set ename=lower(ename);

14 rows updated.

SQL> select * from emp;

   EMPNO ENAME      JOB            MGR HIREDATE       SAL     COMM   DEPTNO                                                                                                                             
-------- ---------- --------- -------- --------- -------- -------- --------                                                                                                                             
    7369 smith      CLERK         7902 17-DEC-80      800                20                                                                                                                             
    7499 allen      SALESMAN      7698 20-FEB-81     1600      300       30                                                                                                                             
    7521 ward       SALESMAN      7698 22-FEB-81     1250      500       30                                                                                                                             
    7566 jones      MANAGER       7839 02-APR-81     2975                20                                                                                                                             
    7654 martin     SALESMAN      7698 28-SEP-81     1250     1400       30                                                                                                                             
    7698 blake      MANAGER       7839 01-MAY-81     2850                30                                                                                                                             
    7782 clark      MANAGER       7839 09-JUN-81     2450                10                                                                                                                             
    7788 scott      ANALYST       7566 09-DEC-82     3000                20                                                                                                                             
    7839 king       PRESIDENT          17-NOV-81     5000                10                                                                                                                             
    7844 turner     SALESMAN      7698 08-SEP-81     1500        0       30                                                                                                                             
    7876 adams      CLERK         7788 12-JAN-83     1100                20                                                                                                                             
    7900 james      CLERK         7698 03-DEC-81      950                30                                                                                                                             
    7902 ford       ANALYST       7566 03-DEC-81     3000                20                                                                                                                             
    7934 miller     CLERK         7782 23-JAN-82     1300                10                                                                                                                             

14 rows selected.

SQL> select * from emp where ename like '_____';

   EMPNO ENAME      JOB            MGR HIREDATE       SAL     COMM   DEPTNO                                                                                                                             
-------- ---------- --------- -------- --------- -------- -------- --------                                                                                                                             
    7369 smith      CLERK         7902 17-DEC-80      800                20                                                                                                                             
    7499 allen      SALESMAN      7698 20-FEB-81     1600      300       30                                                                                                                             
    7566 jones      MANAGER       7839 02-APR-81     2975                20                                                                                                                             
    7698 blake      MANAGER       7839 01-MAY-81     2850                30                                                                                                                             
    7782 clark      MANAGER       7839 09-JUN-81     2450                10                                                                                                                             
    7788 scott      ANALYST       7566 09-DEC-82     3000                20                                                                                                                             
    7876 adams      CLERK         7788 12-JAN-83     1100                20                                                                                                                             
    7900 james      CLERK         7698 03-DEC-81      950                30                                                                                                                             

8 rows selected.

SQL> select substr('hello', 2, 4) from dual;

SUBS                                                                                                                                                                                                    
----                                                                                                                                                                                                    
ello                                                                                                                                                                                                    

SQL> select substr('hello welcome', -5, 4) from dual;

SUBS                                                                                                                                                                                                    
----                                                                                                                                                                                                    
lcom                                                                                                                                                                                                    

SQL> spool off;
