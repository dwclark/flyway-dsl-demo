create sequence addresses_seq;

create table addresses (
       address_id int not null primary key default nextval('addresses_seq'),
       created_date timestamp not null default(now()),
       name varchar(200) not null,
       street1 varchar(100) not null,
       city varchar(100) not null,
       state varchar(2) not null,
       zip_code varchar(10) not null
);
