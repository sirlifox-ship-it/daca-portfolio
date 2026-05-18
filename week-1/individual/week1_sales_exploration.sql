-- ============================================
-- Nädal 1: SQL Põhitõed — Toomase raport
-- Autor: Sirli Rebane
-- Kuupäev: 2026-05-14
-- ============================================

-- 1. Duplikaatide arv
SELECT
    COUNT(*) AS ridu_kokku,
    COUNT(DISTINCT sale_id) AS unikaalseid,
    COUNT(*) - COUNT(DISTINCT sale_id) AS duplikaate
FROM sales;

-- 2. NULL väärtused
SELECT
    COUNT(*) AS kokku,
    COUNT(customer_id) AS klientidega,
    COUNT(*) - COUNT(customer_id) AS puudub_klient
FROM sales;

-- 3. Suurimad müügid
SELECT sale_id, customer_id, total_price
FROM sales
ORDER BY total_price DESC
LIMIT 10;

-- 4. Kahtlased read
SELECT sale_id, customer_id, total_price
FROM sales
ORDER BY total_price ASC
LIMIT 10;
