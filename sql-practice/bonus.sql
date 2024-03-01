-- Step 1: GROUP BY
-- SELECT
--   COUNT(toys.name)
-- FROM
--   toys
--   JOIN cats ON (toys.cat_id = cats.id);
-- Step 2: HAVING
SELECT
  cats.name
FROM
  cats
  JOIN toys ON (toys.cat_id = cats.id)
GROUP BY
  toys.cat_id
HAVING
  COUNT(toys.cat_id) >= 2;

-- SELECT * from cats;
