INSERT INTO products (name, price, description, tags, category_id,Supplier)
VALUES
    ('Ipad', 100, 'High-performance ipad for professionals', 'electronics, portable, tech', 5, 'SupplierA')
--ERROR: This wouldn't work because category_id doesn't exist, it's a foreign key constraint

SELECT * FROM categories --We can check the existing categories again

INSERT INTO products (product_id, name, price, description, tags, category_id,Supplier)
VALUES
    (6, 'Ipad', 100, 'High-performance ipad for professionals', 'electronics, portable, tech', 5, 'SupplierA')
--ERROR: This wouldn't work because product_id already exist, it's a primary key constraint

INSERT INTO products (name, price, description, tags, category_id,Supplier)
VALUES
    ('Ipad', 100, 'High-performance ipad for professionals', 'electronics, portable, tech', 1, 'SupplierA')
--This works, product_id doesn't has to be given as it's automatical incremental as a primary key
--The given columns don't have to match order from columns in defined table, the given values have to match order of given columns

SELECT * FROM products

--NOTE: There also may be restraints if values cannot be NULL, you have to give a value
--NOTE: Some columns might have a default values enabled, which will be set if not given in query
