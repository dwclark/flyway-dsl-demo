create sequence line_items_seq;

create table line_items (
       line_item_id int not null primary key default nextval('line_items_seq'),
       invoice_id int not null,
       unit_price numeric(19,4) not null,
       number_units numeric(19,4) not null,
       description varchar(200) not null,
       tax numeric(19,4) null default (8.25),
       code varchar(50) null
);
