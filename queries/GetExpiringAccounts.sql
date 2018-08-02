/*
 This query returns all user accounts that are set to expire in x number of days.
*/
SELECT     
    USERNAME, 
    ACCOUNT_STATUS, 
    TO_DATE(EXPIRY_DATE, 'DD-MON-YY') EXPIRY_DATE
FROM         
    SYS.DBA_USERS
WHERE 
    TO_DATE(EXPIRY_DATE,'DD-MON-YY') > TO_DATE(SYSDATE, 'DD-MON-YY')
    AND
    TO_DATE(EXPIRY_DATE,'DD-MON-YY') = TO_DATE((SYSDATE+(:DAYS)), 'DD-MON-YY')
    AND
    ACCOUNT_STATUS IN ('OPEN','EXPIRED(GRACE)')
