create sequence customers_seq;

create table customers (
       customer_id int not null primary key default nextval('customers_seq'),
       name varchar(200) not null,
       address_id int not null,
       dba varchar(200) null,
       credit_limit numeric(19,4) not null default(10000.00),
       website varchar(200) null
);
       
