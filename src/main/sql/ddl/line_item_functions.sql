CREATE OR REPLACE FUNCTION sales_tax(unit_price numeric, number_units numeric, tax numeric) RETURNS numeric AS $$
        BEGIN
                RETURN (unit_price * number_units * tax * 0.01);
        END;
$$ LANGUAGE plpgsql;
