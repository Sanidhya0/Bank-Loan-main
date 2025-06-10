## Bank Loan Summary
![](https://github.com/Ranjit933/Bank-Loan/blob/main/images.jpeg)

## About the Bank:

This financial institution is a prominent player in the banking sector, offering a comprehensive range of services to both individual and business clients. The bank has built a reputation for financial innovation and customer-centric solutions. It provides various products, including personal loans, mortgages, auto loans, and business financing, through an extensive network of branches and digital platforms.

## Loan Overview:

The focus of this summary is on the loan data and highlighting essential metrics such as loan amounts, interest rates, repayment terms and borrower profiles. The dataset encompasses personal loans, auto loans, home mortgages, and business loans, facilitating a detailed analysis of loan distribution and performance.

## Key Data Points:

## Loan Types:
* Personal Loans
* Auto Loans
* Home Mortgages
* Business Loans
* Education Loans
* House Loan 


## Objective of Analysis:

The analysis aims to uncover trends and insights related to loan performance, borrower characteristics, and the effectiveness of various loan products. Key areas of focus include evaluating loan approval rates, default rates, and the influence of borrower attributes on loan outcomes. The insights derived are intended to support strategic decision-making and improve the institution’s lending practices.

 
## Bank Loan Summary Report Dashboard

##  Overview
This project involves creating a dynamic dashboard in Power BI to analyze and visualize key metrics related to bank loans. The dashboard aims to provide insights into loan performance, risk assessment, and customer demographics, enabling stakeholders to make data-driven decisions.

## Features
* Total Loan Metrics: Displays total loans issued, outstanding balances, and default rates.
* Loan Type Breakdown: Visualizes the distribution of loans by type (e.g., personal, mortgage, auto).
* Geographic Analysis: Maps showcasing loan distribution across different regions.
* Performance Trends: Time series charts highlighting trends in loan growth, repayments, and defaults over time.
* Customer Insights: Demographic analysis of borrowers, including age, income, and credit scores.
* Risk Indicators: Identifies high-risk loans with metrics such as late payments and debt-to-income ratios.
* Interactive Filters: User-friendly filters for exploring data by different categories and timeframes.

## Purpose
The dashboard serves as a powerful tool for data analysis, enabling banks to monitor performance, identify trends, and assess risk effectively. It facilitates strategic decision-making and enhances understanding of the loan portfolio.

## Technologies Used
* Power BI for data visualization
* Data sources may include SQL databases, Excel spreadsheets, or other financial data systems.

## Data Sources
* Data Integration: Describe the types of data sources integrated, such as relational databases, CSV files, or APIs.
* Data Transformation: Briefly explain any ETL (Extract, Transform, Load) processes used to prepare the data for analysis.

## Dashboard Components
 * Key Visualizations: Highlight specific visual elements like bar charts, pie charts, and heat maps that enhance understanding.
 * KPIs and Metrics: Specify critical performance indicators (KPIs) tracked, such as loan approval rates, average loan amounts, and repayment durations.
 
## BANK LOAN REPORT
### TERMINOLOGIES USED IN DATA
### Fields Used in Data

## Loan ID:
Purpose: Loan ID is a unique identifier assigned to each loan application or loan account. It serves as a primary key for tracking and managing individual loans.
Use for Banks: Banks use Loan IDs to efficiently manage and track loans throughout their lifecycle. It aids in organizing loan records, monitoring repayments, and addressing customer inquiries.

## Address State:
Purpose: Address State indicates the borrower's location. It helps in assessing regional risk factors, compliance with state regulations, and estimating default probabilities.
Use for Banks: Banks use this information to identify regional trends in loan demand, adjust marketing strategies, and manage risk portfolios based on geographic regions.

## Employee Length:
Purpose: Employee Length provides insights into the borrower's employment stability. Longer employment durations may indicate greater job security.
Use for Banks: Banks consider employment length when assessing a borrower's ability to repay. Stable employment often translates to a lower default risk.

## Employee Title:
Purpose: Employee Title specifies the borrower's occupation or job title. It helps lenders understand the source of the borrower's income.
Use for Banks: Banks use this field to verify income sources, assess the borrower's financial capacity, and tailor loan offers to different professions.

## Grade:
Purpose: Grade represents a risk classification assigned to the loan based on creditworthiness. Higher grades signify lower risk.
Use for Banks: Banks use the grade to price loans and manage risk. Higher-grade loans typically receive lower interest rates and are more attractive to investors.

## Sub Grade:
Purpose: Sub Grade refines the risk assessment within a grade, providing additional risk differentiation.
Use for Banks: Sub Grades offer a finer level of risk assessment, helping banks tailor interest rates and lending terms to match borrower risk profiles.

## Home Ownership:
Purpose: Home Ownership indicates the borrower's housing status. It offers insights into financial stability.
Use for Banks: Banks use this field to assess collateral availability and borrower stability. Homeowners may have lower default rates.

## Issue Date:
Purpose: Issue Date marks the loan's origination date. It's crucial for loan tracking and maturity calculations.
Use for Banks: Banks use Issue Dates to track loan aging, calculate interest accruals, and manage loan portfolios.

## Last Credit Pull Date:
Purpose: Last Credit Pull Date records when the borrower's credit report was last accessed. It helps monitor creditworthiness.
Use for Banks: Banks use this date to track credit history updates, assess credit risk, and make informed lending decisions.

## Last Payment Date:
Purpose: Last Payment Date marks the most recent loan payment received. It tracks the borrower's payment history.
Use for Banks: Banks use this date to assess payment behavior, calculate delinquency, and project future payments.

### Loan Status:
Purpose: Loan Status indicates the current state of the loan (e.g., fully paid, current, default). It tracks loan performance.
Use for Banks: Banks use Loan Status to monitor loan health, categorize loans for risk analysis, and determine provisioning requirements.

## Next Payment Date:
Purpose: Next Payment Date estimates the date of the next loan payment. It assists in cash flow forecasting.
Use for Banks: Banks use this date for liquidity planning and to project revenue from loan portfolios.

## Purpose:
Purpose: Purpose specifies the reason for the loan (e.g., debt consolidation, education). It helps understand borrower intentions.
Use for Banks: Banks use this field to segment and customize loan offerings, aligning loan terms with borrower needs.

## Term:
Purpose: Term defines the duration of the loan in months. It sets the repayment period.
Use for Banks: Banks use the term to structure loan agreements, calculate interest payments, and manage loan maturities.

## Verification Status:
Purpose: Verification Status indicates whether the borrower's financial information has been verified. It assesses data accuracy.
Use for Banks: Banks use this field to gauge data reliability, verify income, and evaluate loan application credibility.

## Annual Income:
Purpose: Annual Income reflects the borrower's total yearly earnings. It assesses repayment capacity.
Use for Banks: Banks use this income figure to determine loan eligibility, calculate debt-to-income ratios, and evaluate creditworthiness.

## DTI (Debt-to-Income Ratio):
Purpose: DTI measures the borrower's debt burden relative to income. It gauges the borrower's capacity to take on additional debt.
Use for Banks: Banks use DTI to assess a borrower's ability to handle loan payments and make responsible lending decisions.

## Instalment:
Purpose: Instalment is the fixed monthly payment amount for loan repayment, including principal and interest.
Use for Banks: Banks use this field to structure loan terms, calculate amortization schedules, and assess payment affordability.

## Interest Rate:
Purpose: Interest Rate represents the annual cost of borrowing expressed as a percentage. It determines the loan's cost.
Use for Banks: Banks use interest rates to price loans, manage profit margins, and attract investors.

## Loan Amount:
Purpose: Loan Amount is the total borrowed sum. It defines the principal amount.
Use for Banks: Banks use Loan Amount to determine loan size

## Query
```sql
SELECT * FROM bank_loan_data
```

## 1.No. of Application?

```sql
SELECT COUNT(id) AS Total_Loan_Application
FROM bank_loan_data
```

## 3.Month To Date?

```sql
SELECT COUNT(id) AS MTD_Loan_Applications 
FROM bank_loan_data
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021
```
## 4.Previous Month of Month (MTD-PMTD)/PMTD?

```sql
SELECT COUNT(id) AS PMTD_Loan_Applications 
FROM bank_loan_data
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021
```
## 5.Total for Funded Amount?

 ```sql
 SELECT SUM(loan_amount) AS Total_Funded_Amount
 FROM bank_loan_data
```
 ## 5.Month To Date?
```sql
 SELECT SUM(loan_amount) AS Total_Funded_amount
 FROM bank_loan_data
 WHERE MONTH (issue_date) = 12 AND YEAR(issue_date) = 2021
```
 ## 6.Previous Month To Date?
```sql
 SELECT SUM(loan_amount) AS PMTD_Total_Funded_amount 
 FROM bank_loan_data
 WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021
```

## 7.Total Recived Amount?
```sql
 SELECT SUM(total_payment)
 FROM bank_loan_data AS Total_Amount_Recived
```
 ## 8.Total Recived Amount As Current Month?
```sql
SELECT SUM(total_payment) AS MTD_Total_Amount_Recived 
From bank_loan_data
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021
```
## 9.Previous Month Total Recived Amount As ?
```sql
SELECT SUM(total_payment) AS MTD_Total_Amount_Recived 
From bank_loan_data
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021
```
## 10.Average Interest Rate?
```sql
SELECT ROUND(AVG(int_rate), 4) * 100 AS Avg_interest_Rate
FROM bank_loan_data
```
## 11.For Current Month Int Rate?
```sql
SELECT ROUND(AVG(int_rate), 4) * 100 AS Current_Month_Int_Rate
FROM bank_loan_data
WHERE MONTH(issue_date) = 12  AND YEAR(issue_date) = 2021
```
## 12.For The Previous Month?
```sql
SELECT ROUND(AVG(int_rate), 4) * 100 AS PMIR
FROM bank_loan_data
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021
```
```sql
SELECT ROUND(AVG(dti), 4) * 100 AS Avg_DTI
FROM bank_loan_data
```
## 13.Month To Date Avg Rate?
```sql
SELECT ROUND(AVG(dti), 4) * 100 AS MTD_AVG_DTI
FROM bank_loan_data
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021
```
## 14.Previous Month To Date Avg Rate?
```sql
SELECT ROUND(AVG(dti), 4) * 100 AS MTD_AVG_DTI
FROM bank_loan_data
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021
```
## 15.Good Loan percentage?
```sql
SELECT
(COUNT(CASE WHEN loan_status = 'Fully paid' OR loan_status = ' Current' THEN id END) * 100)
/
COUNT(id) AS Good_Loan_Percentage
FROM bank_loan_data
```
## 16.Good Loan Applicartion?
```sql
SELECT COUNT(id) AS Good_Loan_Application
FROM bank_loan_data 
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current'
```
## 17.Good Loan Funded Amount?
```sql
SELECT SUM(loan_amount) AS Good_Loan_funded_Amount
FROM bank_loan_data
WHERE loan_status = 'Fully paid' Or loan_status = ' Current'
```
## 18.Good Loan Total Payment Recived Amount?
```sql
SELECT SUM(total_payment) AS Good_Loan_Recieved_Amount
FROM bank_loan_data
WHERE loan_status = 'Fully paid' OR loan_status = 'Current'
```
## 18.Bad loans?
```sql
SELECT 
(COUNT(CASE WHEN loan_status = 'Charged off' THEN id END) * 100.0)
/
COUNT(id) AS Bad_Loan_percentage
FROM bank_loan_data
```
-- Bank Bad Loans application

SELECT COUNT(id) AS Bad_Loan_Applications
FROM bank_loan_data
WHERE  loan_status = 'Charged Off'

## 19.Bad loan Funded Amount?
```sql
SELECT SUM(loan_amount) AS Bad_Loan_Funded_Amount
FROM bank_loan_data
WHERE loan_status = 'Charged Off'
```
## 20.Bad loan Funded Amount Recived?
```sql
SELECT SUM(total_payment) AS Bad_Loan_Funded_Amount_Recived
FROM bank_loan_data
WHERE loan_status = 'Charged Off'
```
## 20.Loan Status?
```sql
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
```
## 21.Current Month To Date?
```sql
SELECT
   loan_status,
   SUM(total_payment) AS MTD_Total_Amount_Received,
   SUM(loan_amount) AS MTD_Total_Funded_Amount
 FROM bank_loan_data
 WHERE MONTH(issue_date) = 12
   GROUP BY
      loan_status
```
## 22.Bank Loan Application OverView?
```sql
SELECT
    MONTH(issue_date) AS Month_Number,
	DATENAME(MONTH, issue_date) AS Month_Name,
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Received_Amount
FROM bank_loan_data
GROUP BY MONTH(issue_date), DATENAME(MONTH, issue_date)
ORDER BY MONTH(issue_date)
```
## 23.Bank Loan Application Address State?
```sql
SELECT
    address_state,
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Received_Amount
FROM bank_loan_data
GROUP BY  address_state
ORDER BY  COUNT(id) DESC
```
## 24.On The Basis of Term?
```sql
SELECT
    term,
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Received_Amount
FROM bank_loan_data
GROUP BY  term
ORDER BY  term
```
## 25.On The Basis of Emp Name?

SELECT
    emp_length,
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Received_Amount
FROM bank_loan_data
GROUP BY  emp_length
ORDER BY  emp_length

## 26.On The Basis of Purpose?
```sql
SELECT
    purpose,
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Received_Amount
FROM bank_loan_data
GROUP BY  purpose
ORDER BY  COUNT(id) DESC
```

## 27.On The Basis of Home Ownership?
```sql
SELECT
    home_ownership,
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Received_Amount
FROM bank_loan_data
GROUP BY  home_ownership
ORDER BY  COUNT(id) DESC
```


## 28.On The Basis of Grade View?
```sql
SELECT
    home_ownership,
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Received_Amount
FROM bank_loan_data
WHERE grade = 'A'
GROUP BY  home_ownership
ORDER BY  COUNT(id) DESC
```





