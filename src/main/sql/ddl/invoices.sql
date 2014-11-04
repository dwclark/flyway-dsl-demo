create sequence invoices_seq;

create sequence invoices_number_seq start 100;

create table invoices (
       invoice_id int not null primary key default nextval('invoices_seq'),
       creation_date timestamp not null default(now()),
       invoice_number int not null default nextval('invoices_number_seq'),
       invoice_date date not null,
       customer_id int not null,
       address_id int not null
);
