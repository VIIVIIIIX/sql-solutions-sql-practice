SELECT CITY,
       COMPANY_NAME,
       CONTACT_NAME
FROM CUSTOMERS
WHERE CITY LIKE "%L%"
ORDER BY CONTACT_NAME
