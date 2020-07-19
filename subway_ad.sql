 --- Get a feel for the orders table:
 SELECT *
  FROM orders
  LIMIT 10;

--- Find all unique order dates:
SELECT DISTINCT order_date
  FROM orders;

--- Select only the special_instructions column:
SELECT special_instructions
  FROM orders
  LIMIT 20;

--- Only return the special instructions that are not empty:
SELECT special_instructions
  FROM orders
  WHERE special_instructions IS NOT NULL;

--- Sort instructions in alphabetical order:
SELECT special_instructions
  FROM orders
  WHERE special_instructions IS NOT NULL
  ORDER BY special_instructions ASC;
  
--- Find special instructions that have the word 'sauce':
SELECT special_instructions
  FROM orders
  WHERE special_instructions LIKE '%sauce%'
  ORDER BY special_instructions ASC;

--- Find special instructions that have the word 'door':
SELECT special_instructions
  FROM orders
  WHERE special_instructions LIKE '%door%'
  ORDER  BY special_instructions ASC;

--- Find special instructions that have the word 'box':
SELECT special_instructions
  FROM orders
  WHERE special_instructions LIKE '%box%'
  ORDER BY special_instructions ASC;

--- Return order ID with special instructions. Rename id as '#' and special_instructions as 'Notes'
SELECT id AS '#', special_instructions AS 'Notes'
  FROM orders
  WHERE special_instructions LIKE '%sauce%' OR special_instructions LIKE '%door%' OR special_instructions LIKE '%box%'
  ORDER BY special_instructions ASC;
