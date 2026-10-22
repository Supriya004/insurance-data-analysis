# Insurance Data Analysis Dashboard

## Project Overview

This project explores an insurance dataset using Microsoft SQL Server and Power BI. It combines SQL queries with interactive data visualisation to examine insurance premiums, policy types, customer demographics, and claim information.

## Tools Used

- SQL Server
- SQL Server Management Studio (SSMS)
- Microsoft Power BI Desktop
- Power Query

## Dataset Overview

- **Total records:** 10,004
- **Distinct policy numbers:** 10,000
- **Distinct customer IDs:** 10,000
- **Total columns:** 13

The dataset includes policy details, customer demographics, premium amounts, coverage amounts, and claim information. It was supplied as part of an online learning course.

## SQL Analysis

The SQL script includes queries for:

1. Exploring the dataset and counting records
2. Calculating premium summary statistics
3. Comparing policy types
4. Analysing claim status distribution
5. Grouping records by customer age
6. Identifying high-value recorded claims

Additional validation queries were used to confirm record counts, distinct identifiers, and aggregate totals.

## Key Findings

- The dataset contains 10,004 records.
- The total recorded premium amount is approximately 5.98 million.
- The average premium amount is approximately 597.46.
- The total recorded claim amount is approximately 16.91 million.
- Rejected claims are the most frequent status, with 4,355 records.
- Travel is the most common policy type, with 4,148 records.
- The dataset contains 3,386 settled records and 2,263 pending records.

*Note: Claim amounts and status counts describe the supplied dataset and should not be interpreted as verified insurer payments or financial performance.*

## Power BI Dashboard

The Power BI dashboard presents insurance information through KPI cards, slicers, and visualisations. It was created in Power BI Desktop using the supplied dataset.

See the `screenshots/` folder for dashboard previews.

## Project Structure

- `insurance_analysis.sql` — SQL analysis and validation queries
- `Insurance_Dashboard.pbix` — Power BI report
- `screenshots/` — Dashboard screenshots

## Learning Outcomes

- Practised SQL aggregation, grouping, sorting, filtering, and conditional logic.
- Explored data using Power Query.
- Created an interactive Power BI dashboard.
- Documented analytical findings for a portfolio project.

## Disclaimer

This is a learning project based on a dataset supplied with an online course. The analysis is intended for educational purposes and does not represent verified real-world insurance performance.
