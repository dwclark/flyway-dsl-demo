alter table invoices add foreign key(customer_id) references customers on delete cascade;
alter table invoices add foreign key(address_id) references addresses on delete cascade;
alter table customers add foreign key(address_id) references addresses on delete cascade;
alter table line_items add foreign key(invoice_id) references invoices on delete cascade;
