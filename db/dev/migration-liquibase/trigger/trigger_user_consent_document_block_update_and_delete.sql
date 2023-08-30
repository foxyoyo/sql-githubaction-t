-- liquibase formatted sql

-- changeset angelchang:1 runOnChange:true
DROP TRIGGER IF EXISTS block_update_and_delete ON user_consent_document;
CREATE TRIGGER block_update_and_delete BEFORE UPDATE OR DELETE ON user_consent_document
    EXECUTE PROCEDURE block_update_and_delete();
