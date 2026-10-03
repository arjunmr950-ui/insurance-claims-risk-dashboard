SELECT * FROM [insurance_policies_data ]

--TOTAL POLICES
SELECT COUNT (ID) AS TOTAL_POLICES FROM [insurance_policies_data ]

--TOTAL CLAIM AMOUNT
SELECT SUM (Claim_Amount) AS TOTAL_CLAIM_AMOUNT FROM [insurance_policies_data ]

--AVG CLAIM AMOUNT 
SELECT AVG (Claim_Amount) AS AVG_CLAIM_AMOUNT FROM [insurance_policies_data ]

--GENDER WISE TOTAL POLICIES
SELECT Gender,
count(ID) AS POLICY_GENDERWISE FROM [insurance_policies_data ]
GROUP BY Gender

--GENDER & MARITAL STATUS WISE TOTAL POLICIES
SELECT Gender,
       Marital_Status,
COUNT (ID) AS TOTAL_POLICY FROM [insurance_policies_data ]
GROUP BY Gender, Marital_Status
ORDER BY TOTAL_POLICY DESC

--GENDER & MARITAL STATUS WISE TOTAL CLAIM AMOUNT
SELECT Gender,
       Marital_Status,
CAST(SUM(Claim_Amount) AS decimal (10,2)) AS TOTAL_CLAIM_AMOUNT FROM [insurance_policies_data ]
GROUP BY Gender, Marital_Status
ORDER BY TOTAL_CLAIM_AMOUNT DESC

--TOTAL KIDS DRIVING
SELECT SUM(Kids_Driving) AS AVG_KIDS_DRIVING FROM [insurance_policies_data ]