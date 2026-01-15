-- Forecast accuracy by category
SELECT
  category,
  AVG(ABS(units_sold - demand_forecast)) AS mae,
  SQRT(AVG(POWER(units_sold - demand_forecast,2))) AS rmse,
  SUM(ABS(units_sold - demand_forecast)) / NULLIF(SUM(units_sold),0) AS wmape
FROM retail_inventory
GROUP BY 1;
