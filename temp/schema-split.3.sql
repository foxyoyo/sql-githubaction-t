
-- changeset angelchang:746
ALTER TABLE "toolbox_program_user_connect" ADD CONSTRAINT "toolbox_program_user_connect_clinic_subscription_id_fkey" FOREIGN KEY ("clinic_subscription_id") REFERENCES "clinic_subscription" ("id") ON UPDATE NO ACTION ON DELETE CASCADE;
-- rollback: ALTER TABLE toolbox_program_user_connect DROP CONSTRAINT toolbox_program_user_connect_clinic_subscription_id_fkey;

-- changeset angelchang:747
ALTER TABLE "toolbox_program_user_connect" ADD CONSTRAINT "toolbox_program_user_connect_toolbox_program_id_fkey" FOREIGN KEY ("toolbox_program_id") REFERENCES "toolbox_program" ("id") ON UPDATE NO ACTION ON DELETE CASCADE;
-- rollback: ALTER TABLE toolbox_program_user_connect DROP CONSTRAINT toolbox_program_user_connect_toolbox_program_id_fkey;

-- changeset angelchang:748
ALTER TABLE "toolbox_program_user_connect" ADD CONSTRAINT "toolbox_program_user_connect_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE CASCADE;
-- rollback: ALTER TABLE toolbox_program_user_connect DROP CONSTRAINT toolbox_program_user_connect_user_id_fkey;

-- changeset angelchang:749
ALTER TABLE "toolbox_schedule" ADD CONSTRAINT "toolbox_schedule_toolbox_message_group_id_fkey" FOREIGN KEY ("toolbox_message_group_id") REFERENCES "toolbox_message_group" ("id") ON UPDATE NO ACTION ON DELETE CASCADE;
-- rollback: ALTER TABLE toolbox_schedule DROP CONSTRAINT toolbox_schedule_toolbox_message_group_id_fkey;

-- changeset angelchang:750
ALTER TABLE "toolbox_schedule" ADD CONSTRAINT "toolbox_schedule_toolbox_message_id_fkey" FOREIGN KEY ("toolbox_message_id") REFERENCES "toolbox_message" ("id") ON UPDATE NO ACTION ON DELETE CASCADE;
-- rollback: ALTER TABLE toolbox_schedule DROP CONSTRAINT toolbox_schedule_toolbox_message_id_fkey;

-- changeset angelchang:751
ALTER TABLE "toolbox_schedule" ADD CONSTRAINT "toolbox_schedule_toolbox_program_id_fkey" FOREIGN KEY ("toolbox_program_id") REFERENCES "toolbox_program" ("id") ON UPDATE NO ACTION ON DELETE CASCADE;
-- rollback: ALTER TABLE toolbox_schedule DROP CONSTRAINT toolbox_schedule_toolbox_program_id_fkey;

-- changeset angelchang:752
ALTER TABLE "toolbox_toolbars_permission" ADD CONSTRAINT "toolbox_toolbars_permission_toolbox_producer_id_fk" FOREIGN KEY ("producer_id") REFERENCES "toolbox_producer" ("id") ON UPDATE NO ACTION ON DELETE NO ACTION;
-- rollback: ALTER TABLE toolbox_toolbars_permission DROP CONSTRAINT toolbox_toolbars_permission_toolbox_producer_id_fk;

-- changeset angelchang:753
ALTER TABLE "toolbox_toolbars_permission" ADD CONSTRAINT "toolbox_toolbars_permission_toolbox_toolbars_id_fk" FOREIGN KEY ("toolbar_id") REFERENCES "toolbox_toolbars" ("id") ON UPDATE NO ACTION ON DELETE NO ACTION;
-- rollback: ALTER TABLE toolbox_toolbars_permission DROP CONSTRAINT toolbox_toolbars_permission_toolbox_toolbars_id_fk;

-- changeset angelchang:754
ALTER TABLE "user_a1c" ADD CONSTRAINT "user_a1c_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_a1c DROP CONSTRAINT user_a1c_user_id_fkey;

-- changeset angelchang:755
ALTER TABLE "user_analysis" ADD CONSTRAINT "user_analysis_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_analysis DROP CONSTRAINT user_analysis_user_id_fkey;

-- changeset angelchang:756
ALTER TABLE "user_cache" ADD CONSTRAINT "user_cache_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_cache DROP CONSTRAINT user_cache_user_id_fkey;

-- changeset angelchang:757
ALTER TABLE "user_consent_document" ADD CONSTRAINT "user_consent_document_clinic_id_fkey" FOREIGN KEY ("clinic_id") REFERENCES "clinic" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_consent_document DROP CONSTRAINT user_consent_document_clinic_id_fkey;

-- changeset angelchang:758
ALTER TABLE "user_consent_document" ADD CONSTRAINT "user_consent_document_country_id_fkey" FOREIGN KEY ("country_id") REFERENCES "country" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_consent_document DROP CONSTRAINT user_consent_document_country_id_fkey;

-- changeset angelchang:759
ALTER TABLE "user_consent_history" ADD CONSTRAINT "user_consent_history_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_consent_history DROP CONSTRAINT user_consent_history_user_id_fkey;

-- changeset angelchang:760
ALTER TABLE "user_daily_routine" ADD CONSTRAINT "user_daily_routine_care_connect_id_fkey" FOREIGN KEY ("care_connect_id") REFERENCES "care_connect" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_daily_routine DROP CONSTRAINT user_daily_routine_care_connect_id_fkey;

-- changeset angelchang:761
ALTER TABLE "user_daily_routine" ADD CONSTRAINT "user_daily_routine_created_by_fkey" FOREIGN KEY ("created_by") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_daily_routine DROP CONSTRAINT user_daily_routine_created_by_fkey;

-- changeset angelchang:762
ALTER TABLE "user_daily_routine" ADD CONSTRAINT "user_daily_routine_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_daily_routine DROP CONSTRAINT user_daily_routine_user_id_fkey;

-- changeset angelchang:763
ALTER TABLE "user_exam_unit" ADD CONSTRAINT "user_exam_unit_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE CASCADE;
-- rollback: ALTER TABLE user_exam_unit DROP CONSTRAINT user_exam_unit_user_id_fkey;

-- changeset angelchang:764
ALTER TABLE "user_icd_code" ADD CONSTRAINT "user_icd_code_emr_record_id_fkey" FOREIGN KEY ("emr_record_id") REFERENCES "emr_record" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_icd_code DROP CONSTRAINT user_icd_code_emr_record_id_fkey;

-- changeset angelchang:765
ALTER TABLE "user_measurement_plan" ADD CONSTRAINT "user_measurement_plan_care_connect_id_fkey" FOREIGN KEY ("care_connect_id") REFERENCES "care_connect" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_measurement_plan DROP CONSTRAINT user_measurement_plan_care_connect_id_fkey;

-- changeset angelchang:766
ALTER TABLE "user_measurement_plan" ADD CONSTRAINT "user_measurement_plan_created_by_fkey" FOREIGN KEY ("created_by") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_measurement_plan DROP CONSTRAINT user_measurement_plan_created_by_fkey;

-- changeset angelchang:767
ALTER TABLE "user_measurement_plan" ADD CONSTRAINT "user_measurement_plan_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_measurement_plan DROP CONSTRAINT user_measurement_plan_user_id_fkey;

-- changeset angelchang:768
ALTER TABLE "user_meter" ADD CONSTRAINT "user_meter_meter_id_fkey" FOREIGN KEY ("meter_id") REFERENCES "meter" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_meter DROP CONSTRAINT user_meter_meter_id_fkey;

-- changeset angelchang:769
ALTER TABLE "user_meter" ADD CONSTRAINT "user_meter_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_meter DROP CONSTRAINT user_meter_user_id_fkey;

-- changeset angelchang:770
ALTER TABLE "user_nhi_p_code" ADD CONSTRAINT "user_nhi_p_code_emr_record_id_fkey" FOREIGN KEY ("emr_record_id") REFERENCES "emr_record" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_nhi_p_code DROP CONSTRAINT user_nhi_p_code_emr_record_id_fkey;

-- changeset angelchang:771
ALTER TABLE "user_notification_token" ADD CONSTRAINT "user_notification_token_user_token_id_fkey" FOREIGN KEY ("user_token_id") REFERENCES "user_token" ("id") ON UPDATE NO ACTION ON DELETE SET NULL;
-- rollback: ALTER TABLE user_notification_token DROP CONSTRAINT user_notification_token_user_token_id_fkey;

-- changeset angelchang:772
ALTER TABLE "user_picture" ADD CONSTRAINT "user_picture_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_picture DROP CONSTRAINT user_picture_user_id_fkey;

-- changeset angelchang:773
ALTER TABLE "user_pref" ADD CONSTRAINT "user_pref_care_connect_id_fkey" FOREIGN KEY ("care_connect_id") REFERENCES "care_connect" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_pref DROP CONSTRAINT user_pref_care_connect_id_fkey;

-- changeset angelchang:774
ALTER TABLE "user_pref" ADD CONSTRAINT "user_pref_created_by_fkey" FOREIGN KEY ("created_by") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_pref DROP CONSTRAINT user_pref_created_by_fkey;

-- changeset angelchang:775
ALTER TABLE "user_pref" ADD CONSTRAINT "user_pref_meter_id_fkey" FOREIGN KEY ("meter_id") REFERENCES "meter" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_pref DROP CONSTRAINT user_pref_meter_id_fkey;

-- changeset angelchang:776
ALTER TABLE "user_pref" ADD CONSTRAINT "user_pref_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_pref DROP CONSTRAINT user_pref_user_id_fkey;

-- changeset angelchang:777
ALTER TABLE "user_prescription" ADD CONSTRAINT "user_prescription_clinic_id_fkey" FOREIGN KEY ("clinic_id") REFERENCES "clinic" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_prescription DROP CONSTRAINT user_prescription_clinic_id_fkey;

-- changeset angelchang:778
ALTER TABLE "user_prescription" ADD CONSTRAINT "user_prescription_clinic_prescription_id_fkey" FOREIGN KEY ("clinic_prescription_id") REFERENCES "clinic_prescription" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_prescription DROP CONSTRAINT user_prescription_clinic_prescription_id_fkey;

-- changeset angelchang:779
ALTER TABLE "user_prescription" ADD CONSTRAINT "user_prescription_nhi_record_id_fkey" FOREIGN KEY ("nhi_record_id") REFERENCES "nhi_record" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_prescription DROP CONSTRAINT user_prescription_nhi_record_id_fkey;

-- changeset angelchang:780
ALTER TABLE "user_prescription_qr_code" ADD CONSTRAINT "user_prescription_qr_code_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_prescription_qr_code DROP CONSTRAINT user_prescription_qr_code_user_id_fkey;

-- changeset angelchang:781
ALTER TABLE "user_prescription" ADD CONSTRAINT "user_prescription_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_prescription DROP CONSTRAINT user_prescription_user_id_fkey;

-- changeset angelchang:782
ALTER TABLE "user_prescription" ADD CONSTRAINT "user_prescription_user_prescription_qr_code_id_fkey" FOREIGN KEY ("user_prescription_qr_code_id") REFERENCES "user_prescription_qr_code" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_prescription DROP CONSTRAINT user_prescription_user_prescription_qr_code_id_fkey;

-- changeset angelchang:783
ALTER TABLE "user_stream" ADD CONSTRAINT "user_stream_clinic_id_fkey" FOREIGN KEY ("clinic_id") REFERENCES "clinic" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_stream DROP CONSTRAINT user_stream_clinic_id_fkey;

-- changeset angelchang:784
ALTER TABLE "user_stream" ADD CONSTRAINT "user_stream_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_stream DROP CONSTRAINT user_stream_user_id_fkey;

-- changeset angelchang:785
ALTER TABLE "user_stripe" ADD CONSTRAINT "user_stripe_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_stripe DROP CONSTRAINT user_stripe_user_id_fkey;

-- changeset angelchang:786
ALTER TABLE "user_token" ADD CONSTRAINT "user_token_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_token DROP CONSTRAINT user_token_user_id_fkey;

-- changeset angelchang:787
ALTER TABLE "warp_session" ADD CONSTRAINT "warp_session_avatar_id_fkey" FOREIGN KEY ("avatar_id") REFERENCES "warp_avatar" ("id") ON UPDATE NO ACTION ON DELETE CASCADE;
-- rollback: ALTER TABLE warp_session DROP CONSTRAINT warp_session_avatar_id_fkey;

-- changeset angelchang:788
ALTER TABLE "web_session" ADD CONSTRAINT "web_session_avatar_id_fkey" FOREIGN KEY ("avatar_id") REFERENCES "warp_avatar" ("id") ON UPDATE NO ACTION ON DELETE CASCADE;
-- rollback: ALTER TABLE web_session DROP CONSTRAINT web_session_avatar_id_fkey;

-- changeset angelchang:789
CREATE INDEX IF NOT EXISTS "idx_diary_user_id_recorded_at_with_weight" ON "diary" USING btree (user_id, recorded_at) WHERE (weight >= '0'::numeric);
-- rollback: DROP INDEX idx_diary_user_id_recorded_at_with_weight;

-- changeset angelchang:790
CREATE INDEX IF NOT EXISTS "idx_diary_batch_record_batch_uuid" ON "diary_batch_record" USING btree (batch_uuid);
-- rollback: DROP INDEX idx_diary_batch_record_batch_uuid;

-- changeset angelchang:791
CREATE INDEX IF NOT EXISTS "idx_program_lifecycle_event_user_id" ON "hl_cgm_message_event" USING btree (user_id);
-- rollback: DROP INDEX idx_program_lifecycle_event_user_id;

-- changeset angelchang:792
CREATE INDEX IF NOT EXISTS "idx_user_pref_user_id" ON "user_pref" USING btree (user_id);
-- rollback: DROP INDEX idx_user_pref_user_id;

-- changeset hankchou:793
CREATE TABLE IF NOT EXISTS "user_change_history" ("id" INTEGER GENERATED BY DEFAULT AS IDENTITY NOT NULL, "created_at" TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(), "updated_at" TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(), "origin_data" TEXT, "changed_data" TEXT, "change_type" TEXT, "user_id" INTEGER, CONSTRAINT "user_change_history_pkey" PRIMARY KEY ("id"));
-- rollback: DROP TABLE user_change_history;

-- changeset hankchou:794
ALTER TABLE "user_change_history" ADD CONSTRAINT "user_change_history_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_change_history DROP CONSTRAINT user_change_history_user_id_fkey;

-- changeset tonyko:795
CREATE TABLE IF NOT EXISTS "toolbox_analysis_base"( id SERIAL NOT NULL PRIMARY KEY, producer_id INTEGER NOT NULL REFERENCES toolbox_producer(id), toolbox_schedule_id INTEGER REFERENCES toolbox_schedule(id) ON DELETE CASCADE, name TEXT NOT NULL, fields JSONB[] NOT NULL DEFAULT '{}', end_repeat bool NOT NULL DEFAULT false, created_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(), updated_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(), deleted_at TIMESTAMP WITHOUT TIME ZONE);
CREATE UNIQUE INDEX IF NOT EXISTS toolbox_analysis_base_producer_id_name_key ON toolbox_analysis_base(producer_id, name) WHERE deleted_at IS NULL;
-- rollback: DROP INDEX IF EXISTS toolbox_analysis_base_producer_id_name_key; DROP TABLE IF EXISTS toolbox_analysis_base;

-- changeset tonyko:796
CREATE TABLE IF NOT EXISTS "toolbox_analysis"( id SERIAL NOT NULL PRIMARY KEY, toolbox_analysis_base_id INTEGER REFERENCES toolbox_analysis_base(id) ON DELETE CASCADE, toolbox_message_id INTEGER REFERENCES toolbox_message(id) ON DELETE RESTRICT, toolbox_message_group_id INTEGER REFERENCES toolbox_message_group(id), conditions JSONB[] NOT NULL DEFAULT '{}', seq INTEGER NOT NULL DEFAULT 0, created_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(), updated_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(), deleted_at TIMESTAMP WITHOUT TIME ZONE);
CREATE UNIQUE INDEX IF NOT EXISTS toolbox_analysis_base_id_seq_key ON toolbox_analysis(toolbox_analysis_base_id, seq ASC) WHERE deleted_at IS NULL;
-- rollback: DROP INDEX IF EXISTS toolbox_analysis_base_id_seq_key; DROP TABLE IF EXISTS toolbox_analysis;

-- changeset tonyko:797
ALTER TABLE IF EXISTS toolbox_analysis_base DROP COLUMN fields, ADD COLUMN fields JSONB NOT NULL DEFAULT '[]';
ALTER TABLE IF EXISTS toolbox_analysis DROP COLUMN conditions, ADD COLUMN conditions JSONB NOT NULL DEFAULT '[]';
-- rollback: DROP INDEX IF EXISTS toolbox_analysis_base_id_seq_key; DROP TABLE IF EXISTS toolbox_analysis;

-- changeset anguswang:798
ALTER TABLE country ADD COLUMN IF NOT EXISTS default_identifier TEXT;
ALTER TABLE country RENAME COLUMN is_admin TO allow_create_clinic;
-- rollback: ALTER TABLE country DROP COLUMN IF EXISTS default_identifier;

-- changeset tonyko:799
DROP INDEX IF EXISTS toolbox_analysis_base_producer_id_name_key;
-- rollback: CREATE UNIQUE INDEX IF NOT EXISTS toolbox_analysis_base_producer_id_name_key ON toolbox_analysis_base(producer_id, name) WHERE deleted_at IS NULL;

-- changeset angelchang:800
CREATE TABLE IF NOT EXISTS "food_ai_record" (id SERIAL NOT NULL PRIMARY KEY,user_id INTEGER NOT NULL,satisfaction_review BOOLEAN DEFAULT NULL,has_results BOOLEAN DEFAULT FALSE,url TEXT DEFAULT NULL,results TEXT DEFAULT '[]',created_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(),updated_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW());
ALTER TABLE "food_ai_record" ADD CONSTRAINT "food_ai_record_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE food_ai_record DROP CONSTRAINT food_ai_record_user_id_fkey; DROP TABLE food_ai_record;

--changeset angelchang:801
alter table food_ai_record alter column has_results set not null;
alter table food_ai_record alter column results drop default;
alter table food_ai_record alter column results type jsonb using results::jsonb;
alter table food_ai_record alter column results set not null;
alter table food_ai_record alter column results set default '[]'::jsonb;

-- changeset tonyko:802
ALTER TABLE toolbox_analysis ADD COLUMN IF NOT EXISTS end_repeat bool NOT NULL DEFAULT false, ADD COLUMN IF NOT EXISTS is_default bool NOT NULL DEFAULT false;
-- rollback: ALTER TABLE toolbox_analysis DROP COLUMN IF EXISTS end_repeat, DROP COLUMN IF EXISTS is_default;

--changeset anguswang:803
CREATE TABLE IF NOT EXISTS "sanofi_survey" (id SERIAL NOT NULL PRIMARY KEY, user_id INTEGER NOT NULL,
clinic_id INTEGER NOT NULL,governorate INTEGER NOT NULL, city VARCHAR NOT NULL, district VARCHAR NOT NULL,
created_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(), updated_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW());
-- rollback: DROP TABLE sanofi_survey;

--changeset schneeruan:804
ALTER TABLE premium_report_history ADD COLUMN IF NOT EXISTS status_code INTEGER;
-- rollback: ALTER TABLE premium_report_history DROP COLUMN IF EXISTS status_code;

--changeset tonyko:805
  ALTER TABLE toolbox_message ADD COLUMN IF NOT EXISTS m_type TEXT NOT NULL DEFAULT 'static', ADD COLUMN IF NOT EXISTS d_types TEXT[] NOT NULL DEFAULT '{}'; CREATE INDEX IF NOT EXISTS ix_toolbox_message_producer_m_type on toolbox_message(producer_id, m_type);
-- rollback: DROP INDEX IF EXISTS ix_toolbox_message_producer_m_type; ALTER TABLE toolbox_message DROP COLUMN IF EXISTS m_type, DROP COLUMN IF EXISTS d_types;

-- changeset angelchang:806
CREATE UNIQUE INDEX IF NOT EXISTS "idx_unique_clinic_mark_clinic_id_user_id" ON "clinic_mark" ("clinic_id", "user_id");
-- rollback: DROP INDEX IF EXISTS idx_unique_clinic_mark_clinic_id_user_id;

-- changeset anguswang:807
ALTER Table user_exam_unit ALTER COLUMN cortisol SET DEFAULT 'μg/dL', ALTER COLUMN tsh SET DEFAULT 'μIU/mL', ALTER COLUMN iron SET DEFAULT 'μg/dL', ALTER COLUMN tibc SET DEFAULT 'μg/dL', ALTER COLUMN t4_thyroxine SET DEFAULT 'μg/dL'; ALTER Table clinic_exam_unit ALTER COLUMN cortisol SET DEFAULT 'μg/dL', ALTER COLUMN tsh SET DEFAULT 'μIU/mL', ALTER COLUMN iron SET DEFAULT 'μg/dL', ALTER COLUMN tibc SET DEFAULT 'μg/dL', ALTER COLUMN t4_thyroxine SET DEFAULT 'μg/dL';
-- rollback: ALTER Table user_exam_unit ALTER COLUMN cortisol SET DEFAULT 'µg/dL', ALTER COLUMN tsh SET DEFAULT 'µIU/mL', ALTER COLUMN iron SET DEFAULT 'µg/dL', ALTER COLUMN tibc SET DEFAULT 'µg/dL', ALTER COLUMN t4_thyroxine SET DEFAULT 'µg/dL'; ALTER Table clinic_exam_unit ALTER COLUMN cortisol SET DEFAULT 'µg/dL', ALTER COLUMN tsh SET DEFAULT 'µIU/mL', ALTER COLUMN iron SET DEFAULT 'µg/dL', ALTER COLUMN tibc SET DEFAULT 'µg/dL', ALTER COLUMN t4_thyroxine SET DEFAULT 'µg/dL';

-- changeset angelchang:808
DROP INDEX IF EXISTS idx_user_exam_unit_user_id;
CREATE UNIQUE INDEX IF NOT EXISTS idx_unique_user_exam_unit_user_id ON user_exam_unit(user_id);
-- rollback: DROP INDEX IF EXISTS idx_unique_user_exam_unit_user_id; CREATE INDEX IF NOT EXISTS "idx_user_exam_unit_user_id" ON "user_exam_unit"("user_id");

-- changeset hankchou:809
CREATE TABLE IF NOT EXISTS "region"(id SERIAL NOT NULL PRIMARY KEY, iso_code TEXT);
-- rollback: DROP TABLE region;

-- changeset hankchou:810
CREATE TABLE IF NOT EXISTS "account"(id SERIAL NOT NULL PRIMARY KEY, phone_number TEXT, email TEXT, identity TEXT, region_id integer, created_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(), updated_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(),password text);
ALTER TABLE "account" ADD CONSTRAINT "account_region_id_fkey" FOREIGN KEY ("region_id") REFERENCES "region" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
CREATE UNIQUE INDEX IF NOT EXISTS account_email_unique_key ON account(email);
CREATE UNIQUE INDEX IF NOT EXISTS account_identity_unique_key ON account(identity);
CREATE UNIQUE INDEX IF NOT EXISTS account_phone_number_unique_key ON account(phone_number);
-- rollback: DROP INDEX IF EXISTS account_phone_number_unique_key; DROP INDEX IF EXISTS account_identity_unique_key; DROP INDEX IF EXISTS account_email_unique_key; ALTER TABLE account DROP CONSTRAINT account_region_id_fkey; DROP TABLE account;

-- changeset hankchou:811
CREATE TABLE IF NOT EXISTS "auth_token"(id SERIAL NOT NULL PRIMARY KEY,created_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(),updated_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(),device_id TEXT,access_token TEXT, is_valid BOOLEAN DEFAULT TRUE NOT NULL, identity TEXT NOT NULL);
CREATE INDEX IF NOT EXISTS auth_token_device_id_access_token_key ON auth_token(device_id, access_token) WHERE is_valid IS TRUE;
CREATE INDEX IF NOT EXISTS auth_token_identity_key ON auth_token(identity);
-- rollback: DROP INDEX IF EXISTS auth_token_identity_key; DROP INDEX IF EXISTS auth_token_device_id_access_token_key; DROP TABLE auth_token;

-- changeset hankchou:812
CREATE TABLE IF NOT EXISTS "auth_social_login"(id SERIAL NOT NULL PRIMARY KEY, user_identifier TEXT, identity TEXT, extra_info JSONB, type TEXT,created_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(),updated_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW());
CREATE UNIQUE INDEX IF NOT EXISTS auth_social_login_user_identifier_key ON auth_social_login(user_identifier, type);
-- rollback: DROP INDEX IF EXISTS auth_social_login_user_identifier_key; DROP TABLE auth_social_login;

-- changeset hankchou:813
CREATE TABLE IF NOT EXISTS "auth_session"(id SERIAL NOT NULL PRIMARY KEY,identity TEXT, is_persistent BOOLEAN, created_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(), updated_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(),uid BYTEA);
CREATE INDEX IF NOT EXISTS auth_session_uid_key ON auth_session(uid);
-- rollback: DROP INDEX IF EXISTS auth_session_uid_key; DROP TABLE auth_session;

-- changeset angelchang:746
ALTER TABLE "toolbox_program_user_connect" ADD CONSTRAINT "toolbox_program_user_connect_clinic_subscription_id_fkey" FOREIGN KEY ("clinic_subscription_id") REFERENCES "clinic_subscription" ("id") ON UPDATE NO ACTION ON DELETE CASCADE;
-- rollback: ALTER TABLE toolbox_program_user_connect DROP CONSTRAINT toolbox_program_user_connect_clinic_subscription_id_fkey;

-- changeset angelchang:747
ALTER TABLE "toolbox_program_user_connect" ADD CONSTRAINT "toolbox_program_user_connect_toolbox_program_id_fkey" FOREIGN KEY ("toolbox_program_id") REFERENCES "toolbox_program" ("id") ON UPDATE NO ACTION ON DELETE CASCADE;
-- rollback: ALTER TABLE toolbox_program_user_connect DROP CONSTRAINT toolbox_program_user_connect_toolbox_program_id_fkey;

-- changeset angelchang:748
ALTER TABLE "toolbox_program_user_connect" ADD CONSTRAINT "toolbox_program_user_connect_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE CASCADE;
-- rollback: ALTER TABLE toolbox_program_user_connect DROP CONSTRAINT toolbox_program_user_connect_user_id_fkey;

-- changeset angelchang:749
ALTER TABLE "toolbox_schedule" ADD CONSTRAINT "toolbox_schedule_toolbox_message_group_id_fkey" FOREIGN KEY ("toolbox_message_group_id") REFERENCES "toolbox_message_group" ("id") ON UPDATE NO ACTION ON DELETE CASCADE;
-- rollback: ALTER TABLE toolbox_schedule DROP CONSTRAINT toolbox_schedule_toolbox_message_group_id_fkey;

-- changeset angelchang:750
ALTER TABLE "toolbox_schedule" ADD CONSTRAINT "toolbox_schedule_toolbox_message_id_fkey" FOREIGN KEY ("toolbox_message_id") REFERENCES "toolbox_message" ("id") ON UPDATE NO ACTION ON DELETE CASCADE;
-- rollback: ALTER TABLE toolbox_schedule DROP CONSTRAINT toolbox_schedule_toolbox_message_id_fkey;

-- changeset angelchang:751
ALTER TABLE "toolbox_schedule" ADD CONSTRAINT "toolbox_schedule_toolbox_program_id_fkey" FOREIGN KEY ("toolbox_program_id") REFERENCES "toolbox_program" ("id") ON UPDATE NO ACTION ON DELETE CASCADE;
-- rollback: ALTER TABLE toolbox_schedule DROP CONSTRAINT toolbox_schedule_toolbox_program_id_fkey;

-- changeset angelchang:752
ALTER TABLE "toolbox_toolbars_permission" ADD CONSTRAINT "toolbox_toolbars_permission_toolbox_producer_id_fk" FOREIGN KEY ("producer_id") REFERENCES "toolbox_producer" ("id") ON UPDATE NO ACTION ON DELETE NO ACTION;
-- rollback: ALTER TABLE toolbox_toolbars_permission DROP CONSTRAINT toolbox_toolbars_permission_toolbox_producer_id_fk;

-- changeset angelchang:753
ALTER TABLE "toolbox_toolbars_permission" ADD CONSTRAINT "toolbox_toolbars_permission_toolbox_toolbars_id_fk" FOREIGN KEY ("toolbar_id") REFERENCES "toolbox_toolbars" ("id") ON UPDATE NO ACTION ON DELETE NO ACTION;
-- rollback: ALTER TABLE toolbox_toolbars_permission DROP CONSTRAINT toolbox_toolbars_permission_toolbox_toolbars_id_fk;

-- changeset angelchang:754
ALTER TABLE "user_a1c" ADD CONSTRAINT "user_a1c_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_a1c DROP CONSTRAINT user_a1c_user_id_fkey;

-- changeset angelchang:755
ALTER TABLE "user_analysis" ADD CONSTRAINT "user_analysis_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_analysis DROP CONSTRAINT user_analysis_user_id_fkey;

-- changeset angelchang:756
ALTER TABLE "user_cache" ADD CONSTRAINT "user_cache_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_cache DROP CONSTRAINT user_cache_user_id_fkey;

-- changeset angelchang:757
ALTER TABLE "user_consent_document" ADD CONSTRAINT "user_consent_document_clinic_id_fkey" FOREIGN KEY ("clinic_id") REFERENCES "clinic" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_consent_document DROP CONSTRAINT user_consent_document_clinic_id_fkey;

-- changeset angelchang:758
ALTER TABLE "user_consent_document" ADD CONSTRAINT "user_consent_document_country_id_fkey" FOREIGN KEY ("country_id") REFERENCES "country" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_consent_document DROP CONSTRAINT user_consent_document_country_id_fkey;

-- changeset angelchang:759
ALTER TABLE "user_consent_history" ADD CONSTRAINT "user_consent_history_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_consent_history DROP CONSTRAINT user_consent_history_user_id_fkey;

-- changeset angelchang:760
ALTER TABLE "user_daily_routine" ADD CONSTRAINT "user_daily_routine_care_connect_id_fkey" FOREIGN KEY ("care_connect_id") REFERENCES "care_connect" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_daily_routine DROP CONSTRAINT user_daily_routine_care_connect_id_fkey;

-- changeset angelchang:761
ALTER TABLE "user_daily_routine" ADD CONSTRAINT "user_daily_routine_created_by_fkey" FOREIGN KEY ("created_by") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_daily_routine DROP CONSTRAINT user_daily_routine_created_by_fkey;

-- changeset angelchang:762
ALTER TABLE "user_daily_routine" ADD CONSTRAINT "user_daily_routine_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_daily_routine DROP CONSTRAINT user_daily_routine_user_id_fkey;

-- changeset angelchang:763
ALTER TABLE "user_exam_unit" ADD CONSTRAINT "user_exam_unit_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE CASCADE;
-- rollback: ALTER TABLE user_exam_unit DROP CONSTRAINT user_exam_unit_user_id_fkey;

-- changeset angelchang:764
ALTER TABLE "user_icd_code" ADD CONSTRAINT "user_icd_code_emr_record_id_fkey" FOREIGN KEY ("emr_record_id") REFERENCES "emr_record" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_icd_code DROP CONSTRAINT user_icd_code_emr_record_id_fkey;

-- changeset angelchang:765
ALTER TABLE "user_measurement_plan" ADD CONSTRAINT "user_measurement_plan_care_connect_id_fkey" FOREIGN KEY ("care_connect_id") REFERENCES "care_connect" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_measurement_plan DROP CONSTRAINT user_measurement_plan_care_connect_id_fkey;

-- changeset angelchang:766
ALTER TABLE "user_measurement_plan" ADD CONSTRAINT "user_measurement_plan_created_by_fkey" FOREIGN KEY ("created_by") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_measurement_plan DROP CONSTRAINT user_measurement_plan_created_by_fkey;

-- changeset angelchang:767
ALTER TABLE "user_measurement_plan" ADD CONSTRAINT "user_measurement_plan_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_measurement_plan DROP CONSTRAINT user_measurement_plan_user_id_fkey;

-- changeset angelchang:768
ALTER TABLE "user_meter" ADD CONSTRAINT "user_meter_meter_id_fkey" FOREIGN KEY ("meter_id") REFERENCES "meter" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_meter DROP CONSTRAINT user_meter_meter_id_fkey;

-- changeset angelchang:769
ALTER TABLE "user_meter" ADD CONSTRAINT "user_meter_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_meter DROP CONSTRAINT user_meter_user_id_fkey;

-- changeset angelchang:770
ALTER TABLE "user_nhi_p_code" ADD CONSTRAINT "user_nhi_p_code_emr_record_id_fkey" FOREIGN KEY ("emr_record_id") REFERENCES "emr_record" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_nhi_p_code DROP CONSTRAINT user_nhi_p_code_emr_record_id_fkey;

-- changeset angelchang:771
ALTER TABLE "user_notification_token" ADD CONSTRAINT "user_notification_token_user_token_id_fkey" FOREIGN KEY ("user_token_id") REFERENCES "user_token" ("id") ON UPDATE NO ACTION ON DELETE SET NULL;
-- rollback: ALTER TABLE user_notification_token DROP CONSTRAINT user_notification_token_user_token_id_fkey;

-- changeset angelchang:772
ALTER TABLE "user_picture" ADD CONSTRAINT "user_picture_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_picture DROP CONSTRAINT user_picture_user_id_fkey;

-- changeset angelchang:773
ALTER TABLE "user_pref" ADD CONSTRAINT "user_pref_care_connect_id_fkey" FOREIGN KEY ("care_connect_id") REFERENCES "care_connect" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_pref DROP CONSTRAINT user_pref_care_connect_id_fkey;

-- changeset angelchang:774
ALTER TABLE "user_pref" ADD CONSTRAINT "user_pref_created_by_fkey" FOREIGN KEY ("created_by") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_pref DROP CONSTRAINT user_pref_created_by_fkey;

-- changeset angelchang:775
ALTER TABLE "user_pref" ADD CONSTRAINT "user_pref_meter_id_fkey" FOREIGN KEY ("meter_id") REFERENCES "meter" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_pref DROP CONSTRAINT user_pref_meter_id_fkey;

-- changeset angelchang:776
ALTER TABLE "user_pref" ADD CONSTRAINT "user_pref_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_pref DROP CONSTRAINT user_pref_user_id_fkey;

-- changeset angelchang:777
ALTER TABLE "user_prescription" ADD CONSTRAINT "user_prescription_clinic_id_fkey" FOREIGN KEY ("clinic_id") REFERENCES "clinic" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_prescription DROP CONSTRAINT user_prescription_clinic_id_fkey;

-- changeset angelchang:778
ALTER TABLE "user_prescription" ADD CONSTRAINT "user_prescription_clinic_prescription_id_fkey" FOREIGN KEY ("clinic_prescription_id") REFERENCES "clinic_prescription" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_prescription DROP CONSTRAINT user_prescription_clinic_prescription_id_fkey;

-- changeset angelchang:779
ALTER TABLE "user_prescription" ADD CONSTRAINT "user_prescription_nhi_record_id_fkey" FOREIGN KEY ("nhi_record_id") REFERENCES "nhi_record" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_prescription DROP CONSTRAINT user_prescription_nhi_record_id_fkey;

-- changeset angelchang:780
ALTER TABLE "user_prescription_qr_code" ADD CONSTRAINT "user_prescription_qr_code_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_prescription_qr_code DROP CONSTRAINT user_prescription_qr_code_user_id_fkey;

-- changeset angelchang:781
ALTER TABLE "user_prescription" ADD CONSTRAINT "user_prescription_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_prescription DROP CONSTRAINT user_prescription_user_id_fkey;

-- changeset angelchang:782
ALTER TABLE "user_prescription" ADD CONSTRAINT "user_prescription_user_prescription_qr_code_id_fkey" FOREIGN KEY ("user_prescription_qr_code_id") REFERENCES "user_prescription_qr_code" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_prescription DROP CONSTRAINT user_prescription_user_prescription_qr_code_id_fkey;

-- changeset angelchang:783
ALTER TABLE "user_stream" ADD CONSTRAINT "user_stream_clinic_id_fkey" FOREIGN KEY ("clinic_id") REFERENCES "clinic" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_stream DROP CONSTRAINT user_stream_clinic_id_fkey;

-- changeset angelchang:784
ALTER TABLE "user_stream" ADD CONSTRAINT "user_stream_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_stream DROP CONSTRAINT user_stream_user_id_fkey;

-- changeset angelchang:785
ALTER TABLE "user_stripe" ADD CONSTRAINT "user_stripe_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_stripe DROP CONSTRAINT user_stripe_user_id_fkey;

-- changeset angelchang:786
ALTER TABLE "user_token" ADD CONSTRAINT "user_token_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_token DROP CONSTRAINT user_token_user_id_fkey;

-- changeset angelchang:787
ALTER TABLE "warp_session" ADD CONSTRAINT "warp_session_avatar_id_fkey" FOREIGN KEY ("avatar_id") REFERENCES "warp_avatar" ("id") ON UPDATE NO ACTION ON DELETE CASCADE;
-- rollback: ALTER TABLE warp_session DROP CONSTRAINT warp_session_avatar_id_fkey;

-- changeset angelchang:788
ALTER TABLE "web_session" ADD CONSTRAINT "web_session_avatar_id_fkey" FOREIGN KEY ("avatar_id") REFERENCES "warp_avatar" ("id") ON UPDATE NO ACTION ON DELETE CASCADE;
-- rollback: ALTER TABLE web_session DROP CONSTRAINT web_session_avatar_id_fkey;

-- changeset angelchang:789
CREATE INDEX IF NOT EXISTS "idx_diary_user_id_recorded_at_with_weight" ON "diary" USING btree (user_id, recorded_at) WHERE (weight >= '0'::numeric);
-- rollback: DROP INDEX idx_diary_user_id_recorded_at_with_weight;

-- changeset angelchang:790
CREATE INDEX IF NOT EXISTS "idx_diary_batch_record_batch_uuid" ON "diary_batch_record" USING btree (batch_uuid);
-- rollback: DROP INDEX idx_diary_batch_record_batch_uuid;

-- changeset angelchang:791
CREATE INDEX IF NOT EXISTS "idx_program_lifecycle_event_user_id" ON "hl_cgm_message_event" USING btree (user_id);
-- rollback: DROP INDEX idx_program_lifecycle_event_user_id;

-- changeset angelchang:792
CREATE INDEX IF NOT EXISTS "idx_user_pref_user_id" ON "user_pref" USING btree (user_id);
-- rollback: DROP INDEX idx_user_pref_user_id;

-- changeset hankchou:793
CREATE TABLE IF NOT EXISTS "user_change_history" ("id" INTEGER GENERATED BY DEFAULT AS IDENTITY NOT NULL, "created_at" TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(), "updated_at" TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(), "origin_data" TEXT, "changed_data" TEXT, "change_type" TEXT, "user_id" INTEGER, CONSTRAINT "user_change_history_pkey" PRIMARY KEY ("id"));
-- rollback: DROP TABLE user_change_history;

-- changeset hankchou:794
ALTER TABLE "user_change_history" ADD CONSTRAINT "user_change_history_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_change_history DROP CONSTRAINT user_change_history_user_id_fkey;

-- changeset tonyko:795
CREATE TABLE IF NOT EXISTS "toolbox_analysis_base"( id SERIAL NOT NULL PRIMARY KEY, producer_id INTEGER NOT NULL REFERENCES toolbox_producer(id), toolbox_schedule_id INTEGER REFERENCES toolbox_schedule(id) ON DELETE CASCADE, name TEXT NOT NULL, fields JSONB[] NOT NULL DEFAULT '{}', end_repeat bool NOT NULL DEFAULT false, created_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(), updated_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(), deleted_at TIMESTAMP WITHOUT TIME ZONE);
CREATE UNIQUE INDEX IF NOT EXISTS toolbox_analysis_base_producer_id_name_key ON toolbox_analysis_base(producer_id, name) WHERE deleted_at IS NULL;
-- rollback: DROP INDEX IF EXISTS toolbox_analysis_base_producer_id_name_key; DROP TABLE IF EXISTS toolbox_analysis_base;

-- changeset tonyko:796
CREATE TABLE IF NOT EXISTS "toolbox_analysis"( id SERIAL NOT NULL PRIMARY KEY, toolbox_analysis_base_id INTEGER REFERENCES toolbox_analysis_base(id) ON DELETE CASCADE, toolbox_message_id INTEGER REFERENCES toolbox_message(id) ON DELETE RESTRICT, toolbox_message_group_id INTEGER REFERENCES toolbox_message_group(id), conditions JSONB[] NOT NULL DEFAULT '{}', seq INTEGER NOT NULL DEFAULT 0, created_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(), updated_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(), deleted_at TIMESTAMP WITHOUT TIME ZONE);
CREATE UNIQUE INDEX IF NOT EXISTS toolbox_analysis_base_id_seq_key ON toolbox_analysis(toolbox_analysis_base_id, seq ASC) WHERE deleted_at IS NULL;
-- rollback: DROP INDEX IF EXISTS toolbox_analysis_base_id_seq_key; DROP TABLE IF EXISTS toolbox_analysis;

-- changeset tonyko:797
ALTER TABLE IF EXISTS toolbox_analysis_base DROP COLUMN fields, ADD COLUMN fields JSONB NOT NULL DEFAULT '[]';
ALTER TABLE IF EXISTS toolbox_analysis DROP COLUMN conditions, ADD COLUMN conditions JSONB NOT NULL DEFAULT '[]';
-- rollback: DROP INDEX IF EXISTS toolbox_analysis_base_id_seq_key; DROP TABLE IF EXISTS toolbox_analysis;

-- changeset anguswang:798
ALTER TABLE country ADD COLUMN IF NOT EXISTS default_identifier TEXT;
ALTER TABLE country RENAME COLUMN is_admin TO allow_create_clinic;
-- rollback: ALTER TABLE country DROP COLUMN IF EXISTS default_identifier;

-- changeset tonyko:799
DROP INDEX IF EXISTS toolbox_analysis_base_producer_id_name_key;
-- rollback: CREATE UNIQUE INDEX IF NOT EXISTS toolbox_analysis_base_producer_id_name_key ON toolbox_analysis_base(producer_id, name) WHERE deleted_at IS NULL;

-- changeset angelchang:800
CREATE TABLE IF NOT EXISTS "food_ai_record" (id SERIAL NOT NULL PRIMARY KEY,user_id INTEGER NOT NULL,satisfaction_review BOOLEAN DEFAULT NULL,has_results BOOLEAN DEFAULT FALSE,url TEXT DEFAULT NULL,results TEXT DEFAULT '[]',created_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(),updated_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW());
ALTER TABLE "food_ai_record" ADD CONSTRAINT "food_ai_record_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE food_ai_record DROP CONSTRAINT food_ai_record_user_id_fkey; DROP TABLE food_ai_record;

--changeset angelchang:801
alter table food_ai_record alter column has_results set not null;
alter table food_ai_record alter column results drop default;
alter table food_ai_record alter column results type jsonb using results::jsonb;
alter table food_ai_record alter column results set not null;
alter table food_ai_record alter column results set default '[]'::jsonb;

-- changeset tonyko:802
ALTER TABLE toolbox_analysis ADD COLUMN IF NOT EXISTS end_repeat bool NOT NULL DEFAULT false, ADD COLUMN IF NOT EXISTS is_default bool NOT NULL DEFAULT false;
-- rollback: ALTER TABLE toolbox_analysis DROP COLUMN IF EXISTS end_repeat, DROP COLUMN IF EXISTS is_default;

--changeset anguswang:803
CREATE TABLE IF NOT EXISTS "sanofi_survey" (id SERIAL NOT NULL PRIMARY KEY, user_id INTEGER NOT NULL,
clinic_id INTEGER NOT NULL,governorate INTEGER NOT NULL, city VARCHAR NOT NULL, district VARCHAR NOT NULL,
created_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(), updated_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW());
-- rollback: DROP TABLE sanofi_survey;

--changeset schneeruan:804
ALTER TABLE premium_report_history ADD COLUMN IF NOT EXISTS status_code INTEGER;
-- rollback: ALTER TABLE premium_report_history DROP COLUMN IF EXISTS status_code;

--changeset tonyko:805
  ALTER TABLE toolbox_message ADD COLUMN IF NOT EXISTS m_type TEXT NOT NULL DEFAULT 'static', ADD COLUMN IF NOT EXISTS d_types TEXT[] NOT NULL DEFAULT '{}'; CREATE INDEX IF NOT EXISTS ix_toolbox_message_producer_m_type on toolbox_message(producer_id, m_type);
-- rollback: DROP INDEX IF EXISTS ix_toolbox_message_producer_m_type; ALTER TABLE toolbox_message DROP COLUMN IF EXISTS m_type, DROP COLUMN IF EXISTS d_types;

-- changeset angelchang:806
CREATE UNIQUE INDEX IF NOT EXISTS "idx_unique_clinic_mark_clinic_id_user_id" ON "clinic_mark" ("clinic_id", "user_id");
-- rollback: DROP INDEX IF EXISTS idx_unique_clinic_mark_clinic_id_user_id;

-- changeset anguswang:807
ALTER Table user_exam_unit ALTER COLUMN cortisol SET DEFAULT 'μg/dL', ALTER COLUMN tsh SET DEFAULT 'μIU/mL', ALTER COLUMN iron SET DEFAULT 'μg/dL', ALTER COLUMN tibc SET DEFAULT 'μg/dL', ALTER COLUMN t4_thyroxine SET DEFAULT 'μg/dL'; ALTER Table clinic_exam_unit ALTER COLUMN cortisol SET DEFAULT 'μg/dL', ALTER COLUMN tsh SET DEFAULT 'μIU/mL', ALTER COLUMN iron SET DEFAULT 'μg/dL', ALTER COLUMN tibc SET DEFAULT 'μg/dL', ALTER COLUMN t4_thyroxine SET DEFAULT 'μg/dL';
-- rollback: ALTER Table user_exam_unit ALTER COLUMN cortisol SET DEFAULT 'µg/dL', ALTER COLUMN tsh SET DEFAULT 'µIU/mL', ALTER COLUMN iron SET DEFAULT 'µg/dL', ALTER COLUMN tibc SET DEFAULT 'µg/dL', ALTER COLUMN t4_thyroxine SET DEFAULT 'µg/dL'; ALTER Table clinic_exam_unit ALTER COLUMN cortisol SET DEFAULT 'µg/dL', ALTER COLUMN tsh SET DEFAULT 'µIU/mL', ALTER COLUMN iron SET DEFAULT 'µg/dL', ALTER COLUMN tibc SET DEFAULT 'µg/dL', ALTER COLUMN t4_thyroxine SET DEFAULT 'µg/dL';

-- changeset angelchang:808
DROP INDEX IF EXISTS idx_user_exam_unit_user_id;
CREATE UNIQUE INDEX IF NOT EXISTS idx_unique_user_exam_unit_user_id ON user_exam_unit(user_id);
-- rollback: DROP INDEX IF EXISTS idx_unique_user_exam_unit_user_id; CREATE INDEX IF NOT EXISTS "idx_user_exam_unit_user_id" ON "user_exam_unit"("user_id");

-- changeset hankchou:809
CREATE TABLE IF NOT EXISTS "region"(id SERIAL NOT NULL PRIMARY KEY, iso_code TEXT);
-- rollback: DROP TABLE region;

-- changeset hankchou:810
CREATE TABLE IF NOT EXISTS "account"(id SERIAL NOT NULL PRIMARY KEY, phone_number TEXT, email TEXT, identity TEXT, region_id integer, created_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(), updated_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(),password text);
ALTER TABLE "account" ADD CONSTRAINT "account_region_id_fkey" FOREIGN KEY ("region_id") REFERENCES "region" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
CREATE UNIQUE INDEX IF NOT EXISTS account_email_unique_key ON account(email);
CREATE UNIQUE INDEX IF NOT EXISTS account_identity_unique_key ON account(identity);
CREATE UNIQUE INDEX IF NOT EXISTS account_phone_number_unique_key ON account(phone_number);
-- rollback: DROP INDEX IF EXISTS account_phone_number_unique_key; DROP INDEX IF EXISTS account_identity_unique_key; DROP INDEX IF EXISTS account_email_unique_key; ALTER TABLE account DROP CONSTRAINT account_region_id_fkey; DROP TABLE account;

-- changeset hankchou:811
CREATE TABLE IF NOT EXISTS "auth_token"(id SERIAL NOT NULL PRIMARY KEY,created_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(),updated_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(),device_id TEXT,access_token TEXT, is_valid BOOLEAN DEFAULT TRUE NOT NULL, identity TEXT NOT NULL);
CREATE INDEX IF NOT EXISTS auth_token_device_id_access_token_key ON auth_token(device_id, access_token) WHERE is_valid IS TRUE;
CREATE INDEX IF NOT EXISTS auth_token_identity_key ON auth_token(identity);
-- rollback: DROP INDEX IF EXISTS auth_token_identity_key; DROP INDEX IF EXISTS auth_token_device_id_access_token_key; DROP TABLE auth_token;

-- changeset hankchou:812
CREATE TABLE IF NOT EXISTS "auth_social_login"(id SERIAL NOT NULL PRIMARY KEY, user_identifier TEXT, identity TEXT, extra_info JSONB, type TEXT,created_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(),updated_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW());
CREATE UNIQUE INDEX IF NOT EXISTS auth_social_login_user_identifier_key ON auth_social_login(user_identifier, type);
-- rollback: DROP INDEX IF EXISTS auth_social_login_user_identifier_key; DROP TABLE auth_social_login;


-- changeset angelchang:746
ALTER TABLE "toolbox_program_user_connect" ADD CONSTRAINT "toolbox_program_user_connect_clinic_subscription_id_fkey" FOREIGN KEY ("clinic_subscription_id") REFERENCES "clinic_subscription" ("id") ON UPDATE NO ACTION ON DELETE CASCADE;
-- rollback: ALTER TABLE toolbox_program_user_connect DROP CONSTRAINT toolbox_program_user_connect_clinic_subscription_id_fkey;

-- changeset angelchang:747
ALTER TABLE "toolbox_program_user_connect" ADD CONSTRAINT "toolbox_program_user_connect_toolbox_program_id_fkey" FOREIGN KEY ("toolbox_program_id") REFERENCES "toolbox_program" ("id") ON UPDATE NO ACTION ON DELETE CASCADE;
-- rollback: ALTER TABLE toolbox_program_user_connect DROP CONSTRAINT toolbox_program_user_connect_toolbox_program_id_fkey;

-- changeset angelchang:748
ALTER TABLE "toolbox_program_user_connect" ADD CONSTRAINT "toolbox_program_user_connect_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE CASCADE;
-- rollback: ALTER TABLE toolbox_program_user_connect DROP CONSTRAINT toolbox_program_user_connect_user_id_fkey;

-- changeset angelchang:749
ALTER TABLE "toolbox_schedule" ADD CONSTRAINT "toolbox_schedule_toolbox_message_group_id_fkey" FOREIGN KEY ("toolbox_message_group_id") REFERENCES "toolbox_message_group" ("id") ON UPDATE NO ACTION ON DELETE CASCADE;
-- rollback: ALTER TABLE toolbox_schedule DROP CONSTRAINT toolbox_schedule_toolbox_message_group_id_fkey;

-- changeset angelchang:750
ALTER TABLE "toolbox_schedule" ADD CONSTRAINT "toolbox_schedule_toolbox_message_id_fkey" FOREIGN KEY ("toolbox_message_id") REFERENCES "toolbox_message" ("id") ON UPDATE NO ACTION ON DELETE CASCADE;
-- rollback: ALTER TABLE toolbox_schedule DROP CONSTRAINT toolbox_schedule_toolbox_message_id_fkey;

-- changeset angelchang:751
ALTER TABLE "toolbox_schedule" ADD CONSTRAINT "toolbox_schedule_toolbox_program_id_fkey" FOREIGN KEY ("toolbox_program_id") REFERENCES "toolbox_program" ("id") ON UPDATE NO ACTION ON DELETE CASCADE;
-- rollback: ALTER TABLE toolbox_schedule DROP CONSTRAINT toolbox_schedule_toolbox_program_id_fkey;

-- changeset angelchang:752
ALTER TABLE "toolbox_toolbars_permission" ADD CONSTRAINT "toolbox_toolbars_permission_toolbox_producer_id_fk" FOREIGN KEY ("producer_id") REFERENCES "toolbox_producer" ("id") ON UPDATE NO ACTION ON DELETE NO ACTION;
-- rollback: ALTER TABLE toolbox_toolbars_permission DROP CONSTRAINT toolbox_toolbars_permission_toolbox_producer_id_fk;

-- changeset angelchang:753
ALTER TABLE "toolbox_toolbars_permission" ADD CONSTRAINT "toolbox_toolbars_permission_toolbox_toolbars_id_fk" FOREIGN KEY ("toolbar_id") REFERENCES "toolbox_toolbars" ("id") ON UPDATE NO ACTION ON DELETE NO ACTION;
-- rollback: ALTER TABLE toolbox_toolbars_permission DROP CONSTRAINT toolbox_toolbars_permission_toolbox_toolbars_id_fk;

-- changeset angelchang:754
ALTER TABLE "user_a1c" ADD CONSTRAINT "user_a1c_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_a1c DROP CONSTRAINT user_a1c_user_id_fkey;

-- changeset angelchang:755
ALTER TABLE "user_analysis" ADD CONSTRAINT "user_analysis_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_analysis DROP CONSTRAINT user_analysis_user_id_fkey;

-- changeset angelchang:756
ALTER TABLE "user_cache" ADD CONSTRAINT "user_cache_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_cache DROP CONSTRAINT user_cache_user_id_fkey;

-- changeset angelchang:757
ALTER TABLE "user_consent_document" ADD CONSTRAINT "user_consent_document_clinic_id_fkey" FOREIGN KEY ("clinic_id") REFERENCES "clinic" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_consent_document DROP CONSTRAINT user_consent_document_clinic_id_fkey;

-- changeset angelchang:758
ALTER TABLE "user_consent_document" ADD CONSTRAINT "user_consent_document_country_id_fkey" FOREIGN KEY ("country_id") REFERENCES "country" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_consent_document DROP CONSTRAINT user_consent_document_country_id_fkey;

-- changeset angelchang:759
ALTER TABLE "user_consent_history" ADD CONSTRAINT "user_consent_history_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_consent_history DROP CONSTRAINT user_consent_history_user_id_fkey;

-- changeset angelchang:760
ALTER TABLE "user_daily_routine" ADD CONSTRAINT "user_daily_routine_care_connect_id_fkey" FOREIGN KEY ("care_connect_id") REFERENCES "care_connect" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_daily_routine DROP CONSTRAINT user_daily_routine_care_connect_id_fkey;

-- changeset angelchang:761
ALTER TABLE "user_daily_routine" ADD CONSTRAINT "user_daily_routine_created_by_fkey" FOREIGN KEY ("created_by") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_daily_routine DROP CONSTRAINT user_daily_routine_created_by_fkey;

-- changeset angelchang:762
ALTER TABLE "user_daily_routine" ADD CONSTRAINT "user_daily_routine_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_daily_routine DROP CONSTRAINT user_daily_routine_user_id_fkey;

-- changeset angelchang:763
ALTER TABLE "user_exam_unit" ADD CONSTRAINT "user_exam_unit_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE CASCADE;
-- rollback: ALTER TABLE user_exam_unit DROP CONSTRAINT user_exam_unit_user_id_fkey;

-- changeset angelchang:764
ALTER TABLE "user_icd_code" ADD CONSTRAINT "user_icd_code_emr_record_id_fkey" FOREIGN KEY ("emr_record_id") REFERENCES "emr_record" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_icd_code DROP CONSTRAINT user_icd_code_emr_record_id_fkey;

-- changeset angelchang:765
ALTER TABLE "user_measurement_plan" ADD CONSTRAINT "user_measurement_plan_care_connect_id_fkey" FOREIGN KEY ("care_connect_id") REFERENCES "care_connect" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_measurement_plan DROP CONSTRAINT user_measurement_plan_care_connect_id_fkey;

-- changeset angelchang:766
ALTER TABLE "user_measurement_plan" ADD CONSTRAINT "user_measurement_plan_created_by_fkey" FOREIGN KEY ("created_by") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_measurement_plan DROP CONSTRAINT user_measurement_plan_created_by_fkey;

-- changeset angelchang:767
ALTER TABLE "user_measurement_plan" ADD CONSTRAINT "user_measurement_plan_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_measurement_plan DROP CONSTRAINT user_measurement_plan_user_id_fkey;

-- changeset angelchang:768
ALTER TABLE "user_meter" ADD CONSTRAINT "user_meter_meter_id_fkey" FOREIGN KEY ("meter_id") REFERENCES "meter" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_meter DROP CONSTRAINT user_meter_meter_id_fkey;

-- changeset angelchang:769
ALTER TABLE "user_meter" ADD CONSTRAINT "user_meter_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_meter DROP CONSTRAINT user_meter_user_id_fkey;

-- changeset angelchang:770
ALTER TABLE "user_nhi_p_code" ADD CONSTRAINT "user_nhi_p_code_emr_record_id_fkey" FOREIGN KEY ("emr_record_id") REFERENCES "emr_record" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_nhi_p_code DROP CONSTRAINT user_nhi_p_code_emr_record_id_fkey;

-- changeset angelchang:771
ALTER TABLE "user_notification_token" ADD CONSTRAINT "user_notification_token_user_token_id_fkey" FOREIGN KEY ("user_token_id") REFERENCES "user_token" ("id") ON UPDATE NO ACTION ON DELETE SET NULL;
-- rollback: ALTER TABLE user_notification_token DROP CONSTRAINT user_notification_token_user_token_id_fkey;

-- changeset angelchang:772
ALTER TABLE "user_picture" ADD CONSTRAINT "user_picture_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_picture DROP CONSTRAINT user_picture_user_id_fkey;

-- changeset angelchang:773
ALTER TABLE "user_pref" ADD CONSTRAINT "user_pref_care_connect_id_fkey" FOREIGN KEY ("care_connect_id") REFERENCES "care_connect" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_pref DROP CONSTRAINT user_pref_care_connect_id_fkey;

-- changeset angelchang:774
ALTER TABLE "user_pref" ADD CONSTRAINT "user_pref_created_by_fkey" FOREIGN KEY ("created_by") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_pref DROP CONSTRAINT user_pref_created_by_fkey;

-- changeset angelchang:775
ALTER TABLE "user_pref" ADD CONSTRAINT "user_pref_meter_id_fkey" FOREIGN KEY ("meter_id") REFERENCES "meter" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_pref DROP CONSTRAINT user_pref_meter_id_fkey;

-- changeset angelchang:776
ALTER TABLE "user_pref" ADD CONSTRAINT "user_pref_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_pref DROP CONSTRAINT user_pref_user_id_fkey;

-- changeset angelchang:777
ALTER TABLE "user_prescription" ADD CONSTRAINT "user_prescription_clinic_id_fkey" FOREIGN KEY ("clinic_id") REFERENCES "clinic" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_prescription DROP CONSTRAINT user_prescription_clinic_id_fkey;

-- changeset angelchang:778
ALTER TABLE "user_prescription" ADD CONSTRAINT "user_prescription_clinic_prescription_id_fkey" FOREIGN KEY ("clinic_prescription_id") REFERENCES "clinic_prescription" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_prescription DROP CONSTRAINT user_prescription_clinic_prescription_id_fkey;

-- changeset angelchang:779
ALTER TABLE "user_prescription" ADD CONSTRAINT "user_prescription_nhi_record_id_fkey" FOREIGN KEY ("nhi_record_id") REFERENCES "nhi_record" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_prescription DROP CONSTRAINT user_prescription_nhi_record_id_fkey;

-- changeset angelchang:780
ALTER TABLE "user_prescription_qr_code" ADD CONSTRAINT "user_prescription_qr_code_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_prescription_qr_code DROP CONSTRAINT user_prescription_qr_code_user_id_fkey;

-- changeset angelchang:781
ALTER TABLE "user_prescription" ADD CONSTRAINT "user_prescription_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_prescription DROP CONSTRAINT user_prescription_user_id_fkey;

-- changeset angelchang:782
ALTER TABLE "user_prescription" ADD CONSTRAINT "user_prescription_user_prescription_qr_code_id_fkey" FOREIGN KEY ("user_prescription_qr_code_id") REFERENCES "user_prescription_qr_code" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_prescription DROP CONSTRAINT user_prescription_user_prescription_qr_code_id_fkey;

-- changeset angelchang:783
ALTER TABLE "user_stream" ADD CONSTRAINT "user_stream_clinic_id_fkey" FOREIGN KEY ("clinic_id") REFERENCES "clinic" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_stream DROP CONSTRAINT user_stream_clinic_id_fkey;

-- changeset angelchang:784
ALTER TABLE "user_stream" ADD CONSTRAINT "user_stream_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_stream DROP CONSTRAINT user_stream_user_id_fkey;

-- changeset angelchang:785
ALTER TABLE "user_stripe" ADD CONSTRAINT "user_stripe_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_stripe DROP CONSTRAINT user_stripe_user_id_fkey;

-- changeset angelchang:786
ALTER TABLE "user_token" ADD CONSTRAINT "user_token_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_token DROP CONSTRAINT user_token_user_id_fkey;

-- changeset angelchang:787
ALTER TABLE "warp_session" ADD CONSTRAINT "warp_session_avatar_id_fkey" FOREIGN KEY ("avatar_id") REFERENCES "warp_avatar" ("id") ON UPDATE NO ACTION ON DELETE CASCADE;
-- rollback: ALTER TABLE warp_session DROP CONSTRAINT warp_session_avatar_id_fkey;

-- changeset angelchang:788
ALTER TABLE "web_session" ADD CONSTRAINT "web_session_avatar_id_fkey" FOREIGN KEY ("avatar_id") REFERENCES "warp_avatar" ("id") ON UPDATE NO ACTION ON DELETE CASCADE;
-- rollback: ALTER TABLE web_session DROP CONSTRAINT web_session_avatar_id_fkey;

-- changeset angelchang:789
CREATE INDEX IF NOT EXISTS "idx_diary_user_id_recorded_at_with_weight" ON "diary" USING btree (user_id, recorded_at) WHERE (weight >= '0'::numeric);
-- rollback: DROP INDEX idx_diary_user_id_recorded_at_with_weight;

-- changeset angelchang:790
CREATE INDEX IF NOT EXISTS "idx_diary_batch_record_batch_uuid" ON "diary_batch_record" USING btree (batch_uuid);
-- rollback: DROP INDEX idx_diary_batch_record_batch_uuid;

-- changeset angelchang:791
CREATE INDEX IF NOT EXISTS "idx_program_lifecycle_event_user_id" ON "hl_cgm_message_event" USING btree (user_id);
-- rollback: DROP INDEX idx_program_lifecycle_event_user_id;

-- changeset angelchang:792
CREATE INDEX IF NOT EXISTS "idx_user_pref_user_id" ON "user_pref" USING btree (user_id);
-- rollback: DROP INDEX idx_user_pref_user_id;

-- changeset hankchou:793
CREATE TABLE IF NOT EXISTS "user_change_history" ("id" INTEGER GENERATED BY DEFAULT AS IDENTITY NOT NULL, "created_at" TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(), "updated_at" TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(), "origin_data" TEXT, "changed_data" TEXT, "change_type" TEXT, "user_id" INTEGER, CONSTRAINT "user_change_history_pkey" PRIMARY KEY ("id"));
-- rollback: DROP TABLE user_change_history;

-- changeset hankchou:794
ALTER TABLE "user_change_history" ADD CONSTRAINT "user_change_history_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE user_change_history DROP CONSTRAINT user_change_history_user_id_fkey;

-- changeset tonyko:795
CREATE TABLE IF NOT EXISTS "toolbox_analysis_base"( id SERIAL NOT NULL PRIMARY KEY, producer_id INTEGER NOT NULL REFERENCES toolbox_producer(id), toolbox_schedule_id INTEGER REFERENCES toolbox_schedule(id) ON DELETE CASCADE, name TEXT NOT NULL, fields JSONB[] NOT NULL DEFAULT '{}', end_repeat bool NOT NULL DEFAULT false, created_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(), updated_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(), deleted_at TIMESTAMP WITHOUT TIME ZONE);
CREATE UNIQUE INDEX IF NOT EXISTS toolbox_analysis_base_producer_id_name_key ON toolbox_analysis_base(producer_id, name) WHERE deleted_at IS NULL;
-- rollback: DROP INDEX IF EXISTS toolbox_analysis_base_producer_id_name_key; DROP TABLE IF EXISTS toolbox_analysis_base;

-- changeset tonyko:796
CREATE TABLE IF NOT EXISTS "toolbox_analysis"( id SERIAL NOT NULL PRIMARY KEY, toolbox_analysis_base_id INTEGER REFERENCES toolbox_analysis_base(id) ON DELETE CASCADE, toolbox_message_id INTEGER REFERENCES toolbox_message(id) ON DELETE RESTRICT, toolbox_message_group_id INTEGER REFERENCES toolbox_message_group(id), conditions JSONB[] NOT NULL DEFAULT '{}', seq INTEGER NOT NULL DEFAULT 0, created_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(), updated_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(), deleted_at TIMESTAMP WITHOUT TIME ZONE);
CREATE UNIQUE INDEX IF NOT EXISTS toolbox_analysis_base_id_seq_key ON toolbox_analysis(toolbox_analysis_base_id, seq ASC) WHERE deleted_at IS NULL;
-- rollback: DROP INDEX IF EXISTS toolbox_analysis_base_id_seq_key; DROP TABLE IF EXISTS toolbox_analysis;

-- changeset tonyko:797
ALTER TABLE IF EXISTS toolbox_analysis_base DROP COLUMN fields, ADD COLUMN fields JSONB NOT NULL DEFAULT '[]';
ALTER TABLE IF EXISTS toolbox_analysis DROP COLUMN conditions, ADD COLUMN conditions JSONB NOT NULL DEFAULT '[]';
-- rollback: DROP INDEX IF EXISTS toolbox_analysis_base_id_seq_key; DROP TABLE IF EXISTS toolbox_analysis;

-- changeset anguswang:798
ALTER TABLE country ADD COLUMN IF NOT EXISTS default_identifier TEXT;
ALTER TABLE country RENAME COLUMN is_admin TO allow_create_clinic;
-- rollback: ALTER TABLE country DROP COLUMN IF EXISTS default_identifier;

-- changeset tonyko:799
DROP INDEX IF EXISTS toolbox_analysis_base_producer_id_name_key;
-- rollback: CREATE UNIQUE INDEX IF NOT EXISTS toolbox_analysis_base_producer_id_name_key ON toolbox_analysis_base(producer_id, name) WHERE deleted_at IS NULL;

-- changeset angelchang:800
CREATE TABLE IF NOT EXISTS "food_ai_record" (id SERIAL NOT NULL PRIMARY KEY,user_id INTEGER NOT NULL,satisfaction_review BOOLEAN DEFAULT NULL,has_results BOOLEAN DEFAULT FALSE,url TEXT DEFAULT NULL,results TEXT DEFAULT '[]',created_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(),updated_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW());
ALTER TABLE "food_ai_record" ADD CONSTRAINT "food_ai_record_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "health_user" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
-- rollback: ALTER TABLE food_ai_record DROP CONSTRAINT food_ai_record_user_id_fkey; DROP TABLE food_ai_record;

--changeset angelchang:801
alter table food_ai_record alter column has_results set not null;
alter table food_ai_record alter column results drop default;
alter table food_ai_record alter column results type jsonb using results::jsonb;
alter table food_ai_record alter column results set not null;
alter table food_ai_record alter column results set default '[]'::jsonb;

-- changeset tonyko:802
ALTER TABLE toolbox_analysis ADD COLUMN IF NOT EXISTS end_repeat bool NOT NULL DEFAULT false, ADD COLUMN IF NOT EXISTS is_default bool NOT NULL DEFAULT false;
-- rollback: ALTER TABLE toolbox_analysis DROP COLUMN IF EXISTS end_repeat, DROP COLUMN IF EXISTS is_default;

--changeset anguswang:803
CREATE TABLE IF NOT EXISTS "sanofi_survey" (id SERIAL NOT NULL PRIMARY KEY, user_id INTEGER NOT NULL,
clinic_id INTEGER NOT NULL,governorate INTEGER NOT NULL, city VARCHAR NOT NULL, district VARCHAR NOT NULL,
created_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(), updated_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW());
-- rollback: DROP TABLE sanofi_survey;

--changeset schneeruan:804
ALTER TABLE premium_report_history ADD COLUMN IF NOT EXISTS status_code INTEGER;
-- rollback: ALTER TABLE premium_report_history DROP COLUMN IF EXISTS status_code;

--changeset tonyko:805
  ALTER TABLE toolbox_message ADD COLUMN IF NOT EXISTS m_type TEXT NOT NULL DEFAULT 'static', ADD COLUMN IF NOT EXISTS d_types TEXT[] NOT NULL DEFAULT '{}'; CREATE INDEX IF NOT EXISTS ix_toolbox_message_producer_m_type on toolbox_message(producer_id, m_type);
-- rollback: DROP INDEX IF EXISTS ix_toolbox_message_producer_m_type; ALTER TABLE toolbox_message DROP COLUMN IF EXISTS m_type, DROP COLUMN IF EXISTS d_types;

-- changeset angelchang:806
CREATE UNIQUE INDEX IF NOT EXISTS "idx_unique_clinic_mark_clinic_id_user_id" ON "clinic_mark" ("clinic_id", "user_id");
-- rollback: DROP INDEX IF EXISTS idx_unique_clinic_mark_clinic_id_user_id;

-- changeset anguswang:807
ALTER Table user_exam_unit ALTER COLUMN cortisol SET DEFAULT 'μg/dL', ALTER COLUMN tsh SET DEFAULT 'μIU/mL', ALTER COLUMN iron SET DEFAULT 'μg/dL', ALTER COLUMN tibc SET DEFAULT 'μg/dL', ALTER COLUMN t4_thyroxine SET DEFAULT 'μg/dL'; ALTER Table clinic_exam_unit ALTER COLUMN cortisol SET DEFAULT 'μg/dL', ALTER COLUMN tsh SET DEFAULT 'μIU/mL', ALTER COLUMN iron SET DEFAULT 'μg/dL', ALTER COLUMN tibc SET DEFAULT 'μg/dL', ALTER COLUMN t4_thyroxine SET DEFAULT 'μg/dL';
-- rollback: ALTER Table user_exam_unit ALTER COLUMN cortisol SET DEFAULT 'µg/dL', ALTER COLUMN tsh SET DEFAULT 'µIU/mL', ALTER COLUMN iron SET DEFAULT 'µg/dL', ALTER COLUMN tibc SET DEFAULT 'µg/dL', ALTER COLUMN t4_thyroxine SET DEFAULT 'µg/dL'; ALTER Table clinic_exam_unit ALTER COLUMN cortisol SET DEFAULT 'µg/dL', ALTER COLUMN tsh SET DEFAULT 'µIU/mL', ALTER COLUMN iron SET DEFAULT 'µg/dL', ALTER COLUMN tibc SET DEFAULT 'µg/dL', ALTER COLUMN t4_thyroxine SET DEFAULT 'µg/dL';

-- changeset angelchang:808
DROP INDEX IF EXISTS idx_user_exam_unit_user_id;
CREATE UNIQUE INDEX IF NOT EXISTS idx_unique_user_exam_unit_user_id ON user_exam_unit(user_id);
-- rollback: DROP INDEX IF EXISTS idx_unique_user_exam_unit_user_id; CREATE INDEX IF NOT EXISTS "idx_user_exam_unit_user_id" ON "user_exam_unit"("user_id");

-- changeset hankchou:809
CREATE TABLE IF NOT EXISTS "region"(id SERIAL NOT NULL PRIMARY KEY, iso_code TEXT);
-- rollback: DROP TABLE region;

-- changeset hankchou:810
CREATE TABLE IF NOT EXISTS "account"(id SERIAL NOT NULL PRIMARY KEY, phone_number TEXT, email TEXT, identity TEXT, region_id integer, created_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(), updated_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(),password text);
ALTER TABLE "account" ADD CONSTRAINT "account_region_id_fkey" FOREIGN KEY ("region_id") REFERENCES "region" ("id") ON UPDATE NO ACTION ON DELETE RESTRICT;
CREATE UNIQUE INDEX IF NOT EXISTS account_email_unique_key ON account(email);
CREATE UNIQUE INDEX IF NOT EXISTS account_identity_unique_key ON account(identity);
CREATE UNIQUE INDEX IF NOT EXISTS account_phone_number_unique_key ON account(phone_number);
-- rollback: DROP INDEX IF EXISTS account_phone_number_unique_key; DROP INDEX IF EXISTS account_identity_unique_key; DROP INDEX IF EXISTS account_email_unique_key; ALTER TABLE account DROP CONSTRAINT account_region_id_fkey; DROP TABLE account;

-- changeset hankchou:811
CREATE TABLE IF NOT EXISTS "auth_token"(id SERIAL NOT NULL PRIMARY KEY,created_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(),updated_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(),device_id TEXT,access_token TEXT, is_valid BOOLEAN DEFAULT TRUE NOT NULL, identity TEXT NOT NULL);
CREATE INDEX IF NOT EXISTS auth_token_device_id_access_token_key ON auth_token(device_id, access_token) WHERE is_valid IS TRUE;
CREATE INDEX IF NOT EXISTS auth_token_identity_key ON auth_token(identity);
-- rollback: DROP INDEX IF EXISTS auth_token_identity_key; DROP INDEX IF EXISTS auth_token_device_id_access_token_key; DROP TABLE auth_token;

-- changeset hankchou:812
CREATE TABLE IF NOT EXISTS "auth_social_login"(id SERIAL NOT NULL PRIMARY KEY, user_identifier TEXT, identity TEXT, extra_info JSONB, type TEXT,created_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(),updated_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW());
CREATE UNIQUE INDEX IF NOT EXISTS auth_social_login_user_identifier_key ON auth_social_login(user_identifier, type);
-- rollback: DROP INDEX IF EXISTS auth_social_login_user_identifier_key; DROP TABLE auth_social_login;

-- changeset hankchou:813
CREATE TABLE IF NOT EXISTS "auth_session"(id SERIAL NOT NULL PRIMARY KEY,identity TEXT, is_persistent BOOLEAN, created_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(), updated_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(),uid BYTEA);
CREATE INDEX IF NOT EXISTS auth_session_uid_key ON auth_session(uid);
-- rollback: DROP INDEX IF EXISTS auth_session_uid_key; DROP TABLE auth_session;
