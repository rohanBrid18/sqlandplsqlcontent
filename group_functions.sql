SQL> select max(sal), min(sal), avg(sal), max(comm), min(comm), avg(comm) from emp;

  MAX(SAL)   MIN(SAL)   AVG(SAL)  MAX(COMM)  MIN(COMM)  AVG(COMM)                                                                                                                                       
---------- ---------- ---------- ---------- ---------- ----------                                                                                                                                       
      5000        800 2073.21429       1400          0        550                                                                                                                                       

SQL> select deptno, sum(sal) as TOTAL_SAL, nvl(sum(comm),0) as TOTAL_COMM from emp group by deptno;

    DEPTNO  TOTAL_SAL TOTAL_COMM                                                                                                                                                                        
---------- ---------- ----------                                                                                                                                                                        
        30       9400       2200                                                                                                                                                                        
        20      10875          0                                                                                                                                                                        
        10       8750          0                                                                                                                                                                        

SQL> select deptno, sum(sal) as TOTAL_SAL, sum(comm) as TOTAL_COMM from emp where comm is not null group by deptno;

    DEPTNO  TOTAL_SAL TOTAL_COMM                                                                                                                                                                        
---------- ---------- ----------                                                                                                                                                                        
        30       5600       2200                                                                                                                                                                        

SQL> select deptno, count(job) as NO_OF_CLERKS from emp where job='CLERK' group by deptno;

    DEPTNO NO_OF_CLERKS                                                                                                                                                                                 
---------- ------------                                                                                                                                                                                 
        30            1                                                                                                                                                                                 
        20            2                                                                                                                                                                                 
        10            1                                                                                                                                                                                 

SQL> select deptno, sum(sal) as TOTAL_SAL from emp group by deptno having count(*) >= 4;

    DEPTNO  TOTAL_SAL                                                                                                                                                                                   
---------- ----------                                                                                                                                                                                   
        30       9400                                                                                                                                                                                   
        20      10875                                                                                                                                                                                   

SQL> select mgr, count(*) from emp where mgr is not null group by mgr;

       MGR   COUNT(*)                                                                                                                                                                                   
---------- ----------                                                                                                                                                                                   
      7839          3                                                                                                                                                                                   
      7782          1                                                                                                                                                                                   
      7698          5                                                                                                                                                                                   
      7902          1                                                                                                                                                                                   
      7566          2                                                                                                                                                                                   
      7788          1                                                                                                                                                                                   

6 rows selected.

SQL> spool off
