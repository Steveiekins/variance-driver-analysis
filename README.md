# Monthly Variance Driver Analysis (Actual vs Budget)

## Problem 
Which revenue and cost accounts are driving the variance between actual results and budget on a monthly basis?
‎‎
## Data
- Monthly actuals and budget synthetic data that covers 6 months within a single fiscal year
- Account-level granularity
‎
## Approach
- Validated and reconciled raw actuals and budget data
- Aggregated data to a monthly account-level grain
- Computed actual vs budget variance and ranked drivers by absolute impact per month
- Classified primary and secondary drivers as recurring (structural) or episodic (volatile)
- Synthesized results into executive-level insights
‎‎
## Key Output (Preview)
Below is a sample of the final variance driver table which includes the top 3 drivers for a month:

| Month      | Account         | Variance |
|------------|-----------------|----------|
| 2024-01-01 | Product Sales   | -5000  |
| 2024-01-01 | Cost of Goods Sold | 2000  |
| 2024-01-01 | Service Revenue |  2000  |

Full results available in `final_output/top_variance_drivers_by_month.csv`.

## Executive Outcome
Product Sales revenue underperformance emerged as the primary recurring variance driver across the period, while Marketing expense appeared as a secondary, volatile contributor in select months.
‎
## Assumptions
- Variance = actuals - budget
- Negative revenue variance interpreted as underperformance
‎
## Notes
Focuses on high-integrity data modeling and variance analysis to ensure executive-level accuracy.

## Tech stack
SQL (joins, aggregation, ranking), Excel
