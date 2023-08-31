
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

-- changeset angelchang:504
ALTER TABLE "clinic_medicine" ADD CONSTRAINT "clinic_medicine_emr_record_id_fkey" FOREIGN KEY ("emr_record_id") REFERENCES "emr_record" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE clinic_medicine DROP CONSTRAINT clinic_medicine_emr_record_id_fkey;

-- changeset angelchang:505
ALTER TABLE "clinic_medicine" ADD CONSTRAINT "clinic_medicine_insulin_id_fkey" FOREIGN KEY ("insulin_id") REFERENCES "insulin" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE clinic_medicine DROP CONSTRAINT clinic_medicine_insulin_id_fkey;

-- changeset angelchang:506
ALTER TABLE "clinic_medicine" ADD CONSTRAINT "clinic_medicine_oral_medicine_id_fkey" FOREIGN KEY ("oral_medicine_id") REFERENCES "oral_medicine" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE clinic_medicine DROP CONSTRAINT clinic_medicine_oral_medicine_id_fkey;

-- changeset angelchang:507
ALTER TABLE "clinic_medicine" ADD CONSTRAINT "clinic_medicine_updated_by_fkey" FOREIGN KEY ("updated_by") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE clinic_medicine DROP CONSTRAINT clinic_medicine_updated_by_fkey;

-- changeset angelchang:508
ALTER TABLE "clinic_medicine" ADD CONSTRAINT "clinic_medicine_user_prescription_qr_code_id_fkey" FOREIGN KEY ("user_prescription_qr_code_id") REFERENCES "user_prescription_qr_code" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE clinic_medicine DROP CONSTRAINT clinic_medicine_user_prescription_qr_code_id_fkey;

-- changeset angelchang:509
ALTER TABLE "clinic_message_images" ADD CONSTRAINT "clinic_message_images_clinic_id_fkey" FOREIGN KEY ("clinic_id") REFERENCES "clinic" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE clinic_message_images DROP CONSTRAINT clinic_message_images_clinic_id_fkey;

-- changeset angelchang:510
ALTER TABLE "clinic_message_images" ADD CONSTRAINT "clinic_message_images_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE clinic_message_images DROP CONSTRAINT clinic_message_images_user_id_fkey;

-- changeset angelchang:511
ALTER TABLE "clinic_message_pdf" ADD CONSTRAINT "clinic_message_pdf_clinic_id_fkey" FOREIGN KEY ("clinic_id") REFERENCES "clinic" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE clinic_message_pdf DROP CONSTRAINT clinic_message_pdf_clinic_id_fkey;

-- changeset angelchang:512
ALTER TABLE "clinic_message_pdf" ADD CONSTRAINT "clinic_message_pdf_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE clinic_message_pdf DROP CONSTRAINT clinic_message_pdf_user_id_fkey;

-- changeset angelchang:513
ALTER TABLE "clinic_message_templates" ADD CONSTRAINT "clinic_message_templates_clinic_id_fkey" FOREIGN KEY ("clinic_id") REFERENCES "clinic" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE clinic_message_templates DROP CONSTRAINT clinic_message_templates_clinic_id_fkey;

-- changeset angelchang:514
ALTER TABLE "clinic_message_templates" ADD CONSTRAINT "clinic_message_templates_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE clinic_message_templates DROP CONSTRAINT clinic_message_templates_user_id_fkey;

-- changeset angelchang:515
ALTER TABLE "clinic_meter_program" ADD CONSTRAINT "clinic_meter_program_clinic_id_fkey" FOREIGN KEY ("clinic_id") REFERENCES "clinic" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE clinic_meter_program DROP CONSTRAINT clinic_meter_program_clinic_id_fkey;

-- changeset angelchang:516
ALTER TABLE "clinic_meter_program_history" ADD CONSTRAINT "clinic_meter_program_history_clinic_id_fkey" FOREIGN KEY ("clinic_id") REFERENCES "clinic" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE clinic_meter_program_history DROP CONSTRAINT clinic_meter_program_history_clinic_id_fkey;

-- changeset angelchang:517
ALTER TABLE "clinic_meter_program_history" ADD CONSTRAINT "clinic_meter_program_history_clinic_meter_program_id_fkey" FOREIGN KEY ("clinic_meter_program_id") REFERENCES "clinic_meter_program" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE clinic_meter_program_history DROP CONSTRAINT clinic_meter_program_history_clinic_meter_program_id_fkey;

-- changeset angelchang:518
ALTER TABLE "clinic_meter_program_transaction" ADD CONSTRAINT "clinic_meter_program_transact_clinic_loyalty_transaction_i_fkey" FOREIGN KEY ("clinic_loyalty_transaction_id") REFERENCES "clinic_loyalty_transaction" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE clinic_meter_program_transaction DROP CONSTRAINT clinic_meter_program_transact_clinic_loyalty_transaction_i_fkey;

-- changeset angelchang:519
ALTER TABLE "clinic_meter_program_transaction" ADD CONSTRAINT "clinic_meter_program_transaction_clinic_id_fkey" FOREIGN KEY ("clinic_id") REFERENCES "clinic" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE clinic_meter_program_transaction DROP CONSTRAINT clinic_meter_program_transaction_clinic_id_fkey;

-- changeset angelchang:520
ALTER TABLE "clinic_meter_program_transaction" ADD CONSTRAINT "clinic_meter_program_transaction_clinic_meter_program_id_fkey" FOREIGN KEY ("clinic_meter_program_id") REFERENCES "clinic_meter_program" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE clinic_meter_program_transaction DROP CONSTRAINT clinic_meter_program_transaction_clinic_meter_program_id_fkey;

-- changeset angelchang:521
ALTER TABLE "clinic_note" ADD CONSTRAINT "clinic_note_clinic_id_fkey" FOREIGN KEY ("clinic_id") REFERENCES "clinic" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE clinic_note DROP CONSTRAINT clinic_note_clinic_id_fkey;

-- changeset angelchang:522
ALTER TABLE "clinic_note" ADD CONSTRAINT "clinic_note_created_by_fkey" FOREIGN KEY ("created_by") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE clinic_note DROP CONSTRAINT clinic_note_created_by_fkey;

-- changeset angelchang:523
ALTER TABLE "clinic_note_tag" ADD CONSTRAINT "clinic_note_tag_clinic_note_id_fkey" FOREIGN KEY ("clinic_note_id") REFERENCES "clinic_note" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE clinic_note_tag DROP CONSTRAINT clinic_note_tag_clinic_note_id_fkey;

-- changeset angelchang:524
ALTER TABLE "clinic_note" ADD CONSTRAINT "clinic_note_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE clinic_note DROP CONSTRAINT clinic_note_user_id_fkey;

-- changeset angelchang:525
ALTER TABLE "clinic_notification_setting" ADD CONSTRAINT "clinic_notification_setting_clinic_id_fkey" FOREIGN KEY ("clinic_id") REFERENCES "clinic" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE clinic_notification_setting DROP CONSTRAINT clinic_notification_setting_clinic_id_fkey;

-- changeset angelchang:526
ALTER TABLE "clinic_notification_setting" ADD CONSTRAINT "clinic_notification_setting_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE clinic_notification_setting DROP CONSTRAINT clinic_notification_setting_user_id_fkey;

-- changeset angelchang:527
ALTER TABLE "clinic_plan" ADD CONSTRAINT "clinic_plan_clinic_id_fkey" FOREIGN KEY ("clinic_id") REFERENCES "clinic" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE clinic_plan DROP CONSTRAINT clinic_plan_clinic_id_fkey;

-- changeset angelchang:528
ALTER TABLE "clinic_plan_waiting" ADD CONSTRAINT "clinic_plan_waiting_plan_id_fkey" FOREIGN KEY ("plan_id") REFERENCES "clinic_plan" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE clinic_plan_waiting DROP CONSTRAINT clinic_plan_waiting_plan_id_fkey;

-- changeset angelchang:529
ALTER TABLE "clinic_plan_waiting" ADD CONSTRAINT "clinic_plan_waiting_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE clinic_plan_waiting DROP CONSTRAINT clinic_plan_waiting_user_id_fkey;

-- changeset angelchang:530
ALTER TABLE "clinic_point" ADD CONSTRAINT "clinic_point_a1c_id_fkey" FOREIGN KEY ("a1c_id") REFERENCES "user_a1c" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE clinic_point DROP CONSTRAINT clinic_point_a1c_id_fkey;

-- changeset angelchang:531
ALTER TABLE "clinic_point" ADD CONSTRAINT "clinic_point_care_connect_id_fkey" FOREIGN KEY ("care_connect_id") REFERENCES "care_connect" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE clinic_point DROP CONSTRAINT clinic_point_care_connect_id_fkey;

-- changeset angelchang:532
ALTER TABLE "clinic_point" ADD CONSTRAINT "clinic_point_clinic_id_fkey" FOREIGN KEY ("clinic_id") REFERENCES "clinic" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE clinic_point DROP CONSTRAINT clinic_point_clinic_id_fkey;

-- changeset angelchang:533
ALTER TABLE "clinic_point" ADD CONSTRAINT "clinic_point_diary_id_fkey" FOREIGN KEY ("diary_id") REFERENCES "diary" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE clinic_point DROP CONSTRAINT clinic_point_diary_id_fkey;

-- changeset angelchang:534
ALTER TABLE "clinic_point" ADD CONSTRAINT "clinic_point_redemption_id_fkey" FOREIGN KEY ("redemption_id") REFERENCES "clinic_redemption" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE clinic_point DROP CONSTRAINT clinic_point_redemption_id_fkey;

-- changeset angelchang:535
ALTER TABLE "clinic_point" ADD CONSTRAINT "clinic_point_reward_id_fkey" FOREIGN KEY ("reward_id") REFERENCES "clinic_reward" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE clinic_point DROP CONSTRAINT clinic_point_reward_id_fkey;

-- changeset angelchang:536
ALTER TABLE "clinic_point" ADD CONSTRAINT "clinic_point_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE clinic_point DROP CONSTRAINT clinic_point_user_id_fkey;

-- changeset angelchang:537
ALTER TABLE "clinic_prescription" ADD CONSTRAINT "clinic_prescription_clinic_id_fkey" FOREIGN KEY ("clinic_id") REFERENCES "clinic" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE clinic_prescription DROP CONSTRAINT clinic_prescription_clinic_id_fkey;

-- changeset angelchang:538
ALTER TABLE "clinic_prescription" ADD CONSTRAINT "clinic_prescription_clinic_note_id_fkey" FOREIGN KEY ("clinic_note_id") REFERENCES "clinic_note" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE clinic_prescription DROP CONSTRAINT clinic_prescription_clinic_note_id_fkey;

-- changeset angelchang:539
ALTER TABLE "clinic_prescription" ADD CONSTRAINT "clinic_prescription_emr_record_id_fkey" FOREIGN KEY ("emr_record_id") REFERENCES "emr_record" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE clinic_prescription DROP CONSTRAINT clinic_prescription_emr_record_id_fkey;

-- changeset angelchang:540
ALTER TABLE "clinic_prescription" ADD CONSTRAINT "clinic_prescription_parent_clinic_prescription_id_fkey" FOREIGN KEY ("parent_clinic_prescription_id") REFERENCES "clinic_prescription" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE clinic_prescription DROP CONSTRAINT clinic_prescription_parent_clinic_prescription_id_fkey;

-- changeset angelchang:541
ALTER TABLE "clinic_prescription" ADD CONSTRAINT "clinic_prescription_updated_by_fkey" FOREIGN KEY ("updated_by") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE clinic_prescription DROP CONSTRAINT clinic_prescription_updated_by_fkey;

-- changeset angelchang:542
ALTER TABLE "clinic_prescription" ADD CONSTRAINT "clinic_prescription_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE clinic_prescription DROP CONSTRAINT clinic_prescription_user_id_fkey;

-- changeset angelchang:543
ALTER TABLE "clinic_prescription" ADD CONSTRAINT "clinic_prescription_user_prescription_qr_code_id_fkey" FOREIGN KEY ("user_prescription_qr_code_id") REFERENCES "user_prescription_qr_code" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE clinic_prescription DROP CONSTRAINT clinic_prescription_user_prescription_qr_code_id_fkey;

-- changeset angelchang:544
ALTER TABLE "clinic_program" ADD CONSTRAINT "clinic_program_clinic_id_fkey" FOREIGN KEY ("clinic_id") REFERENCES "clinic" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE clinic_program DROP CONSTRAINT clinic_program_clinic_id_fkey;

-- changeset angelchang:545
ALTER TABLE "clinic_program" ADD CONSTRAINT "clinic_program_sponsor_id_fkey" FOREIGN KEY ("sponsor_id") REFERENCES "clinic_sponsor" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE clinic_program DROP CONSTRAINT clinic_program_sponsor_id_fkey;

-- changeset angelchang:546
ALTER TABLE "clinic_program" ADD CONSTRAINT "clinic_program_updated_by_fkey" FOREIGN KEY ("updated_by") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE clinic_program DROP CONSTRAINT clinic_program_updated_by_fkey;

-- changeset angelchang:547
ALTER TABLE "clinic_reminder" ADD CONSTRAINT "clinic_reminder_clinic_id_fkey" FOREIGN KEY ("clinic_id") REFERENCES "clinic" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE clinic_reminder DROP CONSTRAINT clinic_reminder_clinic_id_fkey;

-- changeset angelchang:548
ALTER TABLE "clinic_reminder_config" ADD CONSTRAINT "clinic_reminder_config_clinic_id_fkey" FOREIGN KEY ("clinic_id") REFERENCES "clinic" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE clinic_reminder_config DROP CONSTRAINT clinic_reminder_config_clinic_id_fkey;

-- changeset angelchang:549
ALTER TABLE "clinic_reminder" ADD CONSTRAINT "clinic_reminder_educator_id_fkey" FOREIGN KEY ("educator_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE clinic_reminder DROP CONSTRAINT clinic_reminder_educator_id_fkey;

-- changeset angelchang:550
ALTER TABLE "clinic_reminder" ADD CONSTRAINT "clinic_reminder_emr_record_id_fkey" FOREIGN KEY ("emr_record_id") REFERENCES "emr_record" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE clinic_reminder DROP CONSTRAINT clinic_reminder_emr_record_id_fkey;

-- changeset angelchang:551
ALTER TABLE "clinic_reminder" ADD CONSTRAINT "clinic_reminder_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE clinic_reminder DROP CONSTRAINT clinic_reminder_user_id_fkey;

-- changeset angelchang:552
ALTER TABLE "clinic_reward" ADD CONSTRAINT "clinic_reward_clinic_id_fkey" FOREIGN KEY ("clinic_id") REFERENCES "clinic" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE clinic_reward DROP CONSTRAINT clinic_reward_clinic_id_fkey;

-- changeset angelchang:553
ALTER TABLE "clinic_rich_content_image" ADD CONSTRAINT "clinic_rich_content_image_clinic_rich_content_message_id_fkey" FOREIGN KEY ("clinic_rich_content_message_id") REFERENCES "clinic_rich_content_message" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE clinic_rich_content_image DROP CONSTRAINT clinic_rich_content_image_clinic_rich_content_message_id_fkey;

-- changeset angelchang:554
ALTER TABLE "clinic_rich_content_message" ADD CONSTRAINT "clinic_rich_content_message_clinic_id_fkey" FOREIGN KEY ("clinic_id") REFERENCES "clinic" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE clinic_rich_content_message DROP CONSTRAINT clinic_rich_content_message_clinic_id_fkey;

-- changeset angelchang:555
ALTER TABLE "clinic_rich_content_receive" ADD CONSTRAINT "clinic_rich_content_receive_clinic_id_fkey" FOREIGN KEY ("clinic_id") REFERENCES "clinic" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE clinic_rich_content_receive DROP CONSTRAINT clinic_rich_content_receive_clinic_id_fkey;

-- changeset angelchang:556
ALTER TABLE "clinic_rich_content_receive" ADD CONSTRAINT "clinic_rich_content_receive_clinic_rich_content_message_id_fkey" FOREIGN KEY ("clinic_rich_content_message_id") REFERENCES "clinic_rich_content_message" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE clinic_rich_content_receive DROP CONSTRAINT clinic_rich_content_receive_clinic_rich_content_message_id_fkey;

-- changeset angelchang:557
ALTER TABLE "clinic_rich_content_receive" ADD CONSTRAINT "clinic_rich_content_receive_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE clinic_rich_content_receive DROP CONSTRAINT clinic_rich_content_receive_user_id_fkey;

-- changeset angelchang:558
ALTER TABLE "clinic_sponsor" ADD CONSTRAINT "clinic_sponsor_updated_by_fkey" FOREIGN KEY ("updated_by") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE clinic_sponsor DROP CONSTRAINT clinic_sponsor_updated_by_fkey;

-- changeset angelchang:559
ALTER TABLE "clinic_subscription" ADD CONSTRAINT "clinic_subscription_clinic_id_fkey" FOREIGN KEY ("clinic_id") REFERENCES "clinic" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE clinic_subscription DROP CONSTRAINT clinic_subscription_clinic_id_fkey;

-- changeset angelchang:560
ALTER TABLE "clinic_subscription" ADD CONSTRAINT "clinic_subscription_plan_id_fkey" FOREIGN KEY ("plan_id") REFERENCES "clinic_plan" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE clinic_subscription DROP CONSTRAINT clinic_subscription_plan_id_fkey;

-- changeset angelchang:561
ALTER TABLE "clinic_subscription" ADD CONSTRAINT "clinic_subscription_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE clinic_subscription DROP CONSTRAINT clinic_subscription_user_id_fkey;

-- changeset angelchang:562
ALTER TABLE "coach_feedback" ADD CONSTRAINT "coach_feedback_plan_id_fkey" FOREIGN KEY ("plan_id") REFERENCES "clinic_plan" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE coach_feedback DROP CONSTRAINT coach_feedback_plan_id_fkey;

-- changeset angelchang:563
ALTER TABLE "coach_feedback" ADD CONSTRAINT "coach_feedback_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE coach_feedback DROP CONSTRAINT coach_feedback_user_id_fkey;

-- changeset angelchang:564
ALTER TABLE "collaboration_content" ADD CONSTRAINT "collaboration_content_clinic_id_fkey" FOREIGN KEY ("clinic_id") REFERENCES "clinic" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE collaboration_content DROP CONSTRAINT collaboration_content_clinic_id_fkey;

-- changeset angelchang:565
ALTER TABLE "contacts" ADD CONSTRAINT "contacts_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE contacts DROP CONSTRAINT contacts_user_id_fkey;

-- changeset angelchang:566
ALTER TABLE "custom_diary_tag" ADD CONSTRAINT "custom_diary_tag_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE custom_diary_tag DROP CONSTRAINT custom_diary_tag_user_id_fkey;

-- changeset angelchang:567
ALTER TABLE "custom_medicine" ADD CONSTRAINT "custom_medicine_clinic_medicine_id_fkey" FOREIGN KEY ("clinic_medicine_id") REFERENCES "clinic_medicine" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE custom_medicine DROP CONSTRAINT custom_medicine_clinic_medicine_id_fkey;

-- changeset angelchang:568
ALTER TABLE "custom_medicine" ADD CONSTRAINT "custom_medicine_nhi_record_id_fkey" FOREIGN KEY ("nhi_record_id") REFERENCES "nhi_record" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE custom_medicine DROP CONSTRAINT custom_medicine_nhi_record_id_fkey;

-- changeset angelchang:569
ALTER TABLE "custom_medicine" ADD CONSTRAINT "custom_medicine_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE custom_medicine DROP CONSTRAINT custom_medicine_user_id_fkey;

-- changeset angelchang:570
ALTER TABLE "dashboard_cache" ADD CONSTRAINT "dashboard_cache_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE dashboard_cache DROP CONSTRAINT dashboard_cache_user_id_fkey;

-- changeset angelchang:571
ALTER TABLE "dashboard_setting" ADD CONSTRAINT "dashboard_setting_care_connect_id_fkey" FOREIGN KEY ("care_connect_id") REFERENCES "care_connect" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE dashboard_setting DROP CONSTRAINT dashboard_setting_care_connect_id_fkey;

-- changeset angelchang:572
ALTER TABLE "dashboard_status" ADD CONSTRAINT "dashboard_status_care_connect_id_fkey" FOREIGN KEY ("care_connect_id") REFERENCES "care_connect" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE dashboard_status DROP CONSTRAINT dashboard_status_care_connect_id_fkey;

-- changeset angelchang:573
ALTER TABLE "dashboard_status" ADD CONSTRAINT "dashboard_status_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE dashboard_status DROP CONSTRAINT dashboard_status_user_id_fkey;

-- changeset angelchang:574
ALTER TABLE "diary_attachment" ADD CONSTRAINT "diary_attachment_diary_id_fkey" FOREIGN KEY ("diary_id") REFERENCES "diary" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE diary_attachment DROP CONSTRAINT diary_attachment_diary_id_fkey;

-- changeset angelchang:575
ALTER TABLE "diary" ADD CONSTRAINT "diary_batch_uuid_fkey" FOREIGN KEY ("batch_uuid") REFERENCES "diary_batch_record" ("batch_uuid") ON UPDATE NO ACTION ON DELETE NO ACTION;
-- rollback: ALTER TABLE diary DROP CONSTRAINT diary_batch_uuid_fkey;

-- changeset angelchang:576
ALTER TABLE "diary" ADD CONSTRAINT "diary_meter_id_fkey" FOREIGN KEY ("user_meter_id") REFERENCES "user_meter" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE diary DROP CONSTRAINT diary_meter_id_fkey;

-- changeset angelchang:577
ALTER TABLE "diary_modification" ADD CONSTRAINT "diary_modification_care_connect_id_fkey" FOREIGN KEY ("care_connect_id") REFERENCES "care_connect" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE diary_modification DROP CONSTRAINT diary_modification_care_connect_id_fkey;

-- changeset angelchang:578
ALTER TABLE "diary_modification" ADD CONSTRAINT "diary_modification_diary_id_fkey" FOREIGN KEY ("diary_id") REFERENCES "diary" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE diary_modification DROP CONSTRAINT diary_modification_diary_id_fkey;

-- changeset angelchang:579
ALTER TABLE "diary" ADD CONSTRAINT "diary_product_id_fkey" FOREIGN KEY ("product_id") REFERENCES "product" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE diary DROP CONSTRAINT diary_product_id_fkey;

-- changeset angelchang:580
ALTER TABLE "diary" ADD CONSTRAINT "diary_setting_id_fkey" FOREIGN KEY ("setting_id") REFERENCES "user_pref" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE diary DROP CONSTRAINT diary_setting_id_fkey;

-- changeset angelchang:581
ALTER TABLE "diary_tag" ADD CONSTRAINT "diary_tag_diary_id_fkey" FOREIGN KEY ("diary_id") REFERENCES "diary" ("id") ON UPDATE CASCADE ON DELETE CASCADE;
-- rollback: ALTER TABLE diary_tag DROP CONSTRAINT diary_tag_diary_id_fkey;

-- changeset angelchang:582
ALTER TABLE "diary" ADD CONSTRAINT "diary_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE diary DROP CONSTRAINT diary_user_id_fkey;

-- changeset angelchang:583
ALTER TABLE "email_reminder_event" ADD CONSTRAINT "email_reminder_event_clinic_id_fkey" FOREIGN KEY ("clinic_id") REFERENCES "clinic" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE email_reminder_event DROP CONSTRAINT email_reminder_event_clinic_id_fkey;

-- changeset angelchang:584
ALTER TABLE "email_reminder_event" ADD CONSTRAINT "email_reminder_event_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE email_reminder_event DROP CONSTRAINT email_reminder_event_user_id_fkey;

-- changeset angelchang:585
ALTER TABLE "email_verify" ADD CONSTRAINT "email_verify_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE email_verify DROP CONSTRAINT email_verify_user_id_fkey;

-- changeset angelchang:586
ALTER TABLE "examination" ADD CONSTRAINT "examination_care_connect_id_fkey" FOREIGN KEY ("care_connect_id") REFERENCES "care_connect" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE examination DROP CONSTRAINT examination_care_connect_id_fkey;

-- changeset angelchang:587
ALTER TABLE "examination" ADD CONSTRAINT "examination_clinic_id_fkey" FOREIGN KEY ("clinic_id") REFERENCES "clinic" ("id") ON UPDATE NO ACTION ON DELETE NO ACTION;
-- rollback: ALTER TABLE examination DROP CONSTRAINT examination_clinic_id_fkey;

-- changeset angelchang:588
ALTER TABLE "examination" ADD CONSTRAINT "examination_created_by_fkey" FOREIGN KEY ("created_by") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE examination DROP CONSTRAINT examination_created_by_fkey;

-- changeset angelchang:589
ALTER TABLE "examination" ADD CONSTRAINT "examination_lab_result_id_fkey" FOREIGN KEY ("lab_result_id") REFERENCES "lab_result" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE examination DROP CONSTRAINT examination_lab_result_id_fkey;

-- changeset angelchang:590
ALTER TABLE "examination" ADD CONSTRAINT "examination_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE NO ACTION;
-- rollback: ALTER TABLE examination DROP CONSTRAINT examination_user_id_fkey;

-- changeset angelchang:591
ALTER TABLE "feedback" ADD CONSTRAINT "feedback_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE feedback DROP CONSTRAINT feedback_user_id_fkey;

-- changeset angelchang:592
ALTER TABLE "moshi_campaign" ADD CONSTRAINT "fk_clinic" FOREIGN KEY ("clinic_id") REFERENCES "clinic" ("id") ON UPDATE NO ACTION ON DELETE NO ACTION;
-- rollback: ALTER TABLE moshi_campaign DROP CONSTRAINT fk_clinic;

-- changeset angelchang:593
ALTER TABLE "toolbox_producer_clinic_connect" ADD CONSTRAINT "fk_clinic" FOREIGN KEY ("clinic_id") REFERENCES "clinic" ("id") ON UPDATE NO ACTION ON DELETE NO ACTION;
-- rollback: ALTER TABLE toolbox_producer_clinic_connect DROP CONSTRAINT fk_clinic;

-- changeset angelchang:594
ALTER TABLE "food_classification" ADD CONSTRAINT "food_classification_diary_attachment_id_fkey" FOREIGN KEY ("diary_attachment_id") REFERENCES "diary_attachment" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE food_classification DROP CONSTRAINT food_classification_diary_attachment_id_fkey;

-- changeset angelchang:595
ALTER TABLE "food_classification" ADD CONSTRAINT "food_classification_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE food_classification DROP CONSTRAINT food_classification_user_id_fkey;

-- changeset angelchang:596
ALTER TABLE "food_database_connect" ADD CONSTRAINT "food_database_connect_diary_id_fkey" FOREIGN KEY ("diary_id") REFERENCES "diary" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE food_database_connect DROP CONSTRAINT food_database_connect_diary_id_fkey;

-- changeset angelchang:597
ALTER TABLE "food_database_connect" ADD CONSTRAINT "food_database_connect_food_database_id_fkey" FOREIGN KEY ("food_database_id") REFERENCES "food_database" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE food_database_connect DROP CONSTRAINT food_database_connect_food_database_id_fkey;

-- changeset angelchang:598
ALTER TABLE "food_database_connect" ADD CONSTRAINT "food_database_connect_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE food_database_connect DROP CONSTRAINT food_database_connect_user_id_fkey;

-- changeset angelchang:599
ALTER TABLE "food_database_favorited" ADD CONSTRAINT "food_database_favorited_food_database_id_fkey" FOREIGN KEY ("food_database_id") REFERENCES "food_database" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE food_database_favorited DROP CONSTRAINT food_database_favorited_food_database_id_fkey;

-- changeset angelchang:600
ALTER TABLE "food_database_favorited" ADD CONSTRAINT "food_database_favorited_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE food_database_favorited DROP CONSTRAINT food_database_favorited_user_id_fkey;

-- changeset angelchang:601
ALTER TABLE "food_database" ADD CONSTRAINT "food_database_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE food_database DROP CONSTRAINT food_database_user_id_fkey;

-- changeset angelchang:602
ALTER TABLE "friend_notification_setting" ADD CONSTRAINT "friend_notification_setting_from_id_fkey" FOREIGN KEY ("from_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE friend_notification_setting DROP CONSTRAINT friend_notification_setting_from_id_fkey;

-- changeset angelchang:603
ALTER TABLE "friend_notification_setting" ADD CONSTRAINT "friend_notification_setting_to_id_fkey" FOREIGN KEY ("to_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE friend_notification_setting DROP CONSTRAINT friend_notification_setting_to_id_fkey;

-- changeset angelchang:604
ALTER TABLE "friends" ADD CONSTRAINT "friends_from_id_fkey" FOREIGN KEY ("from_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE friends DROP CONSTRAINT friends_from_id_fkey;

-- changeset angelchang:605
ALTER TABLE "friends" ADD CONSTRAINT "friends_to_id_fkey" FOREIGN KEY ("to_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE friends DROP CONSTRAINT friends_to_id_fkey;

-- changeset angelchang:606
ALTER TABLE "h2c_activation_code" ADD CONSTRAINT "h2c_activation_code_clinic_id_fkey" FOREIGN KEY ("clinic_id") REFERENCES "clinic" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE h2c_activation_code DROP CONSTRAINT h2c_activation_code_clinic_id_fkey;

-- changeset angelchang:607
ALTER TABLE "h2c_sync_log" ADD CONSTRAINT "h2c_sync_log_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE h2c_sync_log DROP CONSTRAINT h2c_sync_log_user_id_fkey;

-- changeset angelchang:608
ALTER TABLE "h2c_user_token" ADD CONSTRAINT "h2c_user_token_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE h2c_user_token DROP CONSTRAINT h2c_user_token_user_id_fkey;

-- changeset angelchang:609
ALTER TABLE "health_user" ADD CONSTRAINT "health_user_avatar_id_fkey" FOREIGN KEY ("avatar_id") REFERENCES "warp_avatar" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE health_user DROP CONSTRAINT health_user_avatar_id_fkey;

-- changeset angelchang:610
ALTER TABLE "heartbeat_raw" ADD CONSTRAINT "heartbeat_raw_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE heartbeat_raw DROP CONSTRAINT heartbeat_raw_user_id_fkey;

-- changeset angelchang:611
ALTER TABLE "heartbeat" ADD CONSTRAINT "heartbeat_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE heartbeat DROP CONSTRAINT heartbeat_user_id_fkey;

-- changeset angelchang:612
ALTER TABLE "hl_account_link" ADD CONSTRAINT "hl_account_link_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE hl_account_link DROP CONSTRAINT hl_account_link_user_id_fkey;

-- changeset angelchang:613
ALTER TABLE "hl_cgm_1m_message_event" ADD CONSTRAINT "hl_cgm_1m_message_event_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE hl_cgm_1m_message_event DROP CONSTRAINT hl_cgm_1m_message_event_user_id_fkey;

-- changeset angelchang:614
ALTER TABLE "hl_cgm_1m_v2_message_event" ADD CONSTRAINT "hl_cgm_1m_v2_message_event_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE hl_cgm_1m_v2_message_event DROP CONSTRAINT hl_cgm_1m_v2_message_event_user_id_fkey;

-- changeset angelchang:615
ALTER TABLE "hl_cgm_2m_message_event" ADD CONSTRAINT "hl_cgm_2m_message_event_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE hl_cgm_2m_message_event DROP CONSTRAINT hl_cgm_2m_message_event_user_id_fkey;

-- changeset angelchang:616
ALTER TABLE "hl_cgm_3m_message_event" ADD CONSTRAINT "hl_cgm_3m_message_event_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE hl_cgm_3m_message_event DROP CONSTRAINT hl_cgm_3m_message_event_user_id_fkey;

-- changeset angelchang:617
ALTER TABLE "hl_cgm_message_event" ADD CONSTRAINT "hl_cgm_message_event_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE hl_cgm_message_event DROP CONSTRAINT hl_cgm_message_event_user_id_fkey;

-- changeset angelchang:618
ALTER TABLE "hl_cgm_policyholder_account_link" ADD CONSTRAINT "hl_cgm_policyholder_account_link_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE hl_cgm_policyholder_account_link DROP CONSTRAINT hl_cgm_policyholder_account_link_user_id_fkey;

-- changeset angelchang:619
ALTER TABLE "hl_cgm_policyholder_message_event" ADD CONSTRAINT "hl_cgm_policyholder_message_event_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE hl_cgm_policyholder_message_event DROP CONSTRAINT hl_cgm_policyholder_message_event_user_id_fkey;

-- changeset angelchang:620
ALTER TABLE "hl_distributor_code" ADD CONSTRAINT "hl_distributor_code_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE hl_distributor_code DROP CONSTRAINT hl_distributor_code_user_id_fkey;

-- changeset angelchang:621
ALTER TABLE "hourly_steps" ADD CONSTRAINT "hourly_steps_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE NO ACTION;
-- rollback: ALTER TABLE hourly_steps DROP CONSTRAINT hourly_steps_user_id_fkey;

-- changeset angelchang:622
ALTER TABLE "hub_role" ADD CONSTRAINT "hub_role_admin_user_id_fkey" FOREIGN KEY ("admin_user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE hub_role DROP CONSTRAINT hub_role_admin_user_id_fkey;

-- changeset angelchang:623
ALTER TABLE "hub_role" ADD CONSTRAINT "hub_role_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE hub_role DROP CONSTRAINT hub_role_user_id_fkey;

-- changeset angelchang:624
ALTER TABLE "insulin_connect" ADD CONSTRAINT "insulin_connect_diary_id_fkey" FOREIGN KEY ("diary_id") REFERENCES "diary" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE insulin_connect DROP CONSTRAINT insulin_connect_diary_id_fkey;

-- changeset angelchang:625
ALTER TABLE "insulin_connect" ADD CONSTRAINT "insulin_connect_insulin_id_fkey" FOREIGN KEY ("insulin_id") REFERENCES "insulin" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE insulin_connect DROP CONSTRAINT insulin_connect_insulin_id_fkey;

-- changeset angelchang:626
ALTER TABLE "insulin_connect" ADD CONSTRAINT "insulin_connect_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE insulin_connect DROP CONSTRAINT insulin_connect_user_id_fkey;

-- changeset angelchang:627
ALTER TABLE "insurance_customer" ADD CONSTRAINT "insurance_customer_care_connect_id_fkey" FOREIGN KEY ("care_connect_id") REFERENCES "care_connect" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE insurance_customer DROP CONSTRAINT insurance_customer_care_connect_id_fkey;

-- changeset angelchang:628
ALTER TABLE "insurance_form" ADD CONSTRAINT "insurance_form_clinic_id_fkey" FOREIGN KEY ("clinic_id") REFERENCES "clinic" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE insurance_form DROP CONSTRAINT insurance_form_clinic_id_fkey;

-- changeset angelchang:629
ALTER TABLE "interactive_answer_connect" ADD CONSTRAINT "interactive_answer_connect_interactive_form_connect_id_fkey" FOREIGN KEY ("interactive_form_connect_id") REFERENCES "interactive_form_connect" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE interactive_answer_connect DROP CONSTRAINT interactive_answer_connect_interactive_form_connect_id_fkey;

-- changeset angelchang:630
ALTER TABLE "interactive_answer" ADD CONSTRAINT "interactive_answer_interactive_answer_connect_id_fkey" FOREIGN KEY ("interactive_answer_connect_id") REFERENCES "interactive_answer_connect" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE interactive_answer DROP CONSTRAINT interactive_answer_interactive_answer_connect_id_fkey;

-- changeset angelchang:631
ALTER TABLE "interactive_answer" ADD CONSTRAINT "interactive_answer_interactive_question_id_fkey" FOREIGN KEY ("interactive_question_id") REFERENCES "interactive_question" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE interactive_answer DROP CONSTRAINT interactive_answer_interactive_question_id_fkey;

-- changeset angelchang:632
ALTER TABLE "interactive_article_attachment" ADD CONSTRAINT "interactive_article_attachment_interactive_article_id_fkey" FOREIGN KEY ("interactive_article_id") REFERENCES "interactive_article" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE interactive_article_attachment DROP CONSTRAINT interactive_article_attachment_interactive_article_id_fkey;

-- changeset angelchang:633
ALTER TABLE "interactive_article_connect" ADD CONSTRAINT "interactive_article_connect_interactive_article_id_fkey" FOREIGN KEY ("interactive_article_id") REFERENCES "interactive_article" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE interactive_article_connect DROP CONSTRAINT interactive_article_connect_interactive_article_id_fkey;

-- changeset angelchang:634
ALTER TABLE "interactive_article_connect" ADD CONSTRAINT "interactive_article_connect_interactive_form_id_fkey" FOREIGN KEY ("interactive_form_id") REFERENCES "interactive_form" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE interactive_article_connect DROP CONSTRAINT interactive_article_connect_interactive_form_id_fkey;

-- changeset angelchang:635
ALTER TABLE "interactive_form_analysis" ADD CONSTRAINT "interactive_form_analysis_interactive_form_id_fkey" FOREIGN KEY ("interactive_form_id") REFERENCES "interactive_form" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE interactive_form_analysis DROP CONSTRAINT interactive_form_analysis_interactive_form_id_fkey;

-- changeset angelchang:636
ALTER TABLE "interactive_form" ADD CONSTRAINT "interactive_form_clinic_id_fkey" FOREIGN KEY ("clinic_id") REFERENCES "clinic" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE interactive_form DROP CONSTRAINT interactive_form_clinic_id_fkey;

-- changeset angelchang:637
ALTER TABLE "interactive_form_connect" ADD CONSTRAINT "interactive_form_connect_interactive_form_id_fkey" FOREIGN KEY ("interactive_form_id") REFERENCES "interactive_form" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE interactive_form_connect DROP CONSTRAINT interactive_form_connect_interactive_form_id_fkey;

-- changeset angelchang:638
ALTER TABLE "interactive_form_connect" ADD CONSTRAINT "interactive_form_connect_send_by_fkey" FOREIGN KEY ("send_by") REFERENCES "care_connect" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE interactive_form_connect DROP CONSTRAINT interactive_form_connect_send_by_fkey;

-- changeset angelchang:639
ALTER TABLE "interactive_form_connect" ADD CONSTRAINT "interactive_form_connect_send_to_fkey" FOREIGN KEY ("send_to") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE interactive_form_connect DROP CONSTRAINT interactive_form_connect_send_to_fkey;

-- changeset angelchang:640
ALTER TABLE "interactive_form" ADD CONSTRAINT "interactive_form_follow_up_form_id_fkey" FOREIGN KEY ("follow_up_form_id") REFERENCES "interactive_form" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE interactive_form DROP CONSTRAINT interactive_form_follow_up_form_id_fkey;

-- changeset angelchang:641
ALTER TABLE "interactive_form" ADD CONSTRAINT "interactive_form_plan_id_fkey" FOREIGN KEY ("plan_id") REFERENCES "clinic_plan" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE interactive_form DROP CONSTRAINT interactive_form_plan_id_fkey;

-- changeset angelchang:642
ALTER TABLE "interactive_question" ADD CONSTRAINT "interactive_question_interactive_form_id_fkey" FOREIGN KEY ("interactive_form_id") REFERENCES "interactive_form" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE interactive_question DROP CONSTRAINT interactive_question_interactive_form_id_fkey;

-- changeset angelchang:643
ALTER TABLE "invitation" ADD CONSTRAINT "invitation_invitee_id_fkey" FOREIGN KEY ("invitee_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE invitation DROP CONSTRAINT invitation_invitee_id_fkey;

-- changeset angelchang:644
ALTER TABLE "invitation" ADD CONSTRAINT "invitation_inviter_id_fkey" FOREIGN KEY ("inviter_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE invitation DROP CONSTRAINT invitation_inviter_id_fkey;

-- changeset angelchang:645
ALTER TABLE "lab_clinic_connect" ADD CONSTRAINT "lab_clinic_connect_clinic_id_fkey" FOREIGN KEY ("clinic_id") REFERENCES "clinic" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE lab_clinic_connect DROP CONSTRAINT lab_clinic_connect_clinic_id_fkey;

-- changeset angelchang:646
ALTER TABLE "lab_clinic_connect" ADD CONSTRAINT "lab_clinic_connect_lab_id_fkey" FOREIGN KEY ("lab_id") REFERENCES "lab" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE lab_clinic_connect DROP CONSTRAINT lab_clinic_connect_lab_id_fkey;

-- changeset angelchang:647
ALTER TABLE "lab_connect" ADD CONSTRAINT "lab_connect_lab_id_fkey" FOREIGN KEY ("lab_id") REFERENCES "lab" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE lab_connect DROP CONSTRAINT lab_connect_lab_id_fkey;

-- changeset angelchang:648
ALTER TABLE "lab_connect" ADD CONSTRAINT "lab_connect_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE lab_connect DROP CONSTRAINT lab_connect_user_id_fkey;

-- changeset angelchang:649
ALTER TABLE "lab_report" ADD CONSTRAINT "lab_report_lab_clinic_connect_id_fkey" FOREIGN KEY ("lab_clinic_connect_id") REFERENCES "lab_clinic_connect" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE lab_report DROP CONSTRAINT lab_report_lab_clinic_connect_id_fkey;

-- changeset angelchang:650
ALTER TABLE "lab_report" ADD CONSTRAINT "lab_report_lab_connect_id_fkey" FOREIGN KEY ("lab_connect_id") REFERENCES "lab_connect" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE lab_report DROP CONSTRAINT lab_report_lab_connect_id_fkey;

-- changeset angelchang:651
ALTER TABLE "lab_report" ADD CONSTRAINT "lab_report_lab_id_fkey" FOREIGN KEY ("lab_id") REFERENCES "lab" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE lab_report DROP CONSTRAINT lab_report_lab_id_fkey;

-- changeset angelchang:652
ALTER TABLE "lab_report" ADD CONSTRAINT "lab_report_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE lab_report DROP CONSTRAINT lab_report_user_id_fkey;

-- changeset angelchang:653
ALTER TABLE "lab_result" ADD CONSTRAINT "lab_result_clinic_id_fkey" FOREIGN KEY ("clinic_id") REFERENCES "clinic" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE lab_result DROP CONSTRAINT lab_result_clinic_id_fkey;

-- changeset angelchang:654
ALTER TABLE "lab_result" ADD CONSTRAINT "lab_result_lab_report_id_fkey" FOREIGN KEY ("lab_report_id") REFERENCES "lab_report" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE lab_result DROP CONSTRAINT lab_result_lab_report_id_fkey;

-- changeset angelchang:655
ALTER TABLE "libreview_subscription" ADD CONSTRAINT "libreview_subscription_plan_id_fkey" FOREIGN KEY ("plan_id") REFERENCES "libreview_subscription_plan" ("id") ON UPDATE NO ACTION ON DELETE NO ACTION;
-- rollback: ALTER TABLE libreview_subscription DROP CONSTRAINT libreview_subscription_plan_id_fkey;

-- changeset angelchang:656
ALTER TABLE "libreview_subscription" ADD CONSTRAINT "libreview_subscription_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE NO ACTION;
-- rollback: ALTER TABLE libreview_subscription DROP CONSTRAINT libreview_subscription_user_id_fkey;

-- changeset angelchang:657
ALTER TABLE "magic_qrcode" ADD CONSTRAINT "magic_qrcode_clinic_id_fkey" FOREIGN KEY ("clinic_id") REFERENCES "clinic" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE magic_qrcode DROP CONSTRAINT magic_qrcode_clinic_id_fkey;

-- changeset angelchang:658
ALTER TABLE "magic_qrcode" ADD CONSTRAINT "magic_qrcode_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE magic_qrcode DROP CONSTRAINT magic_qrcode_user_id_fkey;

-- changeset angelchang:659
ALTER TABLE "measurement_plan" ADD CONSTRAINT "measurement_plan_clinic_id_fkey" FOREIGN KEY ("clinic_id") REFERENCES "clinic" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE measurement_plan DROP CONSTRAINT measurement_plan_clinic_id_fkey;

-- changeset angelchang:660
ALTER TABLE "measurement_plan" ADD CONSTRAINT "measurement_plan_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE measurement_plan DROP CONSTRAINT measurement_plan_user_id_fkey;

-- changeset angelchang:661
ALTER TABLE "medicine_attachment" ADD CONSTRAINT "medicine_attachment_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE medicine_attachment DROP CONSTRAINT medicine_attachment_user_id_fkey;

-- changeset angelchang:662
ALTER TABLE "medicine_reminder" ADD CONSTRAINT "medicine_reminder_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE medicine_reminder DROP CONSTRAINT medicine_reminder_user_id_fkey;

-- changeset angelchang:663
ALTER TABLE "metlife_customer" ADD CONSTRAINT "metlife_customer_care_connect_id_fkey" FOREIGN KEY ("care_connect_id") REFERENCES "care_connect" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE metlife_customer DROP CONSTRAINT metlife_customer_care_connect_id_fkey;

-- changeset angelchang:664
ALTER TABLE "moh_log" ADD CONSTRAINT "moh_log_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE moh_log DROP CONSTRAINT moh_log_user_id_fkey;

-- changeset angelchang:665
ALTER TABLE "moshi_attachment" ADD CONSTRAINT "moshi_attachment_moshi_id_fkey" FOREIGN KEY ("moshi_id") REFERENCES "moshi" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE moshi_attachment DROP CONSTRAINT moshi_attachment_moshi_id_fkey;

-- changeset angelchang:666
ALTER TABLE "moshi_campaign" ADD CONSTRAINT "moshi_campaign_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE moshi_campaign DROP CONSTRAINT moshi_campaign_user_id_fkey;

-- changeset angelchang:667
ALTER TABLE "moshi_classification" ADD CONSTRAINT "moshi_classification_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE moshi_classification DROP CONSTRAINT moshi_classification_user_id_fkey;

-- changeset angelchang:668
ALTER TABLE "moshi" ADD CONSTRAINT "moshi_clinic_id_fkey" FOREIGN KEY ("clinic_id") REFERENCES "clinic" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE moshi DROP CONSTRAINT moshi_clinic_id_fkey;

-- changeset angelchang:669
ALTER TABLE "moshi" ADD CONSTRAINT "moshi_moshi_campaign_id_fkey" FOREIGN KEY ("moshi_campaign_id") REFERENCES "moshi_campaign" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE moshi DROP CONSTRAINT moshi_moshi_campaign_id_fkey;

-- changeset angelchang:670
ALTER TABLE "moshi" ADD CONSTRAINT "moshi_receiver_id_fkey" FOREIGN KEY ("receiver_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE moshi DROP CONSTRAINT moshi_receiver_id_fkey;

-- changeset angelchang:671
ALTER TABLE "moshi" ADD CONSTRAINT "moshi_sender_id_fkey" FOREIGN KEY ("sender_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE moshi DROP CONSTRAINT moshi_sender_id_fkey;

-- changeset angelchang:672
ALTER TABLE "nhi_record" ADD CONSTRAINT "nhi_record_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE nhi_record DROP CONSTRAINT nhi_record_user_id_fkey;

-- changeset angelchang:673
ALTER TABLE "niigata_dm_message_event" ADD CONSTRAINT "niigata_dm_message_event_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE niigata_dm_message_event DROP CONSTRAINT niigata_dm_message_event_user_id_fkey;

-- changeset angelchang:674
ALTER TABLE "notification" ADD CONSTRAINT "notification_receiver_id_fkey" FOREIGN KEY ("receiver_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE notification DROP CONSTRAINT notification_receiver_id_fkey;

-- changeset angelchang:675
ALTER TABLE "oral_medicine_connect" ADD CONSTRAINT "oral_medicine_connect_diary_id_fkey" FOREIGN KEY ("diary_id") REFERENCES "diary" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE oral_medicine_connect DROP CONSTRAINT oral_medicine_connect_diary_id_fkey;

-- changeset angelchang:676
ALTER TABLE "oral_medicine_connect" ADD CONSTRAINT "oral_medicine_connect_oral_medicine_id_fkey" FOREIGN KEY ("oral_medicine_id") REFERENCES "oral_medicine" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE oral_medicine_connect DROP CONSTRAINT oral_medicine_connect_oral_medicine_id_fkey;

-- changeset angelchang:677
ALTER TABLE "oral_medicine_connect" ADD CONSTRAINT "oral_medicine_connect_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE oral_medicine_connect DROP CONSTRAINT oral_medicine_connect_user_id_fkey;

-- changeset angelchang:678
ALTER TABLE "partner_quaker_reward" ADD CONSTRAINT "partner_quaker_reward_user_info_id_fkey" FOREIGN KEY ("user_info_id") REFERENCES "partner_quaker_user_info" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE partner_quaker_reward DROP CONSTRAINT partner_quaker_reward_user_info_id_fkey;

-- changeset angelchang:679
ALTER TABLE "password_reset" ADD CONSTRAINT "password_reset_avatar_id_fkey" FOREIGN KEY ("avatar_id") REFERENCES "warp_avatar" ("id") ON UPDATE NO ACTION ON DELETE CASCADE;
-- rollback: ALTER TABLE password_reset DROP CONSTRAINT password_reset_avatar_id_fkey;

-- changeset angelchang:680
ALTER TABLE "peer_bells" ADD CONSTRAINT "peer_bells_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE peer_bells DROP CONSTRAINT peer_bells_user_id_fkey;

-- changeset angelchang:681
ALTER TABLE "peer_comment" ADD CONSTRAINT "peer_comment_mention_id_fkey" FOREIGN KEY ("mention_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE peer_comment DROP CONSTRAINT peer_comment_mention_id_fkey;

-- changeset angelchang:682
ALTER TABLE "peer_comment" ADD CONSTRAINT "peer_comment_owner_id_fkey" FOREIGN KEY ("owner_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE peer_comment DROP CONSTRAINT peer_comment_owner_id_fkey;

-- changeset angelchang:683
ALTER TABLE "peer_comment" ADD CONSTRAINT "peer_comment_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE peer_comment DROP CONSTRAINT peer_comment_user_id_fkey;

-- changeset angelchang:684
ALTER TABLE "peer_profile" ADD CONSTRAINT "peer_profile_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE peer_profile DROP CONSTRAINT peer_profile_user_id_fkey;

-- changeset angelchang:685
ALTER TABLE "peer_recommend_connect" ADD CONSTRAINT "peer_recommend_connect_owner_id_fkey" FOREIGN KEY ("owner_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE peer_recommend_connect DROP CONSTRAINT peer_recommend_connect_owner_id_fkey;

-- changeset angelchang:686
ALTER TABLE "peer_recommend_connect" ADD CONSTRAINT "peer_recommend_connect_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE peer_recommend_connect DROP CONSTRAINT peer_recommend_connect_user_id_fkey;

-- changeset angelchang:687
ALTER TABLE "peer_recommend" ADD CONSTRAINT "peer_recommend_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE peer_recommend DROP CONSTRAINT peer_recommend_user_id_fkey;

-- changeset angelchang:688
ALTER TABLE "peer_relationship" ADD CONSTRAINT "peer_relationship_followed_id_fkey" FOREIGN KEY ("followed_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE peer_relationship DROP CONSTRAINT peer_relationship_followed_id_fkey;

-- changeset angelchang:689
ALTER TABLE "peer_relationship" ADD CONSTRAINT "peer_relationship_follower_id_fkey" FOREIGN KEY ("follower_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE peer_relationship DROP CONSTRAINT peer_relationship_follower_id_fkey;

-- changeset angelchang:690
ALTER TABLE "peer_setting" ADD CONSTRAINT "peer_setting_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE peer_setting DROP CONSTRAINT peer_setting_user_id_fkey;

-- changeset angelchang:691
ALTER TABLE "peer_status" ADD CONSTRAINT "peer_status_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE peer_status DROP CONSTRAINT peer_status_user_id_fkey;

-- changeset angelchang:692
ALTER TABLE "photo_classification" ADD CONSTRAINT "photo_classification_diary_attachment_id_fkey" FOREIGN KEY ("diary_attachment_id") REFERENCES "diary_attachment" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE photo_classification DROP CONSTRAINT photo_classification_diary_attachment_id_fkey;

-- changeset angelchang:693
ALTER TABLE "photo_classification" ADD CONSTRAINT "photo_classification_moshi_attachment_id_fkey" FOREIGN KEY ("moshi_attachment_id") REFERENCES "moshi_attachment" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE photo_classification DROP CONSTRAINT photo_classification_moshi_attachment_id_fkey;

-- changeset angelchang:694
ALTER TABLE "photo_classification_tag" ADD CONSTRAINT "photo_classification_tag_photo_classification_id_fkey" FOREIGN KEY ("photo_classification_id") REFERENCES "photo_classification" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE photo_classification_tag DROP CONSTRAINT photo_classification_tag_photo_classification_id_fkey;

-- changeset angelchang:695
ALTER TABLE "photo_classification_tag" ADD CONSTRAINT "photo_classification_tag_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE photo_classification_tag DROP CONSTRAINT photo_classification_tag_user_id_fkey;

-- changeset angelchang:696
ALTER TABLE "photo_classification" ADD CONSTRAINT "photo_classification_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE photo_classification DROP CONSTRAINT photo_classification_user_id_fkey;

-- changeset angelchang:697
ALTER TABLE "pm_alert" ADD CONSTRAINT "pm_alert_care_connect_id_fkey" FOREIGN KEY ("care_connect_id") REFERENCES "care_connect" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE pm_alert DROP CONSTRAINT pm_alert_care_connect_id_fkey;

-- changeset angelchang:698
ALTER TABLE "pm_alert" ADD CONSTRAINT "pm_alert_patient_id_fkey" FOREIGN KEY ("patient_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE pm_alert DROP CONSTRAINT pm_alert_patient_id_fkey;

-- changeset angelchang:699
ALTER TABLE "pm_broadcast" ADD CONSTRAINT "pm_broadcast_clinic_id_fkey" FOREIGN KEY ("clinic_id") REFERENCES "clinic" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE pm_broadcast DROP CONSTRAINT pm_broadcast_clinic_id_fkey;

-- changeset angelchang:700
ALTER TABLE "pm_broadcast" ADD CONSTRAINT "pm_broadcast_group_id_fkey" FOREIGN KEY ("group_id") REFERENCES "clinic_group" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE pm_broadcast DROP CONSTRAINT pm_broadcast_group_id_fkey;

-- changeset angelchang:701
ALTER TABLE "pm_broadcast" ADD CONSTRAINT "pm_broadcast_sender_id_fkey" FOREIGN KEY ("sender_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE pm_broadcast DROP CONSTRAINT pm_broadcast_sender_id_fkey;

-- changeset angelchang:702
ALTER TABLE "premium_record" ADD CONSTRAINT "premium_record_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE premium_record DROP CONSTRAINT premium_record_user_id_fkey;

-- changeset angelchang:703
ALTER TABLE "premium_report_history" ADD CONSTRAINT "premium_report_history_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE premium_report_history DROP CONSTRAINT premium_report_history_user_id_fkey;

-- changeset angelchang:704
ALTER TABLE "premium_subscription" ADD CONSTRAINT "premium_subscription_affiliate_id_fkey" FOREIGN KEY ("affiliate_id") REFERENCES "affiliate" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE premium_subscription DROP CONSTRAINT premium_subscription_affiliate_id_fkey;

-- changeset angelchang:705
ALTER TABLE "premium_subscription" ADD CONSTRAINT "premium_subscription_clinic_id_fkey" FOREIGN KEY ("clinic_id") REFERENCES "clinic" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE premium_subscription DROP CONSTRAINT premium_subscription_clinic_id_fkey;

-- changeset angelchang:706
ALTER TABLE "premium_subscription" ADD CONSTRAINT "premium_subscription_clinic_subscription_id_fkey" FOREIGN KEY ("clinic_subscription_id") REFERENCES "clinic_subscription" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE premium_subscription DROP CONSTRAINT premium_subscription_clinic_subscription_id_fkey;

-- changeset angelchang:707
ALTER TABLE "premium_subscription" ADD CONSTRAINT "premium_subscription_plan_id_fkey" FOREIGN KEY ("plan_id") REFERENCES "premium_plan" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE premium_subscription DROP CONSTRAINT premium_subscription_plan_id_fkey;

-- changeset angelchang:708
ALTER TABLE "premium_subscription" ADD CONSTRAINT "premium_subscription_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE premium_subscription DROP CONSTRAINT premium_subscription_user_id_fkey;

-- changeset angelchang:709
ALTER TABLE "prescription_attachment" ADD CONSTRAINT "prescription_attachment_user_prescription_id_fkey" FOREIGN KEY ("user_prescription_id") REFERENCES "user_prescription" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE prescription_attachment DROP CONSTRAINT prescription_attachment_user_prescription_id_fkey;

-- changeset angelchang:710
ALTER TABLE "product" ADD CONSTRAINT "product_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE product DROP CONSTRAINT product_user_id_fkey;

-- changeset angelchang:711
ALTER TABLE "program_lifecycle_event" ADD CONSTRAINT "program_lifecycle_event_clinic_id_fkey" FOREIGN KEY ("clinic_id") REFERENCES "clinic" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE program_lifecycle_event DROP CONSTRAINT program_lifecycle_event_clinic_id_fkey;

-- changeset angelchang:712
ALTER TABLE "program_lifecycle_event" ADD CONSTRAINT "program_lifecycle_event_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE program_lifecycle_event DROP CONSTRAINT program_lifecycle_event_user_id_fkey;

-- changeset angelchang:713
ALTER TABLE "report_history" ADD CONSTRAINT "report_history_owner_id_fkey" FOREIGN KEY ("owner_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE report_history DROP CONSTRAINT report_history_owner_id_fkey;

-- changeset angelchang:714
ALTER TABLE "sdm_report" ADD CONSTRAINT "sdm_report_care_connect_id_fkey" FOREIGN KEY ("care_connect_id") REFERENCES "care_connect" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE sdm_report DROP CONSTRAINT sdm_report_care_connect_id_fkey;

-- changeset angelchang:715
ALTER TABLE "sdm_report" ADD CONSTRAINT "sdm_report_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE sdm_report DROP CONSTRAINT sdm_report_user_id_fkey;

-- changeset angelchang:716
ALTER TABLE "si_access_token" ADD CONSTRAINT "si_access_token_system_integrator_id_fkey" FOREIGN KEY ("system_integrator_id") REFERENCES "system_integrator" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE si_access_token DROP CONSTRAINT si_access_token_system_integrator_id_fkey;

-- changeset angelchang:717
ALTER TABLE "si_clinic_assignment" ADD CONSTRAINT "si_clinic_assignment_clinic_id_fkey" FOREIGN KEY ("clinic_id") REFERENCES "clinic" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE si_clinic_assignment DROP CONSTRAINT si_clinic_assignment_clinic_id_fkey;

-- changeset angelchang:718
ALTER TABLE "si_clinic_assignment" ADD CONSTRAINT "si_clinic_assignment_system_integrator_id_fkey" FOREIGN KEY ("system_integrator_id") REFERENCES "system_integrator" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE si_clinic_assignment DROP CONSTRAINT si_clinic_assignment_system_integrator_id_fkey;

-- changeset angelchang:719
ALTER TABLE "soap_sync" ADD CONSTRAINT "soap_sync_care_connect_id_fkey" FOREIGN KEY ("care_connect_id") REFERENCES "care_connect" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE soap_sync DROP CONSTRAINT soap_sync_care_connect_id_fkey;

-- changeset angelchang:720
ALTER TABLE "social_connect" ADD CONSTRAINT "social_connect_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE social_connect DROP CONSTRAINT social_connect_user_id_fkey;

-- changeset angelchang:721
ALTER TABLE "step" ADD CONSTRAINT "step_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE step DROP CONSTRAINT step_user_id_fkey;

-- changeset angelchang:722
ALTER TABLE "toolbox_answer" ADD CONSTRAINT "toolbox_answer_moshi_campaign_id_fkey" FOREIGN KEY ("moshi_campaign_id") REFERENCES "moshi_campaign" ("id") ON UPDATE NO ACTION ON DELETE CASCADE;
-- rollback: ALTER TABLE toolbox_answer DROP CONSTRAINT toolbox_answer_moshi_campaign_id_fkey;

-- changeset angelchang:723
ALTER TABLE "toolbox_answer" ADD CONSTRAINT "toolbox_answer_toolbox_form_id_fkey" FOREIGN KEY ("toolbox_form_id") REFERENCES "toolbox_form" ("id") ON UPDATE NO ACTION ON DELETE CASCADE;
-- rollback: ALTER TABLE toolbox_answer DROP CONSTRAINT toolbox_answer_toolbox_form_id_fkey;

-- changeset angelchang:724
ALTER TABLE "toolbox_answer" ADD CONSTRAINT "toolbox_answer_toolbox_program_id_fkey" FOREIGN KEY ("toolbox_program_id") REFERENCES "toolbox_program" ("id") ON UPDATE NO ACTION ON DELETE CASCADE;
-- rollback: ALTER TABLE toolbox_answer DROP CONSTRAINT toolbox_answer_toolbox_program_id_fkey;

-- changeset angelchang:725
ALTER TABLE "toolbox_answer" ADD CONSTRAINT "toolbox_answer_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE CASCADE;
-- rollback: ALTER TABLE toolbox_answer DROP CONSTRAINT toolbox_answer_user_id_fkey;

-- changeset angelchang:726
ALTER TABLE "toolbox_attachment" ADD CONSTRAINT "toolbox_attachment_producer_id_fkey" FOREIGN KEY ("producer_id") REFERENCES "toolbox_producer" ("id") ON UPDATE NO ACTION ON DELETE CASCADE;
-- rollback: ALTER TABLE toolbox_attachment DROP CONSTRAINT toolbox_attachment_producer_id_fkey;

-- changeset angelchang:727
ALTER TABLE "toolbox_form_connect" ADD CONSTRAINT "toolbox_form_connect_moshi_campaign_id_fkey" FOREIGN KEY ("moshi_campaign_id") REFERENCES "moshi_campaign" ("id") ON UPDATE NO ACTION ON DELETE CASCADE;
-- rollback: ALTER TABLE toolbox_form_connect DROP CONSTRAINT toolbox_form_connect_moshi_campaign_id_fkey;

-- changeset angelchang:728
ALTER TABLE "toolbox_form_connect" ADD CONSTRAINT "toolbox_form_connect_toolbox_form_id_fkey" FOREIGN KEY ("toolbox_form_id") REFERENCES "toolbox_form" ("id") ON UPDATE NO ACTION ON DELETE CASCADE;
-- rollback: ALTER TABLE toolbox_form_connect DROP CONSTRAINT toolbox_form_connect_toolbox_form_id_fkey;

-- changeset angelchang:729
ALTER TABLE "toolbox_form_connect" ADD CONSTRAINT "toolbox_form_connect_toolbox_program_id_fkey" FOREIGN KEY ("toolbox_program_id") REFERENCES "toolbox_program" ("id") ON UPDATE NO ACTION ON DELETE CASCADE;
-- rollback: ALTER TABLE toolbox_form_connect DROP CONSTRAINT toolbox_form_connect_toolbox_program_id_fkey;

-- changeset angelchang:730
ALTER TABLE "toolbox_form_connect" ADD CONSTRAINT "toolbox_form_connect_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE CASCADE;
-- rollback: ALTER TABLE toolbox_form_connect DROP CONSTRAINT toolbox_form_connect_user_id_fkey;

-- changeset angelchang:731
ALTER TABLE "toolbox_form" ADD CONSTRAINT "toolbox_form_producer_id_fkey" FOREIGN KEY ("producer_id") REFERENCES "toolbox_producer" ("id") ON UPDATE NO ACTION ON DELETE CASCADE;
-- rollback: ALTER TABLE toolbox_form DROP CONSTRAINT toolbox_form_producer_id_fkey;

-- changeset angelchang:732
ALTER TABLE "toolbox_message" ADD CONSTRAINT "toolbox_message_article_id_fkey" FOREIGN KEY ("article_id") REFERENCES "toolbox_article" ("id") ON UPDATE NO ACTION ON DELETE NO ACTION;
-- rollback: ALTER TABLE toolbox_message DROP CONSTRAINT toolbox_message_article_id_fkey;

-- changeset angelchang:733
ALTER TABLE "toolbox_message" ADD CONSTRAINT "toolbox_message_form_id_fkey" FOREIGN KEY ("form_id") REFERENCES "toolbox_form" ("id") ON UPDATE NO ACTION ON DELETE NO ACTION;
-- rollback: ALTER TABLE toolbox_message DROP CONSTRAINT toolbox_message_form_id_fkey;

-- changeset angelchang:734
ALTER TABLE "toolbox_message_group_connect" ADD CONSTRAINT "toolbox_message_group_connect_toolbox_message_group_id_fkey" FOREIGN KEY ("toolbox_message_group_id") REFERENCES "toolbox_message_group" ("id") ON UPDATE NO ACTION ON DELETE CASCADE;
-- rollback: ALTER TABLE toolbox_message_group_connect DROP CONSTRAINT toolbox_message_group_connect_toolbox_message_group_id_fkey;

-- changeset angelchang:735
ALTER TABLE "toolbox_message_group_connect" ADD CONSTRAINT "toolbox_message_group_connect_toolbox_message_id_fkey" FOREIGN KEY ("toolbox_message_id") REFERENCES "toolbox_message" ("id") ON UPDATE NO ACTION ON DELETE CASCADE;
-- rollback: ALTER TABLE toolbox_message_group_connect DROP CONSTRAINT toolbox_message_group_connect_toolbox_message_id_fkey;

-- changeset angelchang:736
ALTER TABLE "toolbox_message_group" ADD CONSTRAINT "toolbox_message_group_producer_id_fkey" FOREIGN KEY ("producer_id") REFERENCES "toolbox_producer" ("id") ON UPDATE NO ACTION ON DELETE CASCADE;
-- rollback: ALTER TABLE toolbox_message_group DROP CONSTRAINT toolbox_message_group_producer_id_fkey;

-- changeset angelchang:737
ALTER TABLE "toolbox_program_article_connect" ADD CONSTRAINT "toolbox_program_article_conne_toolbox_program_user_connect_fkey" FOREIGN KEY ("toolbox_program_user_connect_id") REFERENCES "toolbox_program_user_connect" ("id") ON UPDATE NO ACTION ON DELETE CASCADE;
-- rollback: ALTER TABLE toolbox_program_article_connect DROP CONSTRAINT toolbox_program_article_conne_toolbox_program_user_connect_fkey;

-- changeset angelchang:738
ALTER TABLE "toolbox_program_article_connect" ADD CONSTRAINT "toolbox_program_article_connect_toolbox_article_id_fkey" FOREIGN KEY ("toolbox_article_id") REFERENCES "toolbox_article" ("id") ON UPDATE NO ACTION ON DELETE CASCADE;
-- rollback: ALTER TABLE toolbox_program_article_connect DROP CONSTRAINT toolbox_program_article_connect_toolbox_article_id_fkey;

-- changeset angelchang:739
ALTER TABLE "toolbox_program" ADD CONSTRAINT "toolbox_program_clinic_id_fkey" FOREIGN KEY ("clinic_id") REFERENCES "clinic" ("id") ON UPDATE NO ACTION ON DELETE CASCADE;
-- rollback: ALTER TABLE toolbox_program DROP CONSTRAINT toolbox_program_clinic_id_fkey;

-- changeset angelchang:740
ALTER TABLE "toolbox_program_moshi_connect" ADD CONSTRAINT "toolbox_program_moshi_connect_moshi_id_fkey" FOREIGN KEY ("moshi_id") REFERENCES "moshi" ("id") ON UPDATE NO ACTION ON DELETE CASCADE;
-- rollback: ALTER TABLE toolbox_program_moshi_connect DROP CONSTRAINT toolbox_program_moshi_connect_moshi_id_fkey;

-- changeset angelchang:741
ALTER TABLE "toolbox_program_moshi_connect" ADD CONSTRAINT "toolbox_program_moshi_connect_toolbox_message_group_id_fkey" FOREIGN KEY ("toolbox_message_group_id") REFERENCES "toolbox_message_group" ("id") ON UPDATE NO ACTION ON DELETE CASCADE;
-- rollback: ALTER TABLE toolbox_program_moshi_connect DROP CONSTRAINT toolbox_program_moshi_connect_toolbox_message_group_id_fkey;

-- changeset angelchang:742
ALTER TABLE "toolbox_program_moshi_connect" ADD CONSTRAINT "toolbox_program_moshi_connect_toolbox_message_id_fkey" FOREIGN KEY ("toolbox_message_id") REFERENCES "toolbox_message" ("id") ON UPDATE NO ACTION ON DELETE CASCADE;
-- rollback: ALTER TABLE toolbox_program_moshi_connect DROP CONSTRAINT toolbox_program_moshi_connect_toolbox_message_id_fkey;

-- changeset angelchang:743
ALTER TABLE "toolbox_program_moshi_connect" ADD CONSTRAINT "toolbox_program_moshi_connect_toolbox_program_user_connect_fkey" FOREIGN KEY ("toolbox_program_user_connect_id") REFERENCES "toolbox_program_user_connect" ("id") ON UPDATE NO ACTION ON DELETE CASCADE;
-- rollback: ALTER TABLE toolbox_program_moshi_connect DROP CONSTRAINT toolbox_program_moshi_connect_toolbox_program_user_connect_fkey;

-- changeset angelchang:744
ALTER TABLE "toolbox_program" ADD CONSTRAINT "toolbox_program_plan_id_fkey" FOREIGN KEY ("plan_id") REFERENCES "clinic_plan" ("id") ON UPDATE NO ACTION ON DELETE CASCADE;
-- rollback: ALTER TABLE toolbox_program DROP CONSTRAINT toolbox_program_plan_id_fkey;

-- changeset angelchang:745
ALTER TABLE "toolbox_program" ADD CONSTRAINT "toolbox_program_producer_id_fkey" FOREIGN KEY ("producer_id") REFERENCES "toolbox_producer" ("id") ON UPDATE NO ACTION ON DELETE CASCADE;
-- rollback: ALTER TABLE toolbox_program DROP CONSTRAINT toolbox_program_producer_id_fkey;
