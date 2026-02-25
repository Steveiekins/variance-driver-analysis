-- Core variance table

SELECT
  month,
  account_name,
  variance,
  ROW_NUMBER() OVER (
    PARTITION BY month
    ORDER BY ABS(variance) DESC
  ) AS rn
FROM (
SELECT
  a.month,
  a.account_name,
  a.actual_amount,
  b.budget_amount,
  a.actual_amount - b.budget_amount AS variance
FROM(
SELECT 
	DATE(date, 'start of month') AS month,
	account_name,
	SUM(amount) as actual_amount
FROM actual_clean
GROUP BY month, account_name
) a
JOIN(
SELECT
	DATE(date, 'start of month') AS month,
	account_name,
	SUM(budget_amount) AS budget_amount
FROM budget_clean
GROUP BY month, account_name
) b
ON a.month = b.month
AND a.account_name = b.account_name 
)
