CREATE TABLE products (
  id INTEGER PRIMARY KEY,
  name TEXT,
  price REAL
);

CREATE TABLE orders (
  id INTEGER PRIMARY KEY,
  customer_id INTEGER,
  FOREIGN KEY (customer_id) REFERENCES customers(id)
);

CREATE TABLE order_items (
  id INTEGER PRIMARY KEY,
  order_id INTEGER,
  product_id INTEGER,
  FOREIGN KEY (order_id) REFERENCES orders(id),
  FOREIGN KEY (product_id) REFERENCES products(id)
);

INSERT INTO products (name, price)
    VALUES  ('Product 1', 10.00),
            ('Product 2', 20.00),
            ('Product 3', 30.00);

INSERT INTO orders (customer_id)
    VALUES  (1),
            (2);

INSERT INTO order_items (order_id, product_id)
    VALUES  (1, 1),
            (1, 2),
            (2, 2),
            (2, 3);

-- SELECT * FROM products;
-- SELECT * FROM orders;
-- SELECT * FROM order_items;

SELECT * FROM products
    WHERE id IN (
        SELECT product_id FROM order_items
        WHERE order_id = 1
    );