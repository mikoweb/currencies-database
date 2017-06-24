CREATE FUNCTION export_currencies_to_json()
    RETURNS JSON AS $$
    DECLARE arr JSON[];
    DECLARE r RECORD;
BEGIN
    arr := ARRAY[]::JSON[];
    FOR r IN SELECT * FROM currencies
    LOOP
        arr := array_append(arr, row_to_json(r));
    END LOOP;

    RETURN array_to_json(arr);
END;
$$ LANGUAGE plpgsql;
