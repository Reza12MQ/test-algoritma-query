--1
SELECT c.category_name AS "Category Name", p.category_name AS "Parent Name"
FROM category c JOIN category p ON c.parent_category_id = p.id;

--2
SELECT customer_code AS "Customer Code", customer_name AS "Customer Name", address AS Address, YEAR(CURDATE())-YEAR(birth_date) AS Age
FROM customer
HAVING Age BETWEEN 30 AND 40;

--3
SELECT c.customer_code AS "Customer Code", c.customer_name AS "Customer Name", COUNT(s.id)
FROM customer c JOIN so s ON c.id = s.customer_id
GROUP BY c.id;

--4
SELECT p.id AS Id, p.product_code AS "Product Code",  p.product_name AS "Product Name", p.price AS "Price", c.category_name AS "Kategori"
FROM product p LEFT JOIN category c ON p.category_id = c.id;

--5
SELECT s.so_no AS "No SO", c.customer_name AS "Customer Name", s.trans_date AS "Transaction Date", SUM(d.price) AS "Total Amount"
FROM so s JOIN so_detail d ON s.id = d.so_id JOIN customer c ON s.customer_id = c.id
GROUP BY d.so_id;

--6
SELECT p.product_code AS "Product Code", p.product_name AS "Product Name", SUM(d.qty) AS "Total Terjual"
FROM product p JOIN so_detail d ON p.id = d.product_id
GROUP BY d.product_id
ORDER BY SUM(d.qty) DESC LIMIT 1;

--7
SELECT c.customer_code AS "Customer Code", c.customer_name AS "Customer Name", SUM(d.price) AS "Total Amount"
FROM customer c JOIN so s ON c.id = s.customer_id JOIN so_detail d ON s.id = d.so_id
GROUP BY c.id
ORDER BY SUM(d.price) DESC LIMIT 5;

--8
UPDATE so
SET payment = "cash"
WHERE DATEDIFF(CURDATE(), trans_date) > 7 AND payment = "credit";

--9
UPDATE so s JOIN customer c ON s.customer_id = c.id
SET s.payment = c.default_payment
WHERE s.payment != c.default_payment;

--10
INSERT INTO so (id, so_no, customer_id, trans_date, payment)
VALUES (9, "2550001", 568, "2022-03-30", "cash");
INSERT INTO so_detail (id, product_id, qty, price, discount, so_id)
VALUES
	(901, 123, 2, 125000, 0, 9),
    (902, 245, 1, 320000, 10, 9),
    (903, 320, 24, 56000, 0, 9);