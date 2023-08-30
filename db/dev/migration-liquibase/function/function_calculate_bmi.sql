-- liquibase formatted sql

-- changeset angelchang:1 runOnChange:true
-- Create a function to calculate BMI
CREATE OR REPLACE FUNCTION calculate_bmi(numeric, numeric) RETURNS numeric AS '
-- calculate_bmi(weight, height)
BEGIN
    IF $1 <= 0 OR $2 IS NULL OR $2 = 0 THEN
        RETURN NULL;
    ELSE
        RETURN ROUND($1/($2/100.0)^2.0, 3);
    END IF;
END;
' LANGUAGE plpgsql IMMUTABLE;
