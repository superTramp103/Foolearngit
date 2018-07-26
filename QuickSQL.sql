/*This note for SQL Quick look up Tables*/

/*Select everthing in a table*/
SELECT *
FROM ACH_PAYMENTS_LOG AS APL
/*************************************************************************************/
/*Select all columns and details in a table*/
select *
from INFORMATION_SCHEMA.COLUMNS
where TABLE_NAME='MNE_MINE'
/*************************************************************************************/


/*Select every tables in order */
SELECT
  *
FROM
  INFORMATION_SCHEMA.TABLES T
WHERE 
    TABLE_TYPE = 'BASE TABLE'
Order by T.TABLE_NAME
/*************************************************************************************/
/*Select every tables in order contain specific word */
SELECT
  *
FROM
  INFORMATION_SCHEMA.TABLES T
WHERE 
    TABLE_TYPE = 'BASE TABLE' AND TABLE_NAME LIKE '%LKP%'
Order by T.TABLE_NAME
/*************************************************************************************/
protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer("Data Source =.;Initial Catalog=SMARAIII; Integrated Security = True; Connect Timeout = 30; Encrypt = False; TrustServerCertificate = False; ApplicationIntent = ReadWrite; MultiSubnetFailover = False");
        }
/*************************************************************************************/
        /*Select everthing in a table*/
SELECT M.MNE_ID,
       CASE M.MNE_ABLIST
          WHEN 'ON' THEN '1'
          WHEN 'OFF' THEN '0'
         /* ELSE 'Unknown Value' */
       END as MNE_ABLIST,

FROM   MNE_MINE AS M
/*************************************************************************************/