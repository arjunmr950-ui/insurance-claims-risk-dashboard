
# 🚗 Insurance Risk & Claims Analysis

## 📊 Project Overview

**Insurance Risk & Claims Analysis** is an end-to-end data analytics project focused on analyzing insurance policy data, claim amounts, customer demographics, vehicle characteristics, and risk-related factors.

The project combines **Excel, SQL, and Power BI** to transform raw insurance data into meaningful business insights through data analysis and interactive visualization.

The main objective is to understand **claim patterns, customer characteristics, vehicle-related risks, and insurance portfolio performance** and present these findings through an interactive Power BI dashboard.

---

# 📈 Power BI Dashboard

## Dashboard Overview

The Power BI dashboard provides an interactive overview of insurance policies and claim performance.

The dashboard was designed to help users quickly understand the overall insurance portfolio while also allowing deeper analysis of claim amounts across different customer and vehicle characteristics.

### Dashboard Screenshot

![Insurance Risk & Claims Analysis Dashboard](Screenshot%202026-10-03%20225633.png)

---

## 🔑 Key Performance Indicators

The dashboard includes high-level KPI cards that provide an immediate summary of the insurance portfolio:

* **Total Policies** – Overall number of insurance policies in the dataset.
* **Total Claim Amount** – Combined claim amount across all policies.
* **Average Claim Amount** – Average claim value per policy/claim.
* **Claim Frequency** – Overall claim frequency represented in the dataset.
* **Male Customers** – Number of male policyholders.
* **Female Customers** – Number of female policyholders.

These KPIs provide a quick snapshot of the overall scale and financial performance of the insurance portfolio.

---

## 📊 Dashboard Analysis

### 1. Total Claim Amount by Car Use

The **Total Claim Amount by Car Use** visualization analyzes claims according to how the insured vehicle is used.

This helps identify whether particular categories of vehicle usage contribute a larger share of total claims and can be useful for understanding differences in risk exposure across vehicle usage types.

---

### 2. Total Claim Amount by Car Make

The **Total Claim Amount by Car Make** chart compares claim amounts across different vehicle manufacturers.

This analysis helps identify vehicle brands associated with higher or lower claim amounts and can provide useful information for understanding vehicle-related risk patterns.

---

### 3. Total Claim Amount by Coverage Zone

The dashboard analyzes claim amounts across different **Coverage Zones**.

This allows the insurance portfolio to be evaluated geographically and helps identify zones contributing a higher proportion of overall claims.

Such analysis can support risk segmentation and help insurance businesses understand how claim exposure varies across coverage regions.

---

### 4. Total Claim Amount by Age Group

The **Age Group** analysis examines how claim amounts vary across different customer age categories.

This provides a demographic view of insurance risk and makes it easier to identify age groups associated with higher claim exposure.

---

### 5. Total Claim Amount by Kids Driving

The dashboard also analyzes claim amounts based on the number of **kids driving** associated with the policy.

This provides an additional risk-related dimension and helps investigate whether policies involving different levels of driving exposure among younger household members show different claim patterns.

---

### 6. Total Claim Amount by Car Year

The **Car Year** area chart analyzes claim amounts based on vehicle manufacturing year.

This helps examine whether older or newer vehicles contribute differently to the overall claim amount and provides insight into the relationship between vehicle age and insurance claims.

---

### 7. Total Claim Amount by Education

The dashboard analyzes total claim amounts according to the policyholder's **education level**.

This demographic analysis helps identify differences in claim exposure between customer education categories.

---

### 8. Claim Amount by Education & Marital Status

The dashboard includes a detailed matrix combining:

* Education
* Marital Status
* Total Claim Amount

This provides a more granular view of customer segments and makes it possible to compare claim amounts across combinations of demographic characteristics.

---

## 🎛️ Interactive Dashboard

The dashboard includes an interactive **measure selector**, allowing users to dynamically explore the available analytical measures.

This makes the dashboard more flexible and allows users to focus on the metric most relevant to their analysis.

The visualizations are designed to work together, enabling users to compare claim performance across:

* Customer demographics
* Vehicle characteristics
* Vehicle usage
* Coverage zones
* Age groups
* Education
* Marital status
* Driving-related factors
* Vehicle manufacturing year

---

# 🗄️ SQL Analysis

SQL was used to perform the initial analytical exploration of the insurance dataset and calculate important business metrics.

### SQL Query Screenshot

![SQL Analysis Queries](Screenshot%202026-10-03%20225702.png)

### SQL Query Results

![SQL Query Results](Screenshot%202026-10-03%20225727.png)

---

## SQL Analysis Performed

### Total Policies

Calculated the total number of insurance policies using `COUNT(ID)`.

```sql
SELECT COUNT(ID) AS TOTAL_POLICES
FROM insurance_policies_data;
```

### Total Claim Amount

Calculated the overall claim amount using `SUM(Claim_Amount)`.

```sql
SELECT SUM(Claim_Amount) AS TOTAL_CLAIM_AMOUNT
FROM insurance_policies_data;
```

### Average Claim Amount

Calculated the average claim amount using `AVG(Claim_Amount)`.

```sql
SELECT AVG(Claim_Amount) AS AVG_CLAIM_AMOUNT
FROM insurance_policies_data;
```

### Gender-wise Policy Analysis

Analyzed the number of policies across different genders.

```sql
SELECT Gender,
       COUNT(ID) AS POLICY_GENDERWISE
FROM insurance_policies_data
GROUP BY Gender;
```

### Gender & Marital Status Analysis

Analyzed the number of policies by combining gender and marital status.

```sql
SELECT Gender,
       Marital_Status,
       COUNT(ID) AS TOTAL_POLICY
FROM insurance_policies_data
GROUP BY Gender, Marital_Status
ORDER BY TOTAL_POLICY DESC;
```

### Gender & Marital Status-wise Claim Analysis

Analyzed total claim amounts across gender and marital-status segments.

```sql
SELECT Gender,
       Marital_Status,
       CAST(SUM(Claim_Amount) AS DECIMAL(10,2)) AS TOTAL_CLAIM_AMOUNT
FROM insurance_policies_data
GROUP BY Gender, Marital_Status
ORDER BY TOTAL_CLAIM_AMOUNT DESC;
```

### Kids Driving Analysis

Calculated the total number of kids driving associated with the policies.

```sql
SELECT SUM(Kids_Driving) AS AVG_KIDS_DRIVING
FROM insurance_policies_data;
```

The complete SQL analysis is available in the project repository.

---

# 📑 Excel Dataset

## Dataset Overview

The project uses an insurance policy dataset containing information about customers, insurance policies, claims, and vehicle characteristics.

### Dataset Screenshot

![Insurance Dataset](Screenshot%202026-10-03%20225534.png)

The dataset serves as the foundation for the SQL analysis and Power BI dashboard.

---

## Key Dataset Attributes

The analysis uses fields related to:

### 👤 Customer Information

* Gender
* Age / Age Group
* Marital Status
* Education

### 🚘 Vehicle Information

* Car Make
* Car Year
* Car Use

### 🛡️ Insurance Information

* Policy ID
* Coverage Zone
* Claim Amount
* Claim Frequency

### 👨‍👩‍👧 Driving & Risk Factors

* Kids Driving

These attributes allow the dataset to be analyzed from both **customer-risk** and **vehicle-risk** perspectives.

---

# 🛠️ Tools & Technologies

| Tool                | Purpose                                               |
| ------------------- | ----------------------------------------------------- |
| **Microsoft Excel** | Dataset preparation and initial data handling         |
| **SQL**             | Data exploration, aggregation, and analytical queries |
| **Power BI**        | Interactive dashboard development and visualization   |
| **DAX**             | KPI calculations and Power BI measures                |
| **GitHub**          | Project documentation and version control             |

---

# 🔄 Project Workflow

```text
Raw Insurance Dataset
        ↓
     Excel
        ↓
 Data Preparation
        ↓
      SQL
        ↓
Exploratory Analysis
        ↓
    Power BI
        ↓
Data Modeling & DAX
        ↓
Interactive Dashboard
        ↓
Business Insights
```

---

# 🎯 Project Objectives

The major objectives of this project are:

* Analyze the overall insurance policy portfolio.
* Calculate total and average claim amounts.
* Understand customer demographic patterns.
* Analyze claim amounts across different vehicle manufacturers.
* Examine the relationship between vehicle age and claims.
* Compare claim exposure across coverage zones.
* Analyze claims by vehicle usage.
* Study claim patterns across different age groups.
* Analyze the impact of education and marital status on claims.
* Investigate driving-related risk factors.
* Build an interactive dashboard for business-oriented decision making.

---

# 💡 Key Business Questions

This project helps answer questions such as:

1. How many insurance policies are present in the portfolio?
2. What is the total claim amount?
3. What is the average claim amount?
4. How are policies distributed by gender?
5. Which gender and marital-status combinations have higher claim amounts?
6. Which car makes contribute the highest claim amounts?
7. Which coverage zones have greater claim exposure?
8. Which age groups contribute the most to claims?
9. How does vehicle manufacturing year relate to claim amounts?
10. Does car usage influence total claim exposure?
11. How do education and marital status relate to claim amounts?
12. How does the number of kids driving relate to claim patterns?

---

# 📌 Project Highlights

* End-to-end **data analytics workflow**
* SQL-based exploratory analysis
* Interactive Power BI dashboard
* KPI-driven reporting
* Customer demographic analysis
* Vehicle risk analysis
* Insurance claim analysis
* Data visualization and business intelligence
* Interactive measure selection
* Business-focused insight generation

---

# 👨‍💻 Skills Demonstrated

**Data Analysis | SQL | Microsoft Excel | Power BI | DAX | Data Visualization | KPI Development | Exploratory Data Analysis | Business Intelligence | Dashboard Design | Data Storytelling**

---

# 📂 Project Structure

```text
insurance-risk-claims-analysis/
│
├── README.md
│
├── Dataset/
│   └── insurance_dataset.xlsx
│
├── SQL/
│   └── SQLQuery1.sql
│
├── PowerBI/
│   └── INSURANCE RISK & CLAIM ANALYSIS.pbix
│
└── Screenshots/
    ├── Screenshot 2026-10-03 225534.png
    ├── Screenshot 2026-10-03 225633.png
    ├── Screenshot 2026-10-03 225702.png
    └── Screenshot 2026-10-03 225727.png
```

---

# 🚀 Conclusion

This project demonstrates how raw insurance data can be transformed into meaningful business intelligence using **Excel, SQL, and Power BI**.

By combining SQL-based analysis with an interactive Power BI dashboard, the project provides a structured view of **insurance claims, customer demographics, vehicle characteristics, and risk factors**, helping stakeholders identify patterns and make more informed data-driven decisions.

