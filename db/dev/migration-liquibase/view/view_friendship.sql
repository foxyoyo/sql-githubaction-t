-- liquibase formatted sql

-- changeset angelchang:1 runOnChange:true
-- Create a view of friends
CREATE OR REPLACE VIEW friendship AS SELECT f.id,
    f.created_at,
    f.from_id,
    f.to_id
   FROM friends f
UNION
 SELECT f.id,
    f.created_at,
    f.to_id AS from_id,
    f.from_id AS to_id
   FROM friends f;
