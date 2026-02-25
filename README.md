# Monthly Variance Driver Analysis (Actual vs Budget)

## Problem 
Which revenue and cost accounts are driving the variance between actual results and budget on a monthly basis?

## Approach
- Validated and reconciled raw actuals and budget data
- Aggregated data to a monthly account-level grain
- Computed actual vs budget variance and ranked drivers by absolute impact per month
- Classified primary and secondary drivers as recurring (structural) or episodic (volatile)
- Synthesized results into executive-level insights

## Key Output (Preview)
Below is a sample of the final variance driver table (top drivers per month):

| Month      | Account         | Variance |
|------------|-----------------|----------|
| 2024-03-01 | Product Sales   | -45,000  |
| 2024-05-01 | Product Sales   | -38,000  |
| 2024-04-01 | Marketing Spend |  22,000  |

Full results available in `final_output/top_variance_drivers_by_month.csv`.

## Executive Outcome
Product Sales revenue underperformance emerged as the primary recurring variance driver across the period, while Marketing expense appeared as a secondary, volatile contributor in select months.

## Notes
This project prioritizes data validation discipline, analytical correctness, and executive-level synthesis over visualization.
