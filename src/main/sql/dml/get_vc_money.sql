-- Microsoft "work"
insert into addresses (name, street1, city, state, zip_code) values ('Microsoft', '1 Microsoft Way', 'Redmond', 'WA', '12345');
insert into customers (name, address_id, credit_limit, website)
       values ('Microsoft Corp', currval('addresses_seq'), 100000.00, 'http://www.microsoft.com');
insert into invoices (customer_id, address_id) values (currval('customers_seq'), currval('addresses_seq'));
insert into line_items (invoice_id, unit_price, number_units, description, tax)
       values (currval('invoices_seq'), 1000.00, 250, 'Consulting Hours', 0.00);
insert into line_items (invoice_id, unit_price, number_units, description, tax)
       values (currval('invoices_seq'), 500.00, 100, 'Graphic Design Hours', 0.00);

-- 'U.S. Government "work"
insert into addresses (name, street1, city, state, zip_code) values ('US Government', '1600 Pennsylvania', 'Washington', 'DC', '23456');
insert into customers (name, address_id, credit_limit, website)
       values ('Uncle Sam', currval('addresses_seq'), 100000.00, 'http://www.whitehouse.gov');
insert into invoices (customer_id, address_id) values (currval('customers_seq'), currval('addresses_seq'));
insert into line_items (invoice_id, unit_price, number_units, description, tax)
       values (currval('invoices_seq'), 750.00, 125, 'Ditch Digging', 0.00);
insert into line_items (invoice_id, unit_price, number_units, description, tax)
       values (currval('invoices_seq'), 345.00, 275, 'Paperwork', 0.00);



