SELECT * FROM bank_loan_data

-- No. of Application

SELECT COUNT(id) AS Total_Loan_Application
FROM bank_loan_data

--Month To Date

SELECT COUNT(id) AS MTD_Loan_Applications 
FROM bank_loan_data
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021

-- Previous Month of Month (MTD-PMTD)/PMTD

SELECT COUNT(id) AS PMTD_Loan_Applications 
FROM bank_loan_data
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021

-- Total for Funded Amount

 SELECT SUM(loan_amount) AS Total_Funded_Amount
 FROM bank_loan_data

 -- Month To Date

 SELECT SUM(loan_amount) AS Total_Funded_amount
 FROM bank_loan_data
 WHERE MONTH (issue_date) = 12 AND YEAR(issue_date) = 2021

 --Previous Month To Date

 SELECT SUM(loan_amount) AS PMTD_Total_Funded_amount 
 FROM bank_loan_data
 WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021


 -- Total Recived Amount

 SELECT SUM(total_payment)
 FROM bank_loan_data AS Total_Amount_Recived

  -- Total Recived Amount As Current Month

SELECT SUM(total_payment) AS MTD_Total_Amount_Recived 
From bank_loan_data
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021

-- Previous Month Total Recived Amount As 

SELECT SUM(total_payment) AS MTD_Total_Amount_Recived 
From bank_loan_data
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021

-- Average Interest Rate

SELECT ROUND(AVG(int_rate), 4) * 100 AS Avg_interest_Rate
FROM bank_loan_data

-- For Current Month Int Rate

SELECT ROUND(AVG(int_rate), 4) * 100 AS Current_Month_Int_Rate
FROM bank_loan_data
WHERE MONTH(issue_date) = 12  AND YEAR(issue_date) = 2021

-- For The Previous Month

SELECT ROUND(AVG(int_rate), 4) * 100 AS PMIR
FROM bank_loan_data
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021

SELECT ROUND(AVG(dti), 4) * 100 AS Avg_DTI
FROM bank_loan_data

-- Month To Date Avg Rate

SELECT ROUND(AVG(dti), 4) * 100 AS MTD_AVG_DTI
FROM bank_loan_data
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021

-- Previous Month To Date Avg Rate

SELECT ROUND(AVG(dti), 4) * 100 AS MTD_AVG_DTI
FROM bank_loan_data
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021

-- Good Loan percentage

SELECT
(COUNT(CASE WHEN loan_status = 'Fully paid' OR loan_status = ' Current' THEN id END) * 100)
/
COUNT(id) AS Good_Loan_Percentage
FROM bank_loan_data

-- Good Loan Applicartion

SELECT COUNT(id) AS Good_Loan_Application
FROM bank_loan_data 
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current'

-- Good Loan Funded Amount

SELECT SUM(loan_amount) AS Good_Loan_funded_Amount
FROM bank_loan_data
WHERE loan_status = 'Fully paid' Or loan_status = ' Current'

-- Good Loan Total Payment Recived Amount

SELECT SUM(total_payment) AS Good_Loan_Recieved_Amount
FROM bank_loan_data
WHERE loan_status = 'Fully paid' OR loan_status = 'Current'

-- Bad loans

SELECT 
(COUNT(CASE WHEN loan_status = 'Charged off' THEN id END) * 100.0)
/
COUNT(id) AS Bad_Loan_percentage
FROM bank_loan_data

-- Bank Bad Loans application

SELECT COUNT(id) AS Bad_Loan_Applications
FROM bank_loan_data
WHERE  loan_status = 'Charged Off'

-- Bad loan Funded Amount

SELECT SUM(loan_amount) AS Bad_Loan_Funded_Amount
FROM bank_loan_data
WHERE loan_status = 'Charged Off'

-- Bad loan Funded Amount Recived

SELECT SUM(total_payment) AS Bad_Loan_Funded_Amount_Recived
FROM bank_loan_data
WHERE loan_status = 'Charged Off'

-- Loan Status

SELECT
   loan_status,
   COUNT(id) AS Total_Loan_applications,
   SUM(total_payment) AS Total_Amount_Received,
   SUM(loan_amount) AS Total_Funded_Amount,
   AVG(int_rate * 100) AS Interest_Rate,
   AVG(dti * 100) AS DTI
   FROM
      bank_loan_data
   GROUP BY
      loan_status

-- Current Month To Date

SELECT
   loan_status,
   SUM(total_payment) AS MTD_Total_Amount_Received,
   SUM(loan_amount) AS MTD_Total_Funded_Amount
 FROM bank_loan_data
 WHERE MONTH(issue_date) = 12
   GROUP BY
      loan_status

-- Bank Loan Application OverView

SELECT
    MONTH(issue_date) AS Month_Number,
	DATENAME(MONTH, issue_date) AS Month_Name,
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Received_Amount
FROM bank_loan_data
GROUP BY MONTH(issue_date), DATENAME(MONTH, issue_date)
ORDER BY MONTH(issue_date)

-- Bank Loan Application Address State

SELECT
    address_state,
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Received_Amount
FROM bank_loan_data
GROUP BY  address_state
ORDER BY  COUNT(id) DESC

-- On The Basis of Term

SELECT
    term,
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Received_Amount
FROM bank_loan_data
GROUP BY  term
ORDER BY  term

-- On The Basis of Emp Name

SELECT
    emp_length,
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Received_Amount
FROM bank_loan_data
GROUP BY  emp_length
ORDER BY  emp_length

-- On The Basis of Purpose

SELECT
    purpose,
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Received_Amount
FROM bank_loan_data
GROUP BY  purpose
ORDER BY  COUNT(id) DESC


-- On The Basis of Home Ownership

SELECT
    home_ownership,
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Received_Amount
FROM bank_loan_data
GROUP BY  home_ownership
ORDER BY  COUNT(id) DESC



-- On The Basis of Grade View

SELECT
    home_ownership,
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Received_Amount
FROM bank_loan_data
WHERE grade = 'A'
GROUP BY  home_ownership
ORDER BY  COUNT(id) DESC