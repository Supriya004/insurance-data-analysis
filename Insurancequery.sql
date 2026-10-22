USE Insurancedb;
GO

SELECT COUNT(*) AS TotalRecords
FROM dbo.InsuranceData;

SELECT DISTINCT PolicyType
FROM dbo.InsuranceData;

SELECT TOP 10 *
FROM dbo.InsuranceData;

SELECT
    COUNT(*) AS TotalRecords,
    SUM(PremiumAmount) AS TotalPremium,
    AVG(PremiumAmount) AS AveragePremium,
    MIN(PremiumAmount) AS MinimumPremium,
    MAX(PremiumAmount) AS MaximumPremium
FROM dbo.InsuranceData;

SELECT
    PolicyType,
    COUNT(*) AS NumberOfRecords,
    SUM(PremiumAmount) AS TotalPremium,
    AVG(PremiumAmount) AS AveragePremium
FROM dbo.InsuranceData
GROUP BY PolicyType
ORDER BY TotalPremium DESC;

SELECT
    ClaimStatus,
    COUNT(*) AS NumberOfRecords,
    SUM(ClaimAmount) AS TotalClaimAmount,
    AVG(ClaimAmount) AS AverageClaimAmount
FROM dbo.InsuranceData
GROUP BY ClaimStatus
ORDER BY NumberOfRecords DESC;

SELECT
    CASE
        WHEN Age < 25 THEN 'Under 25'
        WHEN Age < 40 THEN '25-39'
        WHEN Age < 60 THEN '40-59'
        ELSE '60 and above'
    END AS AgeGroup,
    COUNT(*) AS NumberOfRecords,
    AVG(PremiumAmount) AS AveragePremium
FROM dbo.InsuranceData
GROUP BY
    CASE
        WHEN Age < 25 THEN 'Under 25'
        WHEN Age < 40 THEN '25-39'
        WHEN Age < 60 THEN '40-59'
        ELSE '60 and above'
    END
ORDER BY MIN(Age);

SELECT TOP 20
    PolicyNumber,
    CustomerID,
    PolicyType,
    ClaimAmount,
    ClaimStatus
FROM dbo.InsuranceData
WHERE ClaimAmount > 0
ORDER BY ClaimAmount DESC;