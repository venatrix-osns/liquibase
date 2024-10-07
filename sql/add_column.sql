
        SET @column_exists := (
            SELECT COUNT(*)
            FROM information_schema.columns
            WHERE table_name = 'example_table'
            AND table_schema = 'sample_db'
            AND column_name = 'age'
        );

        -- Only add the column if it does not exist
        IF @column_exists = 0 THEN
            ALTER TABLE example_table ADD COLUMN age INT;
        END IF;
