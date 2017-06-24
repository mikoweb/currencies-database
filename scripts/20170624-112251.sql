ALTER TABLE currencies ADD CONSTRAINT check_currencies_code_length CHECK (LENGTH(code) = 3);
ALTER TABLE currencies ADD CONSTRAINT check_currencies_name_length CHECK (LENGTH(name) > 0);
ALTER TABLE currencies ADD CONSTRAINT check_currencies_name_native_length CHECK (LENGTH(name_native) > 0);
ALTER TABLE currencies ADD CONSTRAINT check_currencies_country_code_length CHECK (LENGTH(country_code) = 2);
ALTER TABLE currencies ADD CONSTRAINT check_currencies_decimal_mark_length CHECK (LENGTH(decimal_mark) = 1);
ALTER TABLE currencies ADD CONSTRAINT check_currencies_decimal_scale_value CHECK (decimal_scale >= 0);
