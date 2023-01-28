WITH complaint_types AS
  (SELECT major_category, Count(minor_category) AS occurence_value
  FROM bigquery-public-data.london_crime.crime_by_lsoa
  GROUP BY major_category
  ORDER BY occurence_value DESC)

SELECT *
FROM complaint_types