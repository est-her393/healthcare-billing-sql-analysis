#total revenue 
SELECT SUM(charge_amount) AS total_revenue
FROM billing_data;

#Claims Status
SELECT claim_status, COUNT(*) AS total_claims
FROM billing_data
GROUP BY claim_status;

#Denied Claims
SELECT *
FROM billing_data
WHERE claim_status = 'Denied';

#Error Rate Analysis
SELECT 
    error_flag,
    COUNT(*) AS count
FROM billing_data
GROUP BY error_flag;

#Most Expensive Procedures
SELECT procedure, AVG(charge_amount) AS avg_cost
FROM billing_data
GROUP BY procedure
ORDER BY avg_cost DESC;

#Insurance vs Uninsured Revenue
SELECT insurance_status, SUM(charge_amount) AS total_revenue
FROM billing_data
GROUP BY insurance_status;
