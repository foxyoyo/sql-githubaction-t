
-- changeset angelchang:496
ALTER TABLE "clinic_loyalty_transaction" ADD CONSTRAINT "clinic_loyalty_transaction_clinic_loyalty_rule_id_fkey" FOREIGN KEY ("clinic_loyalty_rule_id") REFERENCES "clinic_loyalty_rule" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE clinic_loyalty_transaction DROP CONSTRAINT clinic_loyalty_transaction_clinic_loyalty_rule_id_fkey;

-- changeset angelchang:497
ALTER TABLE "clinic_loyalty_transaction" ADD CONSTRAINT "clinic_loyalty_transaction_diary_id_fkey" FOREIGN KEY ("diary_id") REFERENCES "diary" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE clinic_loyalty_transaction DROP CONSTRAINT clinic_loyalty_transaction_diary_id_fkey;

-- changeset angelchang:498
ALTER TABLE "clinic_loyalty_transaction" ADD CONSTRAINT "clinic_loyalty_transaction_redemption_id_fkey" FOREIGN KEY ("redemption_id") REFERENCES "clinic_redemption" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE clinic_loyalty_transaction DROP CONSTRAINT clinic_loyalty_transaction_redemption_id_fkey;

-- changeset angelchang:499
ALTER TABLE "clinic_loyalty_transaction" ADD CONSTRAINT "clinic_loyalty_transaction_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE clinic_loyalty_transaction DROP CONSTRAINT clinic_loyalty_transaction_user_id_fkey;

-- changeset angelchang:500
ALTER TABLE "clinic_mark" ADD CONSTRAINT "clinic_mark_clinic_id_fkey" FOREIGN KEY ("clinic_id") REFERENCES "clinic" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE clinic_mark DROP CONSTRAINT clinic_mark_clinic_id_fkey;

-- changeset angelchang:501
ALTER TABLE "clinic_mark" ADD CONSTRAINT "clinic_mark_updated_by_id_fkey" FOREIGN KEY ("updated_by_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE clinic_mark DROP CONSTRAINT clinic_mark_updated_by_id_fkey;

-- changeset angelchang:502
ALTER TABLE "clinic_mark" ADD CONSTRAINT "clinic_mark_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE clinic_mark DROP CONSTRAINT clinic_mark_user_id_fkey;

-- changeset angelchang:503
ALTER TABLE "clinic_medicine" ADD CONSTRAINT "clinic_medicine_clinic_id_fkey" FOREIGN KEY ("clinic_id") REFERENCES "clinic" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE clinic_medicine DROP CONSTRAINT clinic_medicine_clinic_id_fkey;

