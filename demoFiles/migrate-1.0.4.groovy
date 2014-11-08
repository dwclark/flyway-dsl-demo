pre sql: 'alter table addresses alter column street2 drop not null', comment: 'drop null constraint on street2'
pre sql: 'alter table invoices alter column invoice_date set default current_date;', comment: 'add default date to invoices'

release resource: 'dml/get_vc_money.sql', comment: 'We need some funding', env: 'prod'
