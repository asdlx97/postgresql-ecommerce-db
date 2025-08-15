--
-- PostgreSQL database dump
--

-- Dumped from database version 17.5 (Postgres.app)
-- Dumped by pg_dump version 17.5

-- Started on 2025-08-15 17:21:08 CEST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 3690 (class 0 OID 16397)
-- Dependencies: 218
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categories (category_id, name) FROM stdin;
1	Electronics
2	Clothing
3	Home and Kitchen
4	Entertainment
\.


--
-- TOC entry 3694 (class 0 OID 16419)
-- Dependencies: 222
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customer (customer_id, customer_name, email, phone_number, address, city) FROM stdin;
1	Alice Johnson	alice@example.com	123-456-7890	123 Main St	Cityville
2	Bob Smith	bob@example.com	987-654-3210	456 Oak Ave	Townsville
3	Charlie Brown	charlie@example.com	555-123-4567	789 Pine Ln	New York
4	David White	david@example.com	222-333-4444	567 Maple Dr	NYC
5	Eva Black	eva@example.com	999-888-7777	890 Cedar Rd	Big Apple
6	Frank Green	frank@example.com	111-222-3333	123 Elm St	Gotham City
\.


--
-- TOC entry 3692 (class 0 OID 16404)
-- Dependencies: 220
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products (product_id, name, price, description, tags, category_id, supplier) FROM stdin;
1	Laptop	\N	High-performance laptop for professionals	electronics, portable, tech	1	SupplierA
2	Headphones	129.99	Over-ear wireless headphones	electronics, audio, accessories	1	SupplierB
4	Coffee Maker	\N	Automatic drip coffee maker with programmable timer	home, kitchen, appliances	3	NULL
3	Backpack	84.99	Stylish and durable backpack for everyday use	fashion, accessories, travel	2	NULL
6	Book	19.99	Lord Of The Rings	entertainment, literature	4	Supplier C
5	Fitness Tracker	109.99	Water-resistant fitness tracker with heart rate monitor	electronics, fitness, wearables	1	NULL
\.


--
-- TOC entry 3696 (class 0 OID 16428)
-- Dependencies: 224
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orders (order_id, customer_id, product_id, total_quantity, total_amount, order_rating, length, width, order_timestamp, delivery_timestamp) FROM stdin;
1	1	1	5	121	4.5	2.30	1.80	2023-01-15 10:30:00	2023-01-16 15:45:00
2	2	2	3	75	3.8	1.50	1.20	2023-02-03 14:20:00	2023-02-05 11:10:00
3	3	3	7	211	4.2	2.80	2.00	2023-03-12 08:45:00	2023-03-14 09:30:00
4	1	4	2	50	4.0	1.80	1.50	2023-04-05 12:15:00	2023-04-07 18:20:00
\.


--
-- TOC entry 3702 (class 0 OID 0)
-- Dependencies: 217
-- Name: categories_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categories_category_id_seq', 3, true);


--
-- TOC entry 3703 (class 0 OID 0)
-- Dependencies: 221
-- Name: customer_customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customer_customer_id_seq', 6, true);


--
-- TOC entry 3704 (class 0 OID 0)
-- Dependencies: 223
-- Name: orders_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_order_id_seq', 4, true);


--
-- TOC entry 3705 (class 0 OID 0)
-- Dependencies: 219
-- Name: products_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_product_id_seq', 7, true);


-- Completed on 2025-08-15 17:21:08 CEST

--
-- PostgreSQL database dump complete
--

