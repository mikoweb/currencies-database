CREATE TYPE currency_symbol_place AS ENUM ('before', 'after');

CREATE TABLE currencies
(
    code VARCHAR(3) PRIMARY KEY,
    name VARCHAR(255) NOT NULL CONSTRAINT uniq_currencies_name UNIQUE,
    name_native VARCHAR(255) NOT NULL,
    symbol VARCHAR(10) NULL,
    symbol_unicode_hex JSON NOT NULL DEFAULT '[]',
    symbol_place currency_symbol_place NOT NULL DEFAULT 'before',
    other_names JSON NOT NULL DEFAULT '[]',
    country_code VARCHAR(2) NOT NULL,
    decimal_mark CHAR(1) NOT NULL DEFAULT '.',
    decimal_scale SMALLINT NOT NULL DEFAULT 2
);

CREATE INDEX idx_currencies_name_native ON currencies (name_native);
CREATE INDEX idx_currencies_country_code ON currencies (country_code);
