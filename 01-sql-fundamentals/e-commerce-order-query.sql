/*sql
-- ============================================================
-- E-Commerce Order Query
-- Domain: E-Commerce Operations
-- Focus: SQL Fundamentals
-- ============================================================


-- Business Requirement
-- ------------------------------------------------------------
-- The operations team is reviewing recently delivered orders
-- to identify high-value laptop purchases for an internal
-- order-level review.
--
-- The team requires orders that satisfy all of the following:
--
-- 1. The order must have a status of 'Delivered'.
-- 2. The order value must be between ₹25,000 and ₹80,000.
-- 3. The product name must contain the word 'Laptop'.
--
-- For each matching order, the team needs the order details
-- along with the brand and fulfillment center associated with
-- the order.
--
-- The results should be ordered from the highest order value
-- to the lowest, and only the top 5 orders are required.
--
-- Required columns:
--   order_id
--   product_name
--   brand
--   fc
--   order_value
--   order_status
--
-- SQL Concepts:
--   SELECT
--   WHERE
--   BETWEEN
--   LIKE
--   ORDER BY
--   LIMIT
-- ============================================================


-- Solution
-- ------------------------------------------------------------
*/
SELECT
    order_id,
    product_name,
    brand,
    fc,
    order_value,
    order_status
FROM orders
WHERE order_status = 'Delivered'
  AND order_value BETWEEN 25000 AND 80000
  AND product_name LIKE '%Laptop%'
ORDER BY order_value DESC
LIMIT 5;

