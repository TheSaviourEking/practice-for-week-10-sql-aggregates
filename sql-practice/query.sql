-- Step 1: COUNT
SELECT
  COUNT(*)
FROM
  cats;

-- Step 2: MIN / MAX
-- Write a query for the oldest cat, and the year it was born.
-- SELECT
--   id,
--   name,
--   MIN(birth_year)
-- FROM
--   cats;

-- -- Write a query for the youngest cat, and the year it was born.
-- SELECT
--   id,
--   name,
--   MAX(birth_year)
-- FROM
--   cats;

-- combined as one 
SELECT 
    id,
    name,
    birth_year 
FROM 
    cats 
WHERE 
    birth_year = (
        SELECT 
            MIN(birth_year) 
        FROM 
            cats
    )
    OR 
    birth_year = (
        SELECT 
            MAX(birth_year) 
        FROM 
            cats
    );
