# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 0) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "adm_list_web_user_bkp", id: false, force: :cascade do |t|
    t.string   "user_id",        limit: 112,   null: false
    t.string   "password",       limit: 512,   null: false
    t.string   "first_name",     limit: 30
    t.string   "last_name",      limit: 50
    t.string   "address",        limit: 112
    t.string   "city",           limit: 50
    t.string   "state",          limit: 2
    t.string   "zip_code",       limit: 10
    t.string   "phone",          limit: 22
    t.string   "work_phone",     limit: 22
    t.string   "work_fax",       limit: 22
    t.string   "email",          limit: 112
    t.integer  "suspended",      limit: 2,     null: false
    t.string   "role_type",      limit: 50
    t.string   "user_privelege", limit: 20
    t.datetime "date_created",                 null: false
    t.string   "user_created",   limit: 30,    null: false
    t.datetime "uptime",                       null: false
    t.string   "upuser",         limit: 50,    null: false
    t.integer  "passwordreset",  limit: 2,     null: false
    t.string   "groupemails",    limit: 32000
    t.bigint   "logincount"
    t.datetime "lastlogin"
  end

  create_table "ext_country_mapping", id: false, force: :cascade do |t|
    t.integer "country_code", limit: 2
    t.string  "cbp_code",     limit: 5
    t.string  "country_name", limit: 50
  end

  create_table "ext_location_mapping", id: false, force: :cascade do |t|
    t.integer "location_code", limit: 2
    t.string  "location_name", limit: 100
    t.integer "sector_code",   limit: 2
    t.string  "cbp_code",      limit: 10
  end

  create_table "ext_referring_sector", id: false, force: :cascade do |t|
    t.integer "orr_code",    limit: 2
    t.integer "uac_code",    limit: 2,   null: false
    t.string  "sector_name", limit: 200, null: false
  end

  create_table "ext_relationship_mapping", id: false, force: :cascade do |t|
    t.string  "cbp_code",      limit: 3
    t.integer "relation_code", limit: 2
    t.string  "relation_name", limit: 50
  end

  create_table "facility_info", primary_key: "facility_id", id: :integer, limit: 2, force: :cascade do |t|
    t.string   "facility_name",      limit: 250
    t.string   "facility_type",      limit: 112
    t.string   "region",             limit: 1
    t.string   "state",              limit: 2
    t.string   "city",               limit: 250
    t.string   "comments",           limit: 32000
    t.string   "instructions",       limit: 32000
    t.string   "confirmed_by",       limit: 250
    t.datetime "confirmed_time"
    t.integer  "isdeleted",          limit: 2,     default: 0
    t.integer  "men_only",           limit: 2,     default: 0
    t.string   "region_order",       limit: 1
    t.integer  "program_id",         limit: 2
    t.integer  "beds_unavailable_m", limit: 2
    t.integer  "beds_unavailable_f", limit: 2
    t.string   "dffc_type",          limit: 20
    t.integer  "verified",           limit: 2,     default: 0
    t.integer  "funded_capacity_m",  limit: 2,     default: 0
    t.integer  "funded_capacity_f",  limit: 2,     default: 0
  end

  create_table "facility_info_arc", primary_key: ["arc_time", "facility_id"], force: :cascade do |t|
    t.datetime "arc_time",                                     null: false
    t.integer  "facility_id",        limit: 2,                 null: false
    t.string   "facility_name",      limit: 250
    t.string   "facility_type",      limit: 112
    t.string   "region",             limit: 1
    t.string   "state",              limit: 2
    t.string   "city",               limit: 250
    t.integer  "in_care_m",          limit: 2
    t.integer  "in_care_f",          limit: 2
    t.integer  "beds_in_reserve_m",  limit: 2
    t.integer  "beds_in_reserve_f",  limit: 2
    t.string   "comments",           limit: 32000
    t.string   "instructions",       limit: 32000
    t.string   "confirmed_by",       limit: 250
    t.datetime "confirmed_time"
    t.integer  "isdeleted",          limit: 2,     default: 0
    t.integer  "men_only",           limit: 2,     default: 0
    t.string   "region_order",       limit: 1
    t.integer  "program_id",         limit: 2
    t.string   "dffc_type",          limit: 20
    t.integer  "verified",           limit: 2,     default: 0
    t.integer  "beds_unavailable_m", limit: 2,     default: 0
    t.integer  "beds_unavailable_f", limit: 2,     default: 0
    t.integer  "funded_capacity_m",  limit: 2,     default: 0
    t.integer  "funded_capacity_f",  limit: 2,     default: 0
    t.integer  "enroute_m",          limit: 2,     default: 0
    t.integer  "enroute_f",          limit: 2,     default: 0
    t.integer  "in_transfer_m",      limit: 2,     default: 0
    t.integer  "in_transfer_f",      limit: 2,     default: 0
  end

  create_table "health_abnormal_cxr", primary_key: "abnormal_cxr_id", id: :bigint, force: :cascade do |t|
    t.bigint   "health_tb_screening_id"
    t.integer  "program_id",               limit: 2,   null: false
    t.string   "stb_other_exp",            limit: 250
    t.string   "nstb_other_exp",           limit: 250
    t.integer  "cxr_determination",        limit: 2
    t.datetime "date_created",                         null: false
    t.string   "user_created",             limit: 112, null: false
    t.datetime "date_updated",                         null: false
    t.string   "user_updated",             limit: 112
    t.bigint   "health_cxr_id",                        null: false
    t.bigint   "contact_investigation_id"
    t.index ["health_tb_screening_id"], name: "uac_abn_cxr_tbscreen__idx", using: :btree
  end

  create_table "health_assessment", primary_key: "health_assessment_id", id: :bigint, force: :cascade do |t|
    t.bigint   "general_info_id",                            null: false
    t.integer  "program_id",                                 null: false
    t.integer  "well_child",                    limit: 2
    t.integer  "new_medication_given",          limit: 2
    t.integer  "immunization_given",            limit: 2
    t.integer  "immunization_not_given_due_mc", limit: 2
    t.string   "immunization_not_given_exp",    limit: 1000
    t.integer  "guidance_discussed",            limit: 2
    t.string   "guidance_discussed_exp",        limit: 500
    t.integer  "plan_other",                    limit: 2
    t.string   "plan_other_exp",                limit: 500
    t.string   "additional_info",               limit: 2000
    t.datetime "date_created",                               null: false
    t.string   "user_created",                  limit: 112,  null: false
    t.datetime "date_updated",                               null: false
    t.string   "user_updated",                  limit: 112
    t.integer  "age_appropriate",               limit: 2
    t.string   "recommendation_from_clinician", limit: 5100
    t.string   "complaint_synopsis",            limit: 5100
    t.integer  "evalreason_newsigns",           limit: 2
    t.integer  "evalreason_worsened",           limit: 2
    t.integer  "evalreason_noimprove",          limit: 2
    t.integer  "evalreason_followup",           limit: 2
    t.integer  "evalreason_other",              limit: 2
    t.string   "evalreason_other_exp",          limit: 100
    t.integer  "evaloutcome_complication",      limit: 2
    t.integer  "evaloutcome_relatedtoini",      limit: 2
    t.integer  "evaloutcome_previousincorrect", limit: 2
    t.integer  "evaloutcome_other",             limit: 2
    t.string   "evaloutcome_other_exp",         limit: 100
    t.integer  "abnormal_findings",             limit: 2
    t.string   "vaccine_other_exp",             limit: 250
    t.index ["general_info_id"], name: "health_assessment_giid__idx", using: :btree
  end

  create_table "health_contact_investigation", primary_key: "contact_investigation_id", id: :bigint, force: :cascade do |t|
    t.bigint   "uac_id"
    t.bigint   "uac_program_id"
    t.integer  "disease_id",                  limit: 2
    t.bigint   "phc_exposure_id"
    t.bigint   "phc_cluster_id"
    t.string   "relationship_to_current_uc",  limit: 250
    t.datetime "date_first_exposure_to_case"
    t.integer  "tst",                         limit: 2
    t.integer  "tb_blood_test",               limit: 2
    t.integer  "cxr",                         limit: 2
    t.integer  "outcome_of_ci",               limit: 2
    t.integer  "serum_igg_test",              limit: 2
    t.integer  "quarantined",                 limit: 2
    t.integer  "release_delayed",             limit: 2
    t.datetime "igg_test_date"
    t.integer  "igg_result_id",               limit: 2
    t.integer  "immunization_given",          limit: 2
    t.integer  "medication_given",            limit: 2
    t.integer  "lab_test_performed",          limit: 2
    t.datetime "date_created"
    t.string   "user_created",                limit: 112
    t.datetime "date_updated"
    t.string   "user_updated",                limit: 112
    t.string   "vaccine_other_exp",           limit: 250
    t.string   "vhf_specify",                 limit: 250
  end

  create_table "health_files_uploaded", primary_key: "doc_id", id: :bigint, force: :cascade do |t|
    t.bigint   "general_info_id"
    t.integer  "program_id",               limit: 2,   null: false
    t.string   "file_name",                limit: 112, null: false
    t.string   "file_content_type",        limit: 112, null: false
    t.bigint   "file_size",                            null: false
    t.integer  "health_file_type_id",      limit: 2,   null: false
    t.string   "file_display_name",        limit: 75
    t.string   "org_file_name",            limit: 250, null: false
    t.datetime "date_uploaded",                        null: false
    t.string   "user_uploaded",            limit: 112, null: false
    t.integer  "isdeleted",                limit: 2
    t.string   "description",              limit: 100
    t.string   "file_type_other",          limit: 75
    t.bigint   "contact_investigation_id"
    t.string   "health_type",              limit: 20
    t.index ["general_info_id"], name: "health_docs_giid__idx", using: :btree
    t.index ["health_file_type_id"], name: "health_docs_type_id__idx", using: :btree
  end

  create_table "health_general_info", primary_key: "general_info_id", id: :bigint, force: :cascade do |t|
    t.bigint   "uac_id",                                   null: false
    t.integer  "program_id",                   limit: 2,   null: false
    t.string   "clinician_name",               limit: 112
    t.string   "title_code",                   limit: 2
    t.string   "phone",                        limit: 20
    t.string   "clinic_name",                  limit: 255
    t.string   "address",                      limit: 250
    t.string   "city",                         limit: 112
    t.string   "state",                        limit: 2
    t.datetime "date_evaluated",                           null: false
    t.string   "staff_name",                   limit: 112
    t.integer  "location_child_received_care", limit: 2
    t.integer  "initial_exam",                 limit: 2
    t.datetime "date_created",                             null: false
    t.string   "user_created",                 limit: 112, null: false
    t.datetime "date_updated",                             null: false
    t.string   "user_updated",                 limit: 112, null: false
    t.bigint   "org_general_info_id"
    t.integer  "abnormal_findings",            limit: 2
    t.index ["location_child_received_care"], name: "hgi_location_crc__idx", using: :btree
    t.index ["uac_id", "program_id", "initial_exam"], name: "health_general_info_uk1", using: :btree
  end

  create_table "health_hst_physical_assessment", primary_key: "hst_physical_assessment_id", id: :bigint, force: :cascade do |t|
    t.bigint   "general_info_id",                         null: false
    t.integer  "program_id",                  limit: 2,   null: false
    t.string   "tc",                          limit: 10
    t.string   "hr",                          limit: 10
    t.string   "bp",                          limit: 10
    t.string   "rr",                          limit: 10
    t.string   "ht",                          limit: 10
    t.string   "wt",                          limit: 10
    t.integer  "allergies_none",              limit: 2
    t.integer  "allergies_food",              limit: 2
    t.string   "allergies_food_exp",          limit: 500
    t.integer  "allergies_medication",        limit: 2
    t.string   "allergies_medication_exp",    limit: 500
    t.integer  "corrected_right_eye",         limit: 2
    t.integer  "corrected_left_eye",          limit: 2
    t.integer  "corrected_both_eye",          limit: 2
    t.integer  "uncorrected_right_eye",       limit: 2,   null: false
    t.integer  "uncorrected_left_eye",        limit: 2,   null: false
    t.integer  "uncorrected_both_eye",        limit: 2,   null: false
    t.integer  "concerns_child_or_caregiver", limit: 2,   null: false
    t.string   "cpecify_concerns",            limit: 512
    t.string   "past_medical_history",        limit: 512
    t.string   "social_family_history",       limit: 512
    t.integer  "lmp",                         limit: 2
    t.datetime "lmp_date"
    t.integer  "previous_pregnancy",          limit: 2
    t.integer  "previous_pregnancy_g",        limit: 2
    t.integer  "previous_pregnancy_p",        limit: 2
    t.datetime "date_created",                            null: false
    t.string   "user_created",                limit: 112, null: false
    t.datetime "date_updated",                            null: false
    t.string   "user_updated",                limit: 112
    t.integer  "allergies_other",             limit: 2
    t.string   "allergies_other_exp",         limit: 500
    t.index ["general_info_id"], name: "health_hst_phy_giid__idx", using: :btree
  end

  create_table "health_illness_of_phc", primary_key: "phc_id", id: :bigint, force: :cascade do |t|
    t.bigint   "general_info_id"
    t.integer  "program_id",               limit: 2,   null: false
    t.integer  "disease_id",               limit: 2,   null: false
    t.integer  "notified_doh_by_shelter",  limit: 2
    t.integer  "number_of_staff_exposed",  limit: 2
    t.integer  "intakes_deleted",          limit: 2
    t.datetime "date_created",                         null: false
    t.string   "user_created",             limit: 112, null: false
    t.datetime "date_updated",                         null: false
    t.string   "user_updated",             limit: 112, null: false
    t.integer  "orr_outcome_id",           limit: 2
    t.string   "tb_type",                  limit: 50
    t.string   "meningitis_type",          limit: 100
    t.string   "meningitis_other_exp",     limit: 100
    t.bigint   "contact_investigation_id"
  end

  create_table "health_lab_test", primary_key: "health_lab_test_id", id: :bigint, force: :cascade do |t|
    t.bigint   "general_info_id"
    t.integer  "program_id",               limit: 2,   null: false
    t.integer  "test_id",                  limit: 2,   null: false
    t.datetime "test_date",                            null: false
    t.integer  "test_result_id",           limit: 2,   null: false
    t.datetime "date_created",                         null: false
    t.string   "user_created",             limit: 112, null: false
    t.datetime "date_updated",                         null: false
    t.string   "user_updated",             limit: 112
    t.bigint   "contact_investigation_id"
    t.bigint   "doc_id"
    t.integer  "disease_id",               limit: 2
    t.index ["general_info_id"], name: "health_lab_test_giid__idx", using: :btree
    t.index ["test_id"], name: "health_lab_test_id__idx", using: :btree
    t.index ["test_result_id"], name: "health_lab_test_result__idx", using: :btree
  end

  create_table "health_medical_case_wrapup", primary_key: "case_wrapup_id", id: :bigint, force: :cascade do |t|
    t.bigint   "general_info_id",                           null: false
    t.integer  "program_id",                    limit: 2,   null: false
    t.integer  "case_wrapup_type",              limit: 2,   null: false
    t.integer  "uac_admitted_to_icu",           limit: 2
    t.integer  "total_number_of_nights_in_icu", limit: 2
    t.integer  "working_diagnosis_ruled_out",   limit: 2
    t.integer  "did_uac_returned_to_clinic",    limit: 2
    t.integer  "prn_as_needed",                 limit: 2
    t.integer  "follow_up",                     limit: 2
    t.string   "follow_up_exp",                 limit: 500
    t.integer  "referred_to_specialist",        limit: 2
    t.string   "referred_to_specialist_exp",    limit: 500
    t.integer  "prolonged_treatment",           limit: 2
    t.string   "prolonged_treatment_exp",       limit: 500, null: false
    t.integer  "surgery_needed",                limit: 2
    t.string   "surgery_needed_exp",            limit: 500, null: false
    t.integer  "other",                         limit: 2
    t.string   "other_exp",                     limit: 500, null: false
    t.integer  "quarantined",                   limit: 2
    t.integer  "release_delayed",               limit: 2
    t.integer  "immunization_given",            limit: 2
    t.integer  "medication_given",              limit: 2
    t.integer  "shd_notified",                  limit: 2
    t.string   "shd_state",                     limit: 2
    t.integer  "dhs_notified",                  limit: 2
    t.datetime "date_dhs_notified"
    t.string   "if_not_notified_exp",           limit: 500
    t.integer  "injury_to_self",                limit: 2
    t.integer  "injury_to_staff",               limit: 2
    t.integer  "injury_to_other_kid",           limit: 2
    t.integer  "police_action",                 limit: 2
    t.integer  "restrained",                    limit: 2
    t.integer  "consequence_other",             limit: 2
    t.string   "consequence_other_exp",         limit: 500
    t.string   "consiquence_exp",               limit: 500
    t.datetime "date_created",                              null: false
    t.string   "user_created",                  limit: 112, null: false
    t.datetime "date_updated",                              null: false
    t.string   "user_updated",                  limit: 112
    t.index ["general_info_id"], name: "hm_case_wrapup_guid__idx", using: :btree
  end

  create_table "health_prid_labtesting", primary_key: "prid_labtesting_id", id: :bigint, force: :cascade do |t|
    t.bigint   "general_info_id"
    t.integer  "program_id",               limit: 2,   null: false
    t.integer  "disease_id",               limit: 2,   null: false
    t.datetime "specimen_date",                        null: false
    t.integer  "test_id",                  limit: 2,   null: false
    t.integer  "test_result_id",           limit: 2,   null: false
    t.datetime "date_created",                         null: false
    t.string   "user_created",             limit: 112, null: false
    t.datetime "date_updated",                         null: false
    t.string   "user_updated",             limit: 112
    t.bigint   "doc_id"
    t.bigint   "contact_investigation_id"
    t.integer  "specimen_type_id",         limit: 2
    t.string   "specimen_other_exp",       limit: 128
    t.string   "test_other_exp",           limit: 128
    t.string   "disease_other_exp",        limit: 128
    t.index ["disease_id"], name: "health_prid_diseaseid__idx", using: :btree
    t.index ["general_info_id"], name: "health_prid_giid__idx", using: :btree
    t.index ["test_id"], name: "health_prid_testid__idx", using: :btree
    t.index ["test_result_id"], name: "health_prid_result__idx", using: :btree
  end

  create_table "health_psycosociall_risk", primary_key: "health_psycosocial_risk_id", id: :bigint, force: :cascade do |t|
    t.bigint   "general_info_id",                        null: false
    t.integer  "program_id",                 limit: 2
    t.integer  "mental_health_concern",      limit: 2
    t.integer  "victim_of_physical_abuse",   limit: 2
    t.string   "exp_abuse",                  limit: 500
    t.integer  "abuse_in_home_country",      limit: 2
    t.integer  "abuse_in_during_journey",    limit: 2
    t.integer  "abuse_in_orr_custody",       limit: 2
    t.integer  "sexual_abuse",               limit: 2
    t.integer  "consensual_sexual_activity", limit: 2
    t.string   "exp_sexual_abuse",           limit: 500
    t.integer  "sa_in_home_country",         limit: 2
    t.integer  "sa_in_during_jorney",        limit: 2
    t.integer  "sa_in_orr_custody",          limit: 2
    t.integer  "previous_std",               limit: 2
    t.integer  "chlamydia",                  limit: 2
    t.integer  "gonorhea",                   limit: 2
    t.integer  "hepatitis_b",                limit: 2
    t.integer  "hiv",                        limit: 2
    t.integer  "sypholis",                   limit: 2
    t.integer  "std_other",                  limit: 2
    t.string   "std_other_exp",              limit: 250
    t.integer  "ivdu",                       limit: 2
    t.string   "ivdu_exp",                   limit: 250
    t.integer  "alcohol",                    limit: 2
    t.string   "alcohol_exp",                limit: 250
    t.integer  "tabacco",                    limit: 2
    t.string   "tabacco_exp",                limit: 250
    t.integer  "abuse_other",                limit: 2
    t.string   "abuse_other_exp",            limit: 250
    t.datetime "date_created",                           null: false
    t.string   "user_created",               limit: 112, null: false
    t.datetime "date_updated",                           null: false
    t.string   "user_updated",               limit: 112
    t.integer  "substance_abuse",            limit: 2
    t.integer  "forced_sexual_abuse",        limit: 2
    t.integer  "sa_notin_orr_custody",       limit: 2
    t.integer  "abuse_notin_orr_custody",    limit: 2
    t.index ["general_info_id"], name: "health_pr_giid__idx", using: :btree
  end

  create_table "health_review_symptoms", primary_key: "review_symptoms_id", id: :bigint, force: :cascade do |t|
    t.bigint   "general_info_id",                 null: false
    t.integer  "program_id",          limit: 2,   null: false
    t.integer  "symptom_id",          limit: 2,   null: false
    t.integer  "symptom_exam_type",   limit: 2,   null: false
    t.datetime "symptom_date"
    t.string   "specify",             limit: 500
    t.string   "pain_location",       limit: 250
    t.string   "measured_temprature", limit: 10
    t.datetime "date_created",                    null: false
    t.string   "user_created",        limit: 112, null: false
    t.datetime "date_updated",                    null: false
    t.string   "user_updated",        limit: 112
    t.integer  "normal",              limit: 2
    t.string   "other_exp",           limit: 250
    t.index ["general_info_id"], name: "health_rs_giid__idx", using: :btree
    t.index ["symptom_id"], name: "health_rs_symptomsid__idx", using: :btree
  end

  create_table "health_sa_labtesting", primary_key: "sa_labtesting_id", id: :bigint, force: :cascade do |t|
    t.bigint   "general_info_id",                        null: false
    t.integer  "sa_occured_6month_ago",     limit: 2
    t.string   "explain_detail",            limit: 4000
    t.integer  "occured_in_home_country",   limit: 2
    t.integer  "occured_during_journey",    limit: 2
    t.integer  "occured_in_orr_custody",    limit: 2
    t.datetime "date_created",                           null: false
    t.string   "user_created",              limit: 112,  null: false
    t.datetime "date_updated",                           null: false
    t.string   "user_updated",              limit: 112,  null: false
    t.integer  "occured_notin_orr_custody", limit: 2
    t.integer  "program_id",                limit: 2
    t.index ["general_info_id"], name: "health_sa_labtesting__idxv1", using: :btree
  end

  create_table "health_tb_screening", primary_key: "health_tb_screening_id", id: :bigint, force: :cascade do |t|
    t.bigint   "general_info_id",                           null: false
    t.integer  "program_id",                    limit: 2,   null: false
    t.integer  "has_contacted_with_active_tb",  limit: 2
    t.string   "if_contacted_exp",              limit: 250
    t.integer  "treated_for_active_tb",         limit: 2
    t.string   "if_treated_active_tb_exp",      limit: 250
    t.integer  "treated_for_latent_tb",         limit: 2
    t.string   "if_treated_latent_tb_exp",      limit: 250
    t.integer  "tb_screen_location_id",         limit: 2
    t.integer  "tst",                           limit: 2
    t.integer  "tb_blood_test",                 limit: 2
    t.integer  "cxr",                           limit: 2
    t.integer  "tb_screening_determination_id", limit: 2
    t.datetime "afb_smear_date1"
    t.datetime "afb_smear_date2"
    t.datetime "afb_smear_date3"
    t.datetime "dst_date1"
    t.datetime "dst_date2"
    t.datetime "date_created"
    t.string   "user_created",                  limit: 112, null: false
    t.datetime "date_updated",                              null: false
    t.string   "user_updated",                  limit: 112, null: false
    t.index ["general_info_id"], name: "health_tb_sc_giid__idx", using: :btree
    t.index ["tb_screen_location_id"], name: "health_tb_sc_locationid__idx", using: :btree
  end

  create_table "list_abuse_allegations", primary_key: "abuse_type_id", id: :integer, limit: 2, force: :cascade do |t|
    t.string "abuse_type", limit: 112
  end

  create_table "list_abuse_perpetrator", primary_key: "perpetrator_type_id", id: :integer, limit: 2, force: :cascade do |t|
    t.string "perpetrator_type", limit: 112
  end

  create_table "list_bg_check_result_type", primary_key: "result_id", id: :integer, limit: 2, force: :cascade do |t|
    t.string "description", limit: 500, null: false
    t.string "result_type", limit: 500, null: false
  end

  create_table "list_comm_diseases", primary_key: "disease_id", id: :integer, limit: 2, force: :cascade do |t|
    t.string "disease_name", limit: 112
  end

  create_table "list_countries", primary_key: "country_id", id: :decimal, precision: 38, force: :cascade do |t|
    t.string "country_name", limit: 50
  end

  create_table "list_deny_reason", id: false, force: :cascade do |t|
    t.integer "reason_id", limit: 2
    t.string  "reason",    limit: 112
  end

  create_table "list_discharge_type", id: false, force: :cascade do |t|
    t.integer "discharge_type_id",            limit: 2
    t.string  "discharge_type",               limit: 112
    t.integer "discharge_type_listing_order", limit: 2
  end

  create_table "list_doc_diagnosis", primary_key: "diagnosis_id", id: :integer, limit: 2, force: :cascade do |t|
    t.string "diagnosis",     limit: 112
    t.string "visit_purpose", limit: 50
  end

  create_table "list_doc_visit_reason", primary_key: "visit_reason_id", id: :integer, limit: 2, force: :cascade do |t|
    t.string "visit_reason",  limit: 112
    t.string "visit_purpose", limit: 50
  end

  create_table "list_doc_visit_type", primary_key: "visit_type_id", id: :integer, limit: 2, force: :cascade do |t|
    t.string "visit_type",    limit: 112
    t.string "visit_purpose", limit: 50
  end

  create_table "list_effort_type", primary_key: "effort_type_id", id: :integer, limit: 2, force: :cascade do |t|
    t.string "effor_type", limit: 50
  end

  create_table "list_emotional_concerns", primary_key: "emotional_concern_id", id: :integer, limit: 2, force: :cascade do |t|
    t.string "emotional_concern_desc", limit: 250
  end

  create_table "list_entry_locations", primary_key: "location_id", id: :integer, limit: 2, force: :cascade do |t|
    t.string "city",  limit: 50
    t.string "state", limit: 50
  end

  create_table "list_facility_beds_in_reserve", primary_key: "facility_id", id: :integer, limit: 2, force: :cascade do |t|
    t.string "facility_name", limit: 250, null: false
  end

  create_table "list_health_file_type", primary_key: "health_file_type_id", id: :integer, limit: 2, force: :cascade do |t|
    t.string "description", limit: 250, null: false
  end

  create_table "list_health_immunization", primary_key: "immunization_id", id: :integer, limit: 2, force: :cascade do |t|
    t.string "description", limit: 250, null: false
  end

  create_table "list_html_color", primary_key: "color_name", id: :string, limit: 50, force: :cascade do |t|
    t.string "color_code", limit: 8, null: false
  end

  create_table "list_ice_cbp", primary_key: "ice_cbp_id", id: :integer, limit: 2, force: :cascade do |t|
    t.string "ice_cbp_type", limit: 5
    t.string "description",  limit: 500
  end

  create_table "list_immgrtn_status_at_referal", primary_key: "status_id", id: :integer, limit: 2, force: :cascade do |t|
    t.string "status", limit: 112
  end

  create_table "list_immunizations", primary_key: "immune_id", id: :integer, limit: 2, force: :cascade do |t|
    t.string "immunization_name", limit: 112
  end

  create_table "list_legal_status", primary_key: "legal_status_id", id: :integer, limit: 2, force: :cascade do |t|
    t.string "legal_status", limit: 112
  end

  create_table "list_location_child_got_care", primary_key: "location_id", id: :integer, limit: 2, force: :cascade do |t|
    t.string "location_name", limit: 250
  end

  create_table "list_manner_of_entry", primary_key: "me_id", id: :bigint, force: :cascade do |t|
    t.string "maner_of_entry", limit: 50
  end

  create_table "list_medical_concern", primary_key: "concern_id", id: :decimal, precision: 38, force: :cascade do |t|
    t.string "concern_description", limit: 112
  end

  create_table "list_medical_mental_condition", primary_key: "mm_condition_id", id: :integer, limit: 2, force: :cascade do |t|
    t.string "mm_condition", limit: 112
  end

  create_table "list_medical_screening_type", primary_key: "screening_type_id", id: :integer, limit: 2, force: :cascade do |t|
    t.string "screening_type", limit: 112
  end

  create_table "list_mental_issues", primary_key: "mental_issue_id", id: :integer, limit: 2, force: :cascade do |t|
    t.string "mental_issue_desc", limit: 250
  end

  create_table "list_orr_outcome", id: false, force: :cascade do |t|
    t.integer "orr_outcome_id",   limit: 2
    t.string  "description",      limit: 250
    t.string  "orr_outcome_type", limit: 20
  end

  create_table "list_other_escape_risk_factors", primary_key: "factor_id", id: :decimal, precision: 38, force: :cascade do |t|
    t.string "factor_description", limit: 112
  end

  create_table "list_other_incident_types", primary_key: "incident_type_id", id: :integer, limit: 2, force: :cascade do |t|
    t.string "incident_type", limit: 112
  end

  create_table "list_pef_gov_custody", primary_key: "factor_id", id: :decimal, precision: 38, force: :cascade do |t|
    t.string "factor_description", limit: 112
  end

  create_table "list_program_type", primary_key: "program_type_id", id: :integer, limit: 2, force: :cascade do |t|
    t.string "program_type", limit: 112
    t.index ["program_type"], name: "list_program_type_un", unique: true, using: :btree
  end

  create_table "list_programs", primary_key: "program_id", id: :integer, limit: 2, force: :cascade do |t|
    t.integer  "program_type_id", limit: 2,               null: false
    t.string   "program_name",    limit: 112
    t.string   "address",         limit: 112
    t.string   "city",            limit: 50
    t.string   "state",           limit: 2
    t.string   "zipcode",         limit: 10
    t.string   "phone",           limit: 22
    t.string   "fax",             limit: 22
    t.string   "email",           limit: 112
    t.integer  "capacity",        limit: 2
    t.integer  "beds_for_female", limit: 2
    t.integer  "beds_for_male",   limit: 2
    t.integer  "min_age",         limit: 2
    t.integer  "max_age",         limit: 2
    t.datetime "date_created"
    t.string   "user_created",    limit: 112
    t.datetime "uptime"
    t.string   "upuser",          limit: 112
    t.integer  "isactive",        limit: 2,   default: 1
    t.string   "mail_address",    limit: 112
    t.string   "mail_city",       limit: 50
    t.string   "mail_state",      limit: 2
    t.string   "mail_zipcode",    limit: 10
  end

  create_table "list_psycosocial_risk", primary_key: "psycosocial_risk_id", id: :integer, limit: 2, force: :cascade do |t|
    t.string "description", limit: 250, null: false
  end

  create_table "list_reason_typeoffacility", primary_key: "type_id", id: :integer, limit: 2, force: :cascade do |t|
    t.string "facility_type", limit: 112, null: false
  end

  create_table "list_referring_agency", primary_key: "agency_id", id: :integer, limit: 2, force: :cascade do |t|
    t.string "agency", limit: 112
  end

  create_table "list_referring_field_offices", primary_key: "office_id", id: :integer, limit: 2, force: :cascade do |t|
    t.string "office_name", limit: 50
  end

  create_table "list_relationship", primary_key: "relationship_id", id: :integer, limit: 2, force: :cascade do |t|
    t.string  "relationship",     limit: 50
    t.integer "sponsor_to_uac",   limit: 2
    t.integer "uac_apprehension", limit: 2,  default: 1
    t.integer "sponsor_category", limit: 2
    t.integer "isactive",         limit: 2,  default: 1
  end

  create_table "list_release_deny_reasons", primary_key: "reason_id", id: :integer, limit: 2, force: :cascade do |t|
    t.string "reason", limit: 112
  end

  create_table "list_sir_mm_issues", primary_key: "medical_mental_issue_id", id: :integer, limit: 2, force: :cascade do |t|
    t.string "medical_mental_issue", limit: 112
  end

  create_table "list_sir_notified_entities", primary_key: "contact_id", id: :decimal, precision: 38, force: :cascade do |t|
    t.decimal  "sir_id",                    precision: 38, null: false
    t.string   "contact_name",  limit: 112
    t.string   "phone",         limit: 22
    t.datetime "date_notified"
    t.datetime "time_notified"
  end

  create_table "list_sites", primary_key: "site_id", id: :integer, limit: 2, force: :cascade do |t|
    t.string "site_name", limit: 112
    t.index ["site_name"], name: "list_sites_site_name_key", unique: true, using: :btree
  end

  create_table "list_smsgateway", primary_key: "smsgateway_id", id: :bigint, force: :cascade do |t|
    t.string "company_name", limit: 112, null: false
    t.string "smsgateway",   limit: 112, null: false
  end

  create_table "list_source", primary_key: "source_id", id: :integer, force: :cascade do |t|
    t.string "source_name", limit: 200, null: false
  end

  create_table "list_specimen_type", primary_key: "specimen_type_id", id: :integer, limit: 2, force: :cascade do |t|
    t.string "description", limit: 100, null: false
    t.string "page",        limit: 20
  end

  create_table "list_states", primary_key: "state", id: :string, limit: 2, force: :cascade do |t|
    t.string "statename", limit: 50, null: false
  end

  create_table "list_substances", primary_key: "substance_id", id: :decimal, precision: 38, force: :cascade do |t|
    t.string "substance_name", limit: 50
  end

  create_table "list_suggestive_active_tb", primary_key: "stb_id", id: :integer, limit: 2, force: :cascade do |t|
    t.string  "description",  limit: 250, null: false
    t.integer "issuggestive", limit: 2,   null: false
  end

  create_table "list_symptoms_exams", primary_key: "symptom_id", id: :integer, limit: 2, force: :cascade do |t|
    t.string  "description",       limit: 250, null: false
    t.integer "symptom_exam_type", limit: 2,   null: false
  end

  create_table "list_tb_screening_location", primary_key: "location_id", id: :integer, limit: 2, force: :cascade do |t|
    t.string "description", limit: 250, null: false
  end

  create_table "list_tblt_result", primary_key: "result_id", id: :integer, limit: 2, force: :cascade do |t|
    t.string  "description", limit: 200, null: false
    t.integer "test_id",     limit: 2,   null: false
  end

  create_table "list_test_result", primary_key: "result_id", id: :integer, limit: 2, force: :cascade do |t|
    t.string "description", limit: 250, null: false
    t.string "test_type",   limit: 250, null: false
  end

  create_table "list_test_type", primary_key: "test_id", id: :integer, limit: 2, force: :cascade do |t|
    t.string "description", limit: 250, null: false
    t.string "test_type",   limit: 10,  null: false
  end

  create_table "list_transportation_mode", id: false, force: :cascade do |t|
    t.integer "transportation_mode_id", limit: 2
    t.string  "transportation_mode",    limit: 20
  end

  create_table "list_uac_behavior", primary_key: "behavior_id", id: :integer, limit: 2, force: :cascade do |t|
    t.string "behavior", limit: 112
  end

  create_table "list_uac_identity", id: false, force: :cascade do |t|
    t.integer "identity_id",          limit: 2
    t.string  "identity_description", limit: 112
  end

  create_table "list_vehicle_make", id: false, force: :cascade do |t|
    t.integer "vehicle_make_id",        limit: 2
    t.string  "vehicle_make_name",      limit: 50
    t.integer "transportation_mode_id", limit: 2
  end

  create_table "list_wd_category", primary_key: "wd_category_id", id: :integer, limit: 2, force: :cascade do |t|
    t.string "wd_category", limit: 250, null: false
  end

  create_table "list_working_diagnosis", primary_key: "working_diagnosis_id", id: :integer, limit: 2, force: :cascade do |t|
    t.string  "working_diagnosis",     limit: 250
    t.integer "wd_category_id",        limit: 2
    t.integer "contact_investigation", limit: 2
    t.integer "wd_order",              limit: 2
  end

  create_table "reason_for_typeoffacility", primary_key: ["uac_program_id", "reason_type_id"], force: :cascade do |t|
    t.decimal "uac_program_id",           precision: 38, null: false
    t.integer "reason_type_id", limit: 2,                null: false
  end

  create_table "sir_abuse_allegations", primary_key: ["sir_id", "abuse_type_id"], force: :cascade do |t|
    t.decimal "sir_id",                  precision: 38, null: false
    t.integer "abuse_type_id", limit: 2,                null: false
  end

  create_table "sir_medical_mental_issues", primary_key: ["sir_id", "medical_mental_issue_id"], force: :cascade do |t|
    t.decimal "sir_id",                            precision: 38, null: false
    t.integer "medical_mental_issue_id", limit: 2,                null: false
  end

  create_table "sir_other_incident_types", primary_key: ["sir_id", "incident_type_id"], force: :cascade do |t|
    t.decimal "sir_id",                     precision: 38, null: false
    t.integer "incident_type_id", limit: 2,                null: false
  end

  create_table "sir_uac_behavior", primary_key: ["sir_id", "behavior_id"], force: :cascade do |t|
    t.decimal "sir_id",                precision: 38, null: false
    t.integer "behavior_id", limit: 2,                null: false
  end

  create_table "sponsor_affidavits_support", primary_key: "affidavit_id", id: :bigint, force: :cascade do |t|
    t.bigint   "sponsor_id",                   null: false
    t.bigint   "annual_income"
    t.string   "proof_of_income", limit: 2000
    t.string   "emp_name",        limit: 2000
    t.string   "emp_address",     limit: 2000
    t.string   "emp_city",        limit: 2000
    t.string   "emp_state",       limit: 2
    t.string   "emp_zipcode",     limit: 10
    t.string   "emp_phone",       limit: 22
    t.integer  "has_doc_support", limit: 2
    t.string   "date_created",    limit: 112
    t.string   "user_created",    limit: 112
    t.datetime "uptime"
    t.string   "upuser",          limit: 112
  end

  create_table "sponsor_background_check", primary_key: "background_check_id", id: :decimal, precision: 38, force: :cascade do |t|
    t.decimal  "uac_id",                      precision: 38
    t.decimal  "sponsor_id",                  precision: 38,             null: false
    t.decimal  "occupant_id",                 precision: 38
    t.integer  "bg_public",       limit: 2,                  default: 0
    t.integer  "bg_sex",          limit: 2,                  default: 0
    t.integer  "bg_imm",          limit: 2,                  default: 0
    t.integer  "bg_fbich",        limit: 2,                  default: 0
    t.integer  "bg_fbinc",        limit: 2,                  default: 0
    t.integer  "bg_can",          limit: 2,                  default: 0
    t.integer  "bg_state",        limit: 2,                  default: 0
    t.integer  "check_requested", limit: 2,                  default: 0
    t.datetime "date_requested"
    t.datetime "date_received"
    t.integer  "result_id",       limit: 2
    t.datetime "date_created",                                           null: false
    t.datetime "date_updated"
    t.string   "user_created",    limit: 112,                            null: false
    t.string   "user_updated",    limit: 112
    t.integer  "bg_canwaiver",    limit: 2,                  default: 0
  end

  create_table "sponsor_criminal_history", primary_key: "criminal_history_id", id: :bigint, force: :cascade do |t|
    t.bigint   "sponsor_id",                      null: false
    t.string   "crime_discription",  limit: 2000
    t.datetime "crime_date"
    t.string   "length_of_sentence", limit: 2000
    t.string   "location",           limit: 2000
    t.datetime "date_created"
    t.string   "user_created",       limit: 112
    t.datetime "uptime"
    t.string   "upuser",             limit: 112
  end

  create_table "sponsor_household_occupants", primary_key: "occupant_id", id: :bigint, force: :cascade do |t|
    t.bigint   "sponsor_id",                           null: false
    t.string   "name_of_occupant",        limit: 2000
    t.integer  "age",                     limit: 2
    t.integer  "relationship_to_sponsor", limit: 2
    t.integer  "relationship_to_minor",   limit: 2
    t.integer  "dependent_of_sponsor",    limit: 2
    t.string   "user_created",            limit: 112
    t.datetime "date_created"
    t.datetime "uptime"
    t.string   "upuser",                  limit: 112
    t.bigint   "uac_id"
    t.string   "first_name",              limit: 2000
    t.string   "last_name",               limit: 2000
    t.string   "gender",                  limit: 1
    t.datetime "dob"
  end

  create_table "sponsor_info", primary_key: "sponsor_id", id: :bigint, force: :cascade do |t|
    t.string   "first_name",                  limit: 2000
    t.string   "last_name",                   limit: 2000
    t.string   "ssn",                         limit: 11
    t.string   "alien_no",                    limit: 10
    t.string   "address",                     limit: 2000
    t.string   "city",                        limit: 2000
    t.string   "state",                       limit: 2
    t.string   "zip_code",                    limit: 10
    t.datetime "dob"
    t.string   "cob",                         limit: 112
    t.string   "cor",                         limit: 112
    t.string   "marriage_status",             limit: 7
    t.string   "home_phone",                  limit: 22
    t.string   "work_phone",                  limit: 22
    t.string   "fax",                         limit: 22
    t.string   "email",                       limit: 112
    t.string   "gender",                      limit: 1
    t.integer  "legal_status_id",             limit: 2
    t.integer  "sponsor_relationship_to_uac", limit: 2
    t.integer  "uac_relationship_to_sponsor", limit: 2
    t.integer  "household_has_disease",       limit: 2
    t.integer  "household_has_criminal_hist", limit: 2
    t.string   "notes",                       limit: 32000
    t.string   "sponsorthip_status",          limit: 2000
    t.integer  "p_counter",                   limit: 2
    t.integer  "a_counter",                   limit: 2
    t.datetime "date_created"
    t.string   "user_created",                limit: 112
    t.datetime "uptime"
    t.string   "upuser",                      limit: 112
    t.integer  "flag",                        limit: 2
    t.string   "flag_note",                   limit: 4000
    t.integer  "flag_address",                limit: 2
    t.string   "flag_address_note",           limit: 4000
    t.string   "sponsor_token",               limit: 250
    t.index ["first_name", "last_name", "state", "ssn", "alien_no", "address"], name: "index_sponsor_info", using: :btree
  end

  create_table "treeview_doc_list", primary_key: "node_id", id: :integer, limit: 2, force: :cascade do |t|
    t.integer "node_level1", limit: 2,   default: 0, null: false
    t.integer "node_level2", limit: 2,   default: 0, null: false
    t.integer "node_level3", limit: 2,   default: 0, null: false
    t.integer "node_level4", limit: 2,   default: 0, null: false
    t.string  "node_text",   limit: 500,             null: false
    t.string  "node_value",  limit: 500
    t.integer "is_dhs_only", limit: 2,   default: 0, null: false
  end

  create_table "tt_sir_media_contacts", id: false, force: :cascade do |t|
    t.string   "session_id",   limit: 112
    t.decimal  "sir_id",                    precision: 38, null: false
    t.string   "contact_name", limit: 2000
    t.string   "agency",       limit: 2000
    t.string   "phone",        limit: 22
    t.datetime "date_contact"
    t.string   "userid",       limit: 112
    t.datetime "uptime"
  end

  create_table "tt_sponsor_affidavits_support", id: false, force: :cascade do |t|
    t.string   "session_id",      limit: 112,  null: false
    t.bigint   "sponsor_id",                   null: false
    t.bigint   "annual_income"
    t.string   "proof_of_income", limit: 2000
    t.string   "emp_name",        limit: 2000
    t.string   "emp_address",     limit: 2000
    t.string   "emp_city",        limit: 2000
    t.string   "emp_state",       limit: 2
    t.string   "emp_zipcode",     limit: 10
    t.string   "emp_phone",       limit: 22
    t.integer  "has_doc_support", limit: 2
    t.string   "upuser",          limit: 112
    t.datetime "uptime"
  end

  create_table "tt_sponsor_household_occupants", id: false, force: :cascade do |t|
    t.string   "session_id",              limit: 112,  null: false
    t.bigint   "sponsor_id",                           null: false
    t.string   "name_of_occupant",        limit: 2000
    t.integer  "age",                     limit: 2
    t.integer  "relationship_to_sponsor", limit: 2
    t.integer  "relationship_to_minor",   limit: 2
    t.integer  "dependent_of_sponsor",    limit: 2
    t.string   "upuser",                  limit: 112
    t.datetime "uptime"
    t.bigint   "uac_id"
    t.string   "first_name",              limit: 2000
    t.string   "last_name",               limit: 2000
    t.string   "gender",                  limit: 1
    t.datetime "dob"
    t.bigint   "occupant_id"
  end

  create_table "tt_uac_immunization", id: false, force: :cascade do |t|
    t.string   "session_id",     limit: 112
    t.integer  "immune_type_id", limit: 2,   null: false
    t.datetime "immune_date1"
    t.datetime "immune_date2"
    t.datetime "immune_date3"
    t.datetime "immune_date4"
    t.datetime "immune_date5"
  end

  create_table "tt_uac_isp_sub", id: false, force: :cascade do |t|
    t.string   "session_id",         limit: 112
    t.decimal  "isp_id",                          precision: 38
    t.decimal  "service_plan_id",                 precision: 38
    t.string   "service",            limit: 2000
    t.string   "frequency",          limit: 2000
    t.string   "tasks",              limit: 2000
    t.string   "person_responsible", limit: 2000
    t.datetime "start_date"
    t.datetime "end_date"
    t.string   "userid",             limit: 112
    t.datetime "uptime"
  end

  create_table "tt_uac_substance_use_history", id: false, force: :cascade do |t|
    t.string   "session_id",        limit: 112
    t.decimal  "substance_id",                  precision: 38
    t.decimal  "uac_assessment_id",             precision: 38
    t.string   "frequency_of_use",  limit: 260
    t.datetime "date_of_last_use"
    t.string   "user_created",      limit: 112
  end

  create_table "uac_abnormal_cxr", primary_key: "uac_abnormal_cxr_id", id: :bigint, force: :cascade do |t|
    t.bigint "abnormal_cxr_id", null: false
    t.bigint "stb_id",          null: false
  end

  create_table "uac_apprehension_info", primary_key: ["apprehension_id", "uac_id"], force: :cascade do |t|
    t.bigint   "apprehension_id",                null: false
    t.bigint   "uac_id",                         null: false
    t.string   "name",              limit: 500
    t.string   "anumber",           limit: 10
    t.string   "phone",             limit: 20
    t.integer  "relationship_id",   limit: 2
    t.string   "address",           limit: 2000
    t.string   "apprehension_type", limit: 112
    t.datetime "uptime"
    t.string   "upuser",            limit: 112
    t.integer  "age",               limit: 2
  end

  create_table "uac_ar_notification", primary_key: "ar_notification_id", id: :bigint, force: :cascade do |t|
    t.bigint   "uac_program_id",                     null: false
    t.datetime "date_of_discharge"
    t.string   "type_of_discharge",     limit: 50
    t.bigint   "sponsor_id",                         null: false
    t.string   "prove_of_relationship", limit: 4000
    t.datetime "date_created"
    t.string   "user_created",          limit: 112
    t.datetime "uptime"
    t.string   "upuser",                limit: 112
  end

  create_table "uac_assessment", primary_key: "uac_assessment_id", id: :decimal, precision: 38, force: :cascade do |t|
    t.decimal  "uac_program_id",                               precision: 38,             null: false
    t.datetime "date_of_intake"
    t.string   "los",                            limit: 2000
    t.string   "case_mgt_name",                  limit: 2000
    t.string   "clinician_name",                 limit: 2000
    t.string   "religiuse_affiliation",          limit: 32000
    t.string   "day_to_day_life_in_hc",          limit: 32000
    t.string   "reason_to_travel_to_usa",        limit: 32000
    t.string   "how_gotin_to_us",                limit: 32000
    t.string   "person_lived_wth_in_hc",         limit: 32000
    t.string   "what_was_the_plan_in_us",        limit: 32000
    t.string   "location_apprehended",           limit: 32000
    t.integer  "been_in_us_before",              limit: 2
    t.datetime "lasttime_to_be_in_us"
    t.integer  "has_family_in_hc",               limit: 2
    t.integer  "has_family_in_us",               limit: 2
    t.string   "parents_inof",                   limit: 32000
    t.integer  "marriage_stus",                  limit: 2
    t.string   "spouse_name",                    limit: 32000
    t.integer  "has_children",                   limit: 2
    t.integer  "hurt_by_someone",                limit: 2
    t.string   "notes_about_hurt_bysomeone",     limit: 32000
    t.integer  "have_been_in_hospital_by_hurt",  limit: 2
    t.string   "comments_if_was_in_hospital",    limit: 32000
    t.string   "discipline_to_you",              limit: 32000
    t.integer  "know_your_right_provided",       limit: 2
    t.string   "know_your_right_provided_when",  limit: 2000
    t.integer  "legal_screening_completed",      limit: 2
    t.string   "legal_screening_completed_when", limit: 2000
    t.integer  "legal_relief_identified",        limit: 2
    t.string   "legal_relief_notes",             limit: 32000
    t.integer  "has_criminal_history",           limit: 2
    t.string   "felony_convictions",             limit: 32000
    t.string   "misdemeanor_convictions",        limit: 32000
    t.string   "probation_parole",               limit: 32000
    t.string   "disclosed_criminal_activity",    limit: 32000
    t.integer  "attitude",                       limit: 2
    t.string   "attitude_comments",              limit: 32000
    t.integer  "behavior",                       limit: 2
    t.string   "behavior_comments",              limit: 32000
    t.integer  "speech",                         limit: 2
    t.string   "speech_comments",                limit: 32000
    t.decimal  "affect",                                       precision: 38
    t.string   "affect_comments",                limit: 32000
    t.decimal  "mood",                                         precision: 38
    t.string   "mood_comments",                  limit: 32000
    t.decimal  "thought_process",                              precision: 38
    t.string   "thought_process_comments",       limit: 32000
    t.decimal  "suicidal_ideation",                            precision: 38
    t.integer  "si_plan",                        limit: 2
    t.integer  "si_intent",                      limit: 2
    t.integer  "si_means",                       limit: 2
    t.decimal  "homicidal_ideation",                           precision: 38
    t.integer  "hi_plan",                        limit: 2
    t.integer  "hi_intent",                      limit: 2
    t.integer  "hi_means",                       limit: 2
    t.decimal  "thought_content",                              precision: 38
    t.string   "thought_content_comments",       limit: 32000
    t.decimal  "perception",                                   precision: 38
    t.integer  "orientation_time",               limit: 2
    t.integer  "orientation_place",              limit: 2
    t.integer  "orientation_person",             limit: 2
    t.integer  "orientation_self",               limit: 2
    t.string   "orientation_other_comments",     limit: 32000
    t.decimal  "memory_concentration",                         precision: 38
    t.string   "memory_concentration_comments",  limit: 32000
    t.decimal  "insight_judgment",                             precision: 38
    t.integer  "talked_emotianal_problem",       limit: 2
    t.string   "talked_emotianal_problem_when",  limit: 2000
    t.integer  "felt_need_help",                 limit: 2
    t.string   "felt_need_help_when",            limit: 2000
    t.integer  "advised_to_take_med",            limit: 2
    t.string   "advised_to_take_med_when",       limit: 2000
    t.integer  "seen_er_or_hospitalised",        limit: 2
    t.string   "seen_er_or_hospitalised_when",   limit: 2000
    t.integer  "heard_voises",                   limit: 2
    t.string   "heard_voises_when",              limit: 2000
    t.integer  "have_depressed",                 limit: 2
    t.string   "have_depressed_when",            limit: 2000
    t.integer  "attemp_to_kill_yourself",        limit: 2
    t.string   "attemp_to_kill_yourself_when",   limit: 2000
    t.integer  "had_nightmares",                 limit: 2
    t.string   "had_nightmares_specify",         limit: 32000
    t.integer  "urge_or_impulse",                limit: 2
    t.string   "urge_or_impulse_when",           limit: 2000
    t.string   "who_planned_journey",            limit: 32000
    t.string   "arangements_before_journey",     limit: 32000
    t.integer  "arrangement_change",             limit: 2
    t.string   "arrangement_change_how",         limit: 32000
    t.integer  "family_owe_money_for_journey",   limit: 2
    t.decimal  "owe_howmuch_money",                            precision: 38
    t.string   "whom_themoney_owed",             limit: 32000
    t.string   "who_expected_topay",             limit: 32000
    t.string   "what_happens_ifnot_payed",       limit: 32000
    t.integer  "uac_family_threatened",          limit: 2
    t.string   "reason_for_threaten",            limit: 32000
    t.integer  "physically_harmed",              limit: 2
    t.string   "physically_harmed_remarks",      limit: 32000
    t.integer  "someone_physically_harmed",      limit: 2
    t.string   "someone_whois_harmed",           limit: 32000
    t.integer  "held_against_will",              limit: 2
    t.string   "where_held_against_will",        limit: 32000
    t.integer  "anything_bad_happened",          limit: 2
    t.string   "who_anything_bad_happened",      limit: 32000
    t.integer  "someone_controlled_document",    limit: 2
    t.string   "who_controlled_what",            limit: 32000
    t.integer  "threaten_to_report",             limit: 2
    t.string   "who_threaten_to_report",         limit: 32000
    t.integer  "worried_tobe_found",             limit: 2
    t.string   "worried_tobe_found_bywho",       limit: 32000
    t.integer  "perform_anywork",                limit: 2
    t.string   "perform_anywork_where",          limit: 32000
    t.string   "who_arranged_thework",           limit: 32000
    t.string   "performed_work_type",            limit: 32000
    t.string   "sch_of_thework",                 limit: 32000
    t.string   "work_condition_change",          limit: 32000
    t.integer  "had_debt",                       limit: 2
    t.integer  "debt_amount_increase",           limit: 2
    t.string   "debt_amount_increase_by",        limit: 2000
    t.string   "debt_amount_increase_when",      limit: 2000
    t.string   "debt_amount_increase_why",       limit: 32000
    t.integer  "thearetened_pay_forjourney",     limit: 2
    t.string   "thearetened_pay_forjrny_who",    limit: 32000
    t.string   "what_happens_if_leave_thejob",   limit: 32000
    t.integer  "did_what_didnt_wantto",          limit: 2
    t.string   "received_payment_for_work",      limit: 32000
    t.string   "paid_whatwas_promised",          limit: 32000
    t.integer  "expenses_takenof_thepay",        limit: 2
    t.string   "what_expenses_takenof_thepay",   limit: 32000
    t.string   "how_get_to_theworksite",         limit: 32000
    t.string   "location_while_working",         limit: 32000
    t.integer  "asked_tobe_naked",               limit: 2
    t.integer  "someone_payed_for",              limit: 2
    t.integer  "asked_to_take_pics",             limit: 2
    t.integer  "asked_sexual_acts",              limit: 2
    t.integer  "promise_for_sexual_acts",        limit: 2
    t.integer  "trafficking_concern",            limit: 2
    t.datetime "trafficing_referal"
    t.integer  "substance_abuse_concerns",       limit: 2
    t.string   "substance_abuse_specify",        limit: 32000
    t.integer  "domistic_violence_concerns",     limit: 2
    t.string   "domistic_violence_specify",      limit: 32000
    t.integer  "child_abuse_concerns",           limit: 2
    t.string   "child_abuse_specify",            limit: 32000
    t.integer  "mental_health_issues",           limit: 2
    t.string   "mental_health_specify",          limit: 32000
    t.integer  "sponsor_family_support",         limit: 2
    t.string   "sponsor_family_support_specify", limit: 32000
    t.integer  "sponsor_identified_needs",       limit: 2
    t.string   "sponsor_identified_needs_expl",  limit: 32000
    t.integer  "sponsor_financial_needs",        limit: 2
    t.string   "sponsor_financial_needs_expl",   limit: 32000
    t.integer  "sponsor_hosing",                 limit: 2
    t.string   "sponsor_hosing_expl",            limit: 32000
    t.string   "any_conserns_on_sponsor",        limit: 32000
    t.integer  "sponsor_has_criminal_hist",      limit: 2
    t.string   "sponsor_felony_convictions",     limit: 32000
    t.string   "sponsor_misdemeanor_conviction", limit: 32000
    t.string   "sponsor_probation_parole",       limit: 32000
    t.integer  "parent_child_relational_issue",  limit: 2
    t.string   "parent_child_issue_expl",        limit: 32000
    t.integer  "sponsor_order_of_removal",       limit: 2
    t.datetime "spnsr_order_of_removal_date"
    t.integer  "other_uacs_sponsored",           limit: 2
    t.integer  "trafficking_in_persons",         limit: 2
    t.datetime "date_eligibility_letter_issued"
    t.integer  "child_disability_act",           limit: 2
    t.string   "specify_uac_disability",         limit: 32000
    t.integer  "victim_of_physex_abuse",         limit: 2
    t.string   "victim_of_physex_abuse_summary", limit: 32000
    t.integer  "sponsor_risk_to_uac",            limit: 2
    t.string   "sponsor_risk_to_uac_sht_smmry",  limit: 32000
    t.string   "signature",                      limit: 2000
    t.datetime "signature_date"
    t.string   "print_name",                     limit: 2000
    t.string   "title",                          limit: 2000
    t.datetime "date_created"
    t.string   "user_created",                   limit: 112
    t.datetime "uptime"
    t.string   "upuser",                         limit: 112
    t.string   "list_of_alergies",               limit: 32000
    t.integer  "feel_unwell",                    limit: 2
    t.string   "feel_unwell_symptoms",           limit: 32000
    t.string   "additional_info",                limit: 32000
    t.string   "previous_placment",              limit: 32000
    t.string   "journey_appre_add_info",         limit: 32000
    t.string   "additional_med_info",            limit: 32000
    t.string   "additional_crim_info",           limit: 32000
    t.string   "additional_sponsor_info",        limit: 32000
    t.integer  "memory_shortterm",               limit: 2
    t.integer  "memory_longterm",                limit: 2
    t.integer  "memory_distractable",            limit: 2
    t.string   "care_plan_reunification",        limit: 32000
    t.string   "care_plan_legal",                limit: 32000
    t.string   "care_plan_mental",               limit: 32000
    t.string   "sponsor_disclosed_crime",        limit: 32000
    t.integer  "someone_payed_for_pic",          limit: 2
    t.integer  "isdeleted",                      limit: 2,                    default: 0
    t.string   "city_of_origin",                 limit: 250
    t.string   "neighbor_of_origin",             limit: 250
    t.integer  "child_mention_us_policy",        limit: 2
    t.integer  "child_mention_us_eco",           limit: 2
    t.datetime "the_date_left_home_country"
    t.string   "the_length_of_the_trip",         limit: 2000
    t.string   "who_traveled_with_the_child",    limit: 2000
    t.string   "level_of_edu",                   limit: 2000
    t.string   "lt_child_was_in_school_and_age", limit: 250
    t.integer  "ff_paid_for_this_trip",          limit: 2
  end

  create_table "uac_case_review", primary_key: "uac_case_review_id", id: :decimal, precision: 38, force: :cascade do |t|
    t.decimal  "uac_program_id",                               precision: 38,             null: false
    t.string   "reviewer_name",                  limit: 2000
    t.string   "reviewer_title",                 limit: 2000
    t.string   "reviewer_sign",                  limit: 2000
    t.datetime "reviewed_date"
    t.integer  "monthly_review",                 limit: 2,                    default: 1
    t.integer  "discharge",                      limit: 2,                    default: 0
    t.integer  "transfer",                       limit: 2,                    default: 0
    t.string   "current_mental_functioning",     limit: 32000
    t.integer  "recommend_discharge",            limit: 2,                    default: 0
    t.string   "recommend_sponsor",              limit: 2000
    t.integer  "recommend_discharge_wpr",        limit: 2,                    default: 0
    t.integer  "recommend_home_study",           limit: 2,                    default: 0
    t.datetime "recommend_date_of_prref"
    t.string   "recommend_reason_for_hs",        limit: 32000
    t.datetime "date_created"
    t.string   "user_created",                   limit: 112
    t.datetime "uptime"
    t.string   "upuser",                         limit: 112
    t.string   "case_mgt_name",                  limit: 2000
    t.string   "clinician_name",                 limit: 2000
    t.string   "religiuse_affiliation",          limit: 32000
    t.string   "comments_if_was_in_hospital",    limit: 32000
    t.integer  "know_your_right_provided",       limit: 2
    t.string   "know_your_right_provided_when",  limit: 2000
    t.integer  "legal_screening_completed",      limit: 2
    t.string   "legal_screening_completed_when", limit: 2000
    t.integer  "legal_relief_identified",        limit: 2
    t.string   "legal_relief_notes",             limit: 32000
    t.string   "felony_convictions",             limit: 32000
    t.string   "probation_parole",               limit: 32000
    t.string   "disclosed_criminal_activity",    limit: 32000
    t.string   "who_planned_journey",            limit: 32000
    t.string   "arangements_before_journey",     limit: 32000
    t.integer  "arrangement_change",             limit: 2
    t.string   "arrangement_change_how",         limit: 32000
    t.integer  "family_owe_money_for_journey",   limit: 2
    t.bigint   "owe_howmuch_money"
    t.string   "whom_themoney_owed",             limit: 32000
    t.string   "who_expected_topay",             limit: 32000
    t.string   "what_happens_ifnot_payed",       limit: 32000
    t.integer  "uac_family_threatened",          limit: 2
    t.string   "reason_for_threaten",            limit: 32000
    t.integer  "physically_harmed",              limit: 2
    t.string   "physically_harmed_remarks",      limit: 32000
    t.integer  "someone_physically_harmed",      limit: 2
    t.string   "someone_whois_harmed",           limit: 32000
    t.integer  "held_against_will",              limit: 2
    t.string   "where_held_against_will",        limit: 32000
    t.integer  "anything_bad_happened",          limit: 2
    t.string   "who_anything_bad_happened",      limit: 32000
    t.integer  "someone_controlled_document",    limit: 2
    t.string   "who_controlled_what",            limit: 32000
    t.integer  "threaten_to_report",             limit: 2
    t.string   "who_threaten_to_report",         limit: 32000
    t.integer  "worried_tobe_found",             limit: 2
    t.string   "worried_tobe_found_bywho",       limit: 32000
    t.integer  "perform_anywork",                limit: 2
    t.string   "perform_anywork_where",          limit: 32000
    t.string   "who_arranged_thework",           limit: 32000
    t.string   "performed_work_type",            limit: 32000
    t.string   "sch_of_thework",                 limit: 32000
    t.string   "work_condition_change",          limit: 32000
    t.integer  "had_debt",                       limit: 2
    t.integer  "debt_amount_increase",           limit: 2
    t.string   "debt_amount_increase_by",        limit: 2000
    t.string   "debt_amount_increase_when",      limit: 2000
    t.string   "debt_amount_increase_why",       limit: 32000
    t.integer  "thearetened_pay_forjourney",     limit: 2
    t.string   "thearetened_pay_forjrny_who",    limit: 32000
    t.string   "what_happens_if_leave_thejob",   limit: 32000
    t.integer  "did_what_didnt_wantto",          limit: 2
    t.string   "received_payment_for_work",      limit: 32000
    t.string   "paid_whatwas_promised",          limit: 32000
    t.integer  "expenses_takenof_thepay",        limit: 2
    t.string   "what_expenses_takenof_thepay",   limit: 32000
    t.string   "how_get_to_theworksite",         limit: 32000
    t.string   "location_while_working",         limit: 32000
    t.integer  "asked_tobe_naked",               limit: 2
    t.integer  "someone_payed_for",              limit: 2
    t.integer  "asked_to_take_pics",             limit: 2
    t.integer  "asked_sexual_acts",              limit: 2
    t.integer  "promise_for_sexual_acts",        limit: 2
    t.integer  "trafficking_concern",            limit: 2
    t.datetime "trafficing_referal"
    t.integer  "substance_abuse_concerns",       limit: 2
    t.string   "substance_abuse_specify",        limit: 32000
    t.integer  "domistic_violence_concerns",     limit: 2
    t.string   "domistic_violence_specify",      limit: 32000
    t.integer  "child_abuse_concerns",           limit: 2
    t.string   "child_abuse_specify",            limit: 32000
    t.integer  "mental_health_issues",           limit: 2
    t.string   "mental_health_specify",          limit: 32000
    t.integer  "sponsor_family_support",         limit: 2
    t.string   "sponsor_family_support_specify", limit: 32000
    t.integer  "sponsor_identified_needs",       limit: 2
    t.string   "sponsor_identified_needs_expl",  limit: 32000
    t.integer  "sponsor_financial_needs",        limit: 2
    t.string   "sponsor_financial_needs_expl",   limit: 32000
    t.integer  "sponsor_hosing",                 limit: 2
    t.string   "sponsor_hosing_expl",            limit: 32000
    t.string   "any_conserns_on_sponsor",        limit: 32000
    t.integer  "sponsor_has_criminal_hist",      limit: 2
    t.string   "sponsor_felony_convictions",     limit: 32000
    t.string   "sponsor_misdemeanor_conviction", limit: 32000
    t.string   "sponsor_probation_parole",       limit: 32000
    t.integer  "parent_child_relational_issue",  limit: 2
    t.string   "parent_child_issue_expl",        limit: 32000
    t.integer  "sponsor_order_of_removal",       limit: 2
    t.datetime "spnsr_order_of_removal_date"
    t.integer  "other_uacs_sponsored",           limit: 2
    t.integer  "trafficking_in_persons",         limit: 2
    t.datetime "date_eligibility_letter_issued"
    t.integer  "child_disability_act",           limit: 2
    t.string   "specify_uac_disability",         limit: 32000
    t.integer  "victim_of_physex_abuse",         limit: 2
    t.string   "victim_of_physex_abuse_summary", limit: 32000
    t.integer  "sponsor_risk_to_uac",            limit: 2
    t.string   "sponsor_risk_to_uac_sht_smmry",  limit: 32000
    t.string   "list_of_alergies",               limit: 32000
    t.integer  "feel_unwell",                    limit: 2
    t.string   "feel_unwell_symptoms",           limit: 32000
    t.string   "previous_placment",              limit: 32000
    t.string   "additional_med_info",            limit: 32000
    t.string   "additional_sponsor_info",        limit: 32000
    t.string   "care_plan_reunification",        limit: 32000
    t.string   "care_plan_legal",                limit: 32000
    t.string   "care_plan_mental",               limit: 32000
    t.integer  "someone_payed_for_pic",          limit: 2
    t.integer  "isdeleted",                      limit: 2,                    default: 0
  end

  create_table "uac_children", id: false, force: :cascade do |t|
    t.decimal  "uac_children_id",                 precision: 38
    t.decimal  "uac_assessment_id",               precision: 38
    t.string   "child_name",         limit: 2000
    t.decimal  "age",                             precision: 38
    t.datetime "dob"
    t.string   "current_location",   limit: 2000
    t.string   "father_mother_name", limit: 2000
  end

  create_table "uac_cr_medical_history", primary_key: "medical_hist_id", id: :decimal, precision: 38, force: :cascade do |t|
    t.bigint   "uac_case_review_id",              null: false
    t.integer  "mm_condition_id",    limit: 2,    null: false
    t.integer  "condition_yn",       limit: 2
    t.string   "clarification",      limit: 2000
    t.datetime "date_created"
    t.string   "user_created",       limit: 112
  end

  create_table "uac_cr_medication_history", primary_key: "medication_hist_id", id: :bigint, force: :cascade do |t|
    t.bigint   "uac_case_review_id",               null: false
    t.string   "medication_name",    limit: 2000
    t.string   "dosage",             limit: 2000
    t.string   "timeframe",          limit: 2000
    t.string   "medical_condition",  limit: 32000
    t.datetime "date_created"
    t.string   "user_created",       limit: 112
    t.datetime "uptime"
    t.string   "upuser",             limit: 112
  end

  create_table "uac_criminal_history", primary_key: "criminal_history_id", id: :decimal, precision: 38, force: :cascade do |t|
    t.decimal  "uac_assessment_id",                precision: 38, null: false
    t.string   "crime_discription",  limit: 2000
    t.datetime "crime_date"
    t.string   "length_of_sentence", limit: 2000
    t.string   "location",           limit: 32000
    t.datetime "date_created"
    t.string   "user_created",       limit: 112
    t.datetime "uptime"
    t.string   "upuser",             limit: 112
  end

  create_table "uac_discharge_notification", primary_key: "discharge_id", id: :bigint, force: :cascade do |t|
    t.bigint   "uac_program_id",                                    null: false
    t.datetime "date_of_discharge"
    t.integer  "type_of_discharge",       limit: 2
    t.bigint   "sponsor_id"
    t.string   "prove_of_relationship",   limit: 32000
    t.integer  "program_uac_transfer_to", limit: 2
    t.string   "dhs_family_shelter",      limit: 2000
    t.integer  "law_enforcement_id",      limit: 2
    t.string   "address",                 limit: 2000
    t.string   "city",                    limit: 2000
    t.string   "state",                   limit: 2
    t.string   "zip_code",                limit: 10
    t.string   "phone",                   limit: 22
    t.string   "fax",                     limit: 22
    t.integer  "uac_legal_status_id",     limit: 2
    t.datetime "date_created"
    t.string   "user_created",            limit: 112
    t.datetime "uptime"
    t.string   "upuser",                  limit: 112
    t.integer  "orr_decision",            limit: 2
    t.datetime "date_of_orr_decision"
    t.string   "other_law_enforcement",   limit: 2000
    t.integer  "isdeleted",               limit: 2,     default: 0
  end

  create_table "uac_doctor_visit", primary_key: "visit_id", id: :decimal, precision: 38, force: :cascade do |t|
    t.decimal  "uac_program_id",                  precision: 38, null: false
    t.datetime "date_of_visit"
    t.integer  "visit_type_id",      limit: 2
    t.integer  "visit_reason_id",    limit: 2
    t.string   "cpecify_if_other",   limit: 112
    t.integer  "diagnosis_id",       limit: 2
    t.string   "summary_of_outcome", limit: 4000
    t.decimal  "dose",                            precision: 38
    t.string   "drug_use_direction", limit: 4000
    t.datetime "drug_date_started"
    t.integer  "psychotropic_med",   limit: 2
    t.string   "reason_for_drug",    limit: 4000
    t.datetime "date_created"
    t.string   "user_created",       limit: 112
    t.datetime "uptime"
    t.string   "upuser",             limit: 112
    t.string   "drug_name",          limit: 112
  end

  create_table "uac_documents", primary_key: "doc_id", id: :bigint, force: :cascade do |t|
    t.bigint   "uac_program_id"
    t.string   "file_name",      limit: 2000
    t.string   "file_type",      limit: 250
    t.bigint   "file_size"
    t.binary   "file_content"
    t.string   "remarks",        limit: 32000
    t.string   "uploaded_by",    limit: 250
    t.datetime "uptime"
    t.string   "upuser",         limit: 112
    t.integer  "isdeleted",      limit: 2,     default: 0
    t.datetime "date_created"
    t.string   "org_file_name",  limit: 250
  end

  create_table "uac_education_placement", primary_key: "placement_id", id: :bigint, force: :cascade do |t|
    t.bigint   "uac_program_id",                           null: false
    t.string   "file_name",      limit: 2000
    t.string   "org_file_name",  limit: 2000
    t.string   "file_type",      limit: 250
    t.bigint   "file_size"
    t.string   "file_path",      limit: 112
    t.integer  "placement_type", limit: 2
    t.string   "report_type",    limit: 50
    t.string   "remarks",        limit: 32000
    t.string   "uploaded_by",    limit: 50
    t.datetime "uptime"
    t.string   "upuser",         limit: 112
    t.integer  "isdeleted",      limit: 2,     default: 0
  end

  create_table "uac_effort", primary_key: "effort_id", id: :bigint, force: :cascade do |t|
    t.bigint   "uac_program_id",                    null: false
    t.integer  "effort_type_id",        limit: 2,   null: false
    t.integer  "contact_location_id",   limit: 2
    t.datetime "date_of_last_contact"
    t.datetime "date_of_contact"
    t.datetime "training_date"
    t.datetime "date_of_next_contact"
    t.string   "recreation",            limit: 112
    t.string   "recreation_notes",      limit: 500
    t.datetime "time_spent"
    t.bigint   "legal_relief_provided"
    t.bigint   "rec_value"
    t.datetime "date_created"
    t.string   "user_created",          limit: 112
    t.datetime "uptime"
    t.string   "upuser",                limit: 112
  end

  create_table "uac_emotional_concerns", primary_key: ["initial_intakes_id", "emotional_concern_id"], force: :cascade do |t|
    t.bigint  "initial_intakes_id",                    null: false
    t.integer "emotional_concern_id",      limit: 2,   null: false
    t.bigint  "uac_emotional_concerns_id"
    t.integer "yes_no",                    limit: 2
    t.string  "other_exp",                 limit: 500
  end

  create_table "uac_family_info", primary_key: "rel_id", id: :decimal, precision: 38, force: :cascade do |t|
    t.bigint   "initial_intakes_id",              null: false
    t.string   "relative_name",      limit: 2000
    t.integer  "relationship_id",    limit: 2
    t.string   "address",            limit: 2000
    t.string   "phone",              limit: 22
    t.datetime "date_created"
    t.string   "user_created",       limit: 112
    t.datetime "uptime"
    t.string   "upuser",             limit: 112
  end

  create_table "uac_family_relations", primary_key: "uac_relationship_id", id: :decimal, precision: 38, force: :cascade do |t|
    t.decimal  "uac_assessment_id",              precision: 38, null: false
    t.string   "relative_name",     limit: 2000
    t.decimal  "age",                            precision: 38
    t.datetime "dob"
    t.integer  "relationship_id",   limit: 2
    t.integer  "relations_in_us",   limit: 2
  end

  create_table "uac_fast", primary_key: "fast_id", id: :decimal, precision: 38, force: :cascade do |t|
    t.bigint   "uac_id",                                                                 null: false
    t.string   "intake_staff_name",              limit: 112
    t.string   "fast_status",                    limit: 1
    t.string   "fac_contactinfo",                limit: 250
    t.string   "uac_location_at_ref",            limit: 250
    t.string   "detention_facility_if_any",      limit: 112
    t.string   "unaccompanied_status",           limit: 50
    t.string   "uac_behaveior_hist",             limit: 2000
    t.string   "additional_info",                limit: 2000
    t.string   "placement_consultation",         limit: 250
    t.integer  "intakes_indication",             limit: 2
    t.integer  "care_provider_indication",       limit: 2
    t.integer  "ffs_indication",                 limit: 2
    t.integer  "i_petty_offenses",               limit: 2
    t.decimal  "i_non_petty_offenses",                        precision: 38
    t.decimal  "i_non_firearm_violence",                      precision: 38
    t.decimal  "i_violent_offenses",                          precision: 38
    t.decimal  "i_weapon1_violences",                         precision: 38
    t.decimal  "i_weapon2_violences",                         precision: 38
    t.integer  "i_weapon3_violation",            limit: 2
    t.integer  "i_voiw3_violence",               limit: 2
    t.decimal  "i_sexual_assault",                            precision: 38
    t.integer  "i_serious_violent_offenses",     limit: 2
    t.string   "i_comments",                     limit: 2000
    t.integer  "c_petty_offenses",               limit: 2
    t.decimal  "c_non_petty_offenses",                        precision: 38
    t.decimal  "c_non_firearm_violence",                      precision: 38
    t.decimal  "c_violent_offenses",                          precision: 38
    t.decimal  "c_weapon1_violences",                         precision: 38
    t.decimal  "c_weapon2_violences",                         precision: 38
    t.integer  "c_weapon3_violences",            limit: 2
    t.integer  "c_voiw3_violences",              limit: 2
    t.decimal  "c_sexual_assault",                            precision: 38
    t.integer  "c_serious_violent_offenses",     limit: 2
    t.string   "c_comments",                     limit: 2000
    t.integer  "f_petty_offenses",               limit: 2
    t.decimal  "f_non_petty_offenses",                        precision: 38
    t.decimal  "f_non_firearm_violence",                      precision: 38
    t.decimal  "f_violent_offenses",                          precision: 38
    t.decimal  "f_weapon1_violences",                         precision: 38
    t.decimal  "f_weapon2_violences",                         precision: 38
    t.integer  "f_weapon3_violences",            limit: 2
    t.integer  "f_voiw3_violences",              limit: 2
    t.decimal  "f_sexual_assault",                            precision: 38
    t.integer  "f_serious_violent_offenses",     limit: 2
    t.string   "f_comments",                     limit: 2000
    t.decimal  "i_vt_gov_custody",                            precision: 38
    t.decimal  "c_vt_gov_custody",                            precision: 38
    t.decimal  "f_vt_gov_custody",                            precision: 38
    t.decimal  "i_gang_violation",                            precision: 38
    t.decimal  "c_gang_violation",                            precision: 38
    t.decimal  "f_gang_violation",                            precision: 38
    t.string   "i_comments_on_gang_violation",   limit: 2000
    t.string   "c_comments_on_gang_violation",   limit: 2000
    t.string   "f_comments_on_gang_violation",   limit: 2000
    t.decimal  "i_escapes_from_gov_custody",                  precision: 38
    t.decimal  "c_escapes_from_gov_custody",                  precision: 38
    t.decimal  "f_escapes_from_gov_custody",                  precision: 38
    t.integer  "i_other_rist_factor_score",      limit: 2
    t.integer  "c_other_rist_factor_score",      limit: 2
    t.integer  "f_other_rist_factor_score",      limit: 2
    t.string   "i_other_risk_comment",           limit: 2000
    t.string   "c_other_risk_comment",           limit: 2000
    t.string   "f_other_risk_comment",           limit: 2000
    t.integer  "mental_helth_issue",             limit: 2
    t.integer  "confirm_mental_helth_issue",     limit: 2
    t.string   "comment_if_yes_to_mental_issue", limit: 2000
    t.integer  "is_service_required",            limit: 2
    t.string   "comment_if_yes_to_service",      limit: 2000
    t.string   "comment_if_no_to_service",       limit: 2000
    t.string   "i_comment_on_mental_issue",      limit: 2000
    t.string   "c_comment_on_mental_issue",      limit: 2000
    t.string   "f_comment_on_mental_issue",      limit: 2000
    t.integer  "c_therapeutic_need_identified",  limit: 2
    t.integer  "f_therapeutic_need_identified",  limit: 2
    t.integer  "c_ther_need_require_change",     limit: 2
    t.integer  "f_ther_need_require_change",     limit: 2
    t.string   "i_comment_ther_need_identified", limit: 2000
    t.string   "c_comment_ther_need_identified", limit: 2000
    t.string   "f_comment_ther_need_identified", limit: 2000
    t.integer  "c_evidence_of_child_behavior",   limit: 2
    t.integer  "f_evidence_of_child_behavior",   limit: 2
    t.integer  "c_has_reason_in_legal_process",  limit: 2
    t.integer  "f_has_reason_in_legal_process",  limit: 2
    t.integer  "c_has_reason_in_reunification",  limit: 2
    t.integer  "f_has_reason_in_reunification",  limit: 2
    t.integer  "attoney_letter_provided",        limit: 2
    t.string   "attoney_name",                   limit: 112
    t.decimal  "attoney_letter_id",                           precision: 38
    t.string   "c_comments_uac_wc",              limit: 2000
    t.string   "f_comments_uac_wc",              limit: 2000
    t.decimal  "i_score",                                     precision: 38
    t.string   "i_recommented_prog_type",        limit: 112
    t.integer  "did_intakes_override_placement", limit: 2
    t.integer  "i_is_fast_placement",            limit: 2
    t.integer  "i_additional_service_required",  limit: 2
    t.string   "i_staff_name",                   limit: 112
    t.string   "i_ducs_supervisor_name",         limit: 112
    t.datetime "i_date_override_approved"
    t.datetime "i_time_override_approved"
    t.string   "i_override_justification",       limit: 2000
    t.string   "c_staff_name",                   limit: 112
    t.decimal  "c_score",                                     precision: 38
    t.string   "ffs_name",                       limit: 112
    t.decimal  "ffs_score",                                   precision: 38
    t.datetime "date_new_placement"
    t.integer  "program_id",                     limit: 2
    t.integer  "is_placement_different",         limit: 2
    t.integer  "did_fss_override",               limit: 2
    t.string   "f_staff_name",                   limit: 112
    t.string   "f_ducs_supervisor_name",         limit: 112
    t.datetime "f_date_override_approved"
    t.datetime "f_time_override_approved"
    t.string   "f_override_justification",       limit: 2000
    t.integer  "self_sch_todo_list",             limit: 2
    t.integer  "others_sch_todo_list",           limit: 2
    t.datetime "alert_date"
    t.integer  "alert_type",                     limit: 2
    t.string   "alert_notes",                    limit: 2000
    t.datetime "date_created"
    t.string   "user_created",                   limit: 112
    t.datetime "uptime"
    t.string   "upuser",                         limit: 112
    t.integer  "i_other_rist_factor",            limit: 2,                   default: 0
    t.integer  "c_other_rist_factor",            limit: 2,                   default: 0
    t.integer  "f_other_rist_factor",            limit: 2,                   default: 0
    t.integer  "i_alert_type",                   limit: 2,                   default: 0
    t.integer  "re_apprehension",                limit: 2
    t.integer  "is_override_of_plaement_matrix", limit: 2
    t.string   "q1_int",                         limit: 100
    t.string   "q1_fac",                         limit: 100
    t.string   "q1_ffs",                         limit: 100
    t.string   "q2_int",                         limit: 100
    t.string   "q2_fac",                         limit: 100
    t.string   "q2_ffs",                         limit: 100
    t.string   "q3_int",                         limit: 100
    t.string   "q3_fac",                         limit: 100
    t.string   "q3_ffs",                         limit: 100
    t.string   "q4_int",                         limit: 100
    t.string   "q4_fac",                         limit: 100
    t.string   "q4_ffs",                         limit: 100
    t.string   "q5_int",                         limit: 100
    t.string   "q5_fac",                         limit: 100
    t.string   "q5_ffs",                         limit: 100
    t.string   "i_other_rist_factors",           limit: 25
    t.string   "c_other_rist_factors",           limit: 25
    t.string   "f_other_rist_factors",           limit: 25
    t.integer  "pm_therapeuticneed",             limit: 2
    t.integer  "pm_childbehavior",               limit: 2
    t.integer  "pm_legalprocess",                limit: 2
    t.integer  "pm_familyreunion",               limit: 2
    t.datetime "date_of_finalplacement"
    t.string   "final_program_name",             limit: 250
    t.string   "final_program_type",             limit: 250
    t.integer  "ipscore",                        limit: 2
    t.integer  "is_override_of_pm",              limit: 2
  end

  create_table "uac_foster_care_travel_request", id: false, force: :cascade do |t|
    t.decimal  "travel_request_id",                        precision: 38
    t.decimal  "uac_program_id",                           precision: 38
    t.datetime "date_requested"
    t.string   "requestor_name",              limit: 50
    t.string   "requestor_phone",             limit: 22
    t.string   "requestor_email",             limit: 100
    t.string   "travel_overview",             limit: 500
    t.string   "child_name",                  limit: 50
    t.string   "child_alien_no",              limit: 10
    t.datetime "date_travel_begin"
    t.datetime "date_travel_end"
    t.string   "child_name_on_travel",        limit: 50
    t.string   "child_relationship",          limit: 50
    t.string   "contact_number",              limit: 22
    t.string   "address_child_stay",          limit: 250
    t.integer  "transportation_mode_id",      limit: 2,                   default: 1
    t.string   "transportation_info",         limit: 500
    t.integer  "vehicle_make_id",             limit: 2
    t.string   "vehicle_model",               limit: 50
    t.string   "license_plate",               limit: 50
    t.string   "primary_drivers_name",        limit: 50
    t.string   "drivers_license_number",      limit: 50
    t.string   "drivers_license_state",       limit: 20
    t.string   "insurance_company",           limit: 100
    t.string   "policty_number",              limit: 20
    t.string   "travel_reason",               limit: 2000
    t.integer  "travel_complies_state_rules", limit: 2,                   default: 0
    t.string   "noncompliance_explanation",   limit: 250
    t.string   "trip_summary",                limit: 100
    t.string   "child_supervision_plan",      limit: 250
    t.integer  "travel_safety_concern",       limit: 2,                   default: 0
    t.string   "safety_concern_explanation",  limit: 250
    t.integer  "has_flight_risk",             limit: 2,                   default: 0
    t.string   "flight_risk_explanation",     limit: 250
    t.string   "travel_comment",              limit: 500
    t.datetime "date_comment"
    t.string   "orr_official",                limit: 50
    t.datetime "date_created"
    t.string   "user_created",                limit: 112
    t.datetime "uptime"
    t.string   "upuser",                      limit: 112
    t.integer  "isdeleted",                   limit: 2,                   default: 0
  end

  create_table "uac_gang_determination_by", primary_key: ["determination_id", "uac_id"], force: :cascade do |t|
    t.bigint  "uac_id",                     null: false
    t.integer "determination_id", limit: 2, null: false
  end

  create_table "uac_health_cxr", primary_key: "health_cxr_id", id: :bigint, force: :cascade do |t|
    t.bigint   "health_tb_screening_id"
    t.integer  "program_id",               limit: 2,   null: false
    t.datetime "cxr_date"
    t.integer  "findings",                 limit: 2,   null: false
    t.string   "final_determination",      limit: 250
    t.datetime "date_created",                         null: false
    t.string   "user_created",             limit: 112, null: false
    t.datetime "date_updated",                         null: false
    t.string   "user_updated",             limit: 112
    t.bigint   "doc_id"
    t.integer  "final_determination_id",   limit: 2
    t.bigint   "contact_investigation_id"
    t.index ["health_tb_screening_id"], name: "uac_tb_cxt_creen__idx", using: :btree
  end

  create_table "uac_health_igra", primary_key: "health_igra_id", id: :bigint, force: :cascade do |t|
    t.bigint   "health_tb_screening_id"
    t.integer  "program_id",               limit: 2,   null: false
    t.datetime "date_drown"
    t.integer  "test_id",                  limit: 2,   null: false
    t.integer  "result",                   limit: 2,   null: false
    t.integer  "interpretation",           limit: 2
    t.datetime "date_created",                         null: false
    t.string   "user_created",             limit: 112, null: false
    t.datetime "date_updated",                         null: false
    t.string   "user_updated",             limit: 112
    t.bigint   "doc_id"
    t.bigint   "contact_investigation_id"
    t.index ["health_tb_screening_id"], name: "uac_igra_tbscreen__idx", using: :btree
    t.index ["result"], name: "uac_igra_result__idx", using: :btree
    t.index ["test_id"], name: "uac_igra_testid__idx", using: :btree
  end

  create_table "uac_health_immunization", primary_key: "assessment_immunization_id", id: :bigint, force: :cascade do |t|
    t.bigint   "health_assessment_id"
    t.integer  "program_id",               limit: 2,   null: false
    t.integer  "source_id",                limit: 2
    t.integer  "vaccine_id",               limit: 2,   null: false
    t.datetime "date_created",                         null: false
    t.string   "user_created",             limit: 112, null: false
    t.datetime "date_updated",                         null: false
    t.string   "user_updated",             limit: 112
    t.datetime "immunization_date"
    t.bigint   "doc_id"
    t.bigint   "contact_investigation_id"
    t.string   "vaccine_other_exp",        limit: 250
    t.index ["health_assessment_id"], name: "uac_hm_assessmentid__idx", using: :btree
    t.index ["source_id"], name: "uac_hm_sourceid__idx", using: :btree
    t.index ["vaccine_id"], name: "uac_hm_vaccineid__idx", using: :btree
  end

  create_table "uac_health_medication", primary_key: "assessment_medication_id", id: :bigint, force: :cascade do |t|
    t.bigint   "health_assessment_id"
    t.integer  "program_id",               limit: 2,   null: false
    t.integer  "source_id",                limit: 2
    t.string   "medication_name",          limit: 35,  null: false
    t.string   "reason_for_medication",    limit: 250, null: false
    t.datetime "medication_date"
    t.string   "dose",                     limit: 50
    t.string   "directions",               limit: 50,  null: false
    t.integer  "psychotropic",             limit: 2
    t.datetime "date_created",                         null: false
    t.string   "user_created",             limit: 112, null: false
    t.datetime "date_updated",                         null: false
    t.string   "user_updated",             limit: 112
    t.bigint   "contact_investigation_id"
    t.datetime "date_discontinued"
    t.index ["health_assessment_id"], name: "uac_hmed_assessment__idx", using: :btree
    t.index ["source_id"], name: "uac_hmed_sourceid__idx", using: :btree
  end

  create_table "uac_health_tblabtesting", primary_key: "health_tbt_id", id: :bigint, force: :cascade do |t|
    t.bigint   "health_tb_screening_id",             null: false
    t.integer  "program_id",             limit: 2,   null: false
    t.datetime "collection_date"
    t.integer  "speciment_type",         limit: 2
    t.integer  "test_id",                limit: 2,   null: false
    t.integer  "result",                 limit: 2,   null: false
    t.datetime "date_created",                       null: false
    t.string   "user_created",           limit: 112, null: false
    t.datetime "date_updated",                       null: false
    t.string   "user_updated",           limit: 112
    t.index ["health_tb_screening_id"], name: "uac_tbscreening__idx", using: :btree
    t.index ["result"], name: "uac_tblabtest_result__idx", using: :btree
    t.index ["speciment_type"], name: "uac_health_tblabtesting__idxv1", using: :btree
    t.index ["test_id"], name: "uac_health_tblabtestingid__idx", using: :btree
  end

  create_table "uac_health_tst", primary_key: "health_tst_id", id: :bigint, force: :cascade do |t|
    t.bigint   "health_tb_screening_id"
    t.integer  "program_id",               limit: 2,   null: false
    t.datetime "date_applied"
    t.datetime "date_read"
    t.integer  "result",                   limit: 2
    t.integer  "interpretation",           limit: 2
    t.datetime "date_created",                         null: false
    t.string   "user_created",             limit: 112, null: false
    t.datetime "date_updated",                         null: false
    t.string   "user_updated",             limit: 112
    t.bigint   "doc_id"
    t.bigint   "contact_investigation_id"
    t.index ["health_tb_screening_id"], name: "uac_health_tst_tbscreenid__idx", using: :btree
    t.index ["result"], name: "uac_health_tst_result__idx", using: :btree
  end

  create_table "uac_hotline_alert", primary_key: "hotline_alert_id", id: :bigint, force: :cascade do |t|
    t.datetime "date_of_call",                                          null: false
    t.string   "phone_reporter",              limit: 50
    t.string   "language_reporter",           limit: 50
    t.integer  "transcr_transl_needed",       limit: 2
    t.string   "first_name",                  limit: 200
    t.string   "last_name",                   limit: 200
    t.string   "type_of_reporter",            limit: 200
    t.string   "contact_email",               limit: 200
    t.string   "contact_phone",               limit: 50
    t.string   "incident_desc",               limit: 16000
    t.datetime "incident_date"
    t.integer  "staff_present",               limit: 2
    t.string   "staff_present_info",          limit: 4000
    t.integer  "incident_reported",           limit: 2
    t.string   "incident_reported_info",      limit: 4000
    t.datetime "incident_reported_date"
    t.integer  "prog_id",                     limit: 2
    t.string   "prog_city",                   limit: 50
    t.string   "prog_state",                  limit: 2
    t.string   "prog_desc",                   limit: 4000
    t.bigint   "uac_id"
    t.string   "incident_type",               limit: 200
    t.string   "incident_allegation_type",    limit: 2000
    t.string   "incident_synopsis",           limit: 4000
    t.integer  "reported_to_cps",             limit: 2
    t.integer  "reported_to_law_enforcement", limit: 2
    t.string   "hotline_rep_name",            limit: 200
    t.string   "hotline_rep_email",           limit: 200
    t.string   "hotline_rep_phone",           limit: 200
    t.string   "intakes_name",                limit: 200
    t.string   "intakes_email",               limit: 200
    t.string   "intakes_phone",               limit: 200
    t.string   "psa_name",                    limit: 200
    t.string   "psa_email",                   limit: 200
    t.string   "psa_phone",                   limit: 200
    t.integer  "not_enoughinfo_to_identify",  limit: 2
    t.string   "ffs_name",                    limit: 200
    t.string   "ffs_email",                   limit: 200
    t.datetime "ffs_date"
    t.string   "po_name",                     limit: 200
    t.string   "po_email",                    limit: 200
    t.datetime "po_date"
    t.datetime "date_created"
    t.string   "user_created",                limit: 128
    t.datetime "date_updated"
    t.string   "user_updated",                limit: 128
    t.string   "uac_a_number",                limit: 10
    t.string   "uac_firstname",               limit: 200
    t.string   "uac_lastname",                limit: 200
    t.string   "uac_gender",                  limit: 20
    t.bigint   "uac_age"
    t.string   "uac_cob",                     limit: 200
    t.string   "uac_otherdesc",               limit: 4000
    t.integer  "uac_otherucinvolved",         limit: 2
    t.string   "uac_otherucinvolveddesc",     limit: 4000
    t.datetime "date_reported_orr"
    t.string   "comments",                    limit: 16000
    t.integer  "isdeleted",                   limit: 2,     default: 0
    t.integer  "senttoorr",                   limit: 2
    t.datetime "senttoorrdate"
    t.string   "ffs_sup_name",                limit: 200
    t.string   "ffs_sup_email",               limit: 200
    t.datetime "ffs_sup_date"
  end

  create_table "uac_hotline_reporting", primary_key: "hotline_reporting_id", id: :float, force: :cascade do |t|
    t.bigint   "hotline_alert_id"
    t.string   "state",                limit: 2
    t.datetime "report_date"
    t.string   "case_number",          limit: 200
    t.string   "officer_name",         limit: 2000
    t.string   "officer_badge_number", limit: 2000
    t.integer  "reported_to_law",      limit: 2
    t.datetime "date_created"
    t.datetime "date_updated"
    t.string   "user_created",         limit: 200
    t.string   "user_updated",         limit: 200
    t.integer  "isdeleted",            limit: 2,    default: 0
  end

  create_table "uac_identity_info", id: false, force: :cascade do |t|
    t.bigint  "risk_assessment_id"
    t.integer "identity_id",            limit: 2
    t.integer "transgender_type",       limit: 2
    t.string  "transgender_type_other", limit: 112
    t.string  "identity_other_exp",     limit: 112
  end

  create_table "uac_iia_summary", primary_key: "iia_summary_id", id: :bigint, force: :cascade do |t|
    t.bigint "initial_intakes_id",                  null: false
    t.string "summary_of_interviewer", limit: 4000
    t.string "action_taken",           limit: 4000
  end

  create_table "uac_images", primary_key: "image_id", id: :bigint, force: :cascade do |t|
    t.bigint   "uac_program_id",             null: false
    t.string   "file_name",      limit: 250
    t.string   "image_path",     limit: 250
    t.string   "image_type",     limit: 250
    t.bigint   "image_size"
    t.datetime "date_uploaded"
    t.string   "user_uploaded",  limit: 112
  end

  create_table "uac_images_tmp", id: false, force: :cascade do |t|
    t.bigint   "image_id",                   null: false
    t.bigint   "uac_program_id",             null: false
    t.string   "file_name",      limit: 250
    t.string   "image_path",     limit: 250
    t.string   "image_type",     limit: 250
    t.bigint   "image_size"
    t.datetime "date_uploaded"
    t.string   "user_uploaded",  limit: 112
  end

  create_table "uac_immunization", primary_key: "immunization_id", id: :decimal, precision: 38, force: :cascade do |t|
    t.decimal  "uac_program_id",             precision: 38, null: false
    t.integer  "immune_type_id", limit: 2,                  null: false
    t.datetime "immune_date1"
    t.decimal  "immune_dose1",               precision: 38
    t.datetime "immune_date2"
    t.decimal  "immune_dose2",               precision: 38
    t.datetime "immune_date3"
    t.decimal  "immune_dose3",               precision: 38
    t.datetime "immune_date4"
    t.decimal  "immune_dose4",               precision: 38
    t.datetime "immune_date5"
    t.decimal  "immune_dose5",               precision: 38
    t.datetime "date_created"
    t.string   "user_created",   limit: 112
    t.datetime "uptime"
    t.string   "upuser",         limit: 112
  end

  create_table "uac_individual_service_plan", primary_key: "service_plan_id", id: :bigint, force: :cascade do |t|
    t.bigint   "uac_program_id",                                  null: false
    t.string   "case_manager",           limit: 2000
    t.string   "clinician_name",         limit: 2000
    t.datetime "orientation_start_date"
    t.datetime "orientation_end_date"
    t.string   "orientation_person",     limit: 2000
    t.datetime "assessment_start_date"
    t.datetime "assessment_end_date"
    t.string   "assessment_person",      limit: 2000
    t.datetime "medical_start_date"
    t.datetime "medical_end_date"
    t.string   "medical_person",         limit: 2000
    t.datetime "ea_start_date"
    t.datetime "ea_end_date"
    t.string   "ea_person",              limit: 2000
    t.datetime "rl_start_date"
    t.datetime "rl_end_date"
    t.string   "rl_person",              limit: 2000
    t.datetime "ic_start_date"
    t.datetime "ic_end_date"
    t.string   "ic_person",              limit: 2000
    t.datetime "gc_start_date"
    t.datetime "gc_end_date"
    t.string   "gc_person",              limit: 2000
    t.datetime "ars_start_date"
    t.datetime "ars_end_date"
    t.string   "ars_person",             limit: 2000
    t.datetime "cm_start_date"
    t.datetime "cm_end_date"
    t.string   "cm_person",              limit: 2000
    t.datetime "lo_start_date"
    t.datetime "lo_end_date"
    t.string   "lo_person",              limit: 2000
    t.datetime "v_start_date"
    t.datetime "v_end_date"
    t.string   "v_person",               limit: 2000
    t.datetime "date_created"
    t.string   "user_created",           limit: 112
    t.datetime "uptime"
    t.string   "upuser",                 limit: 112
    t.datetime "ep_start_date"
    t.datetime "ep_end_date"
    t.string   "ep_person",              limit: 2000
    t.datetime "ec_start_date"
    t.datetime "ec_end_date"
    t.string   "ec_person",              limit: 2000
    t.integer  "isdeleted",              limit: 2,    default: 0
  end

  create_table "uac_info", primary_key: "uac_id", id: :bigint, force: :cascade do |t|
    t.string   "alien_no",                       limit: 10,                     null: false
    t.string   "first_name",                     limit: 2000,                   null: false
    t.string   "last_name",                      limit: 2000,                   null: false
    t.string   "aka",                            limit: 2000
    t.datetime "dob"
    t.string   "cob",                            limit: 50,                                  comment: "Country of Birth"
    t.datetime "date_of_entry"
    t.string   "manner_of_entry",                limit: 50,    default: "NULL"
    t.string   "city_of_entry",                  limit: 50
    t.string   "specify_city_of_entry",          limit: 2000,                                comment: "If City is other, then specify"
    t.string   "state_of_entry",                 limit: 2
    t.datetime "date_of_apprehension"
    t.integer  "referring_office",               limit: 2,                                   comment: "Referring field office"
    t.string   "notification_city",              limit: 50,                                  comment: "Location of Minor in "
    t.string   "specify_not_city",               limit: 2000
    t.string   "notification_state",             limit: 2
    t.datetime "date_orr_notified",                                                          comment: "Date ORR/DUCS was notified"
    t.datetime "time_orr_notified"
    t.datetime "date_orr_approved",                                                          comment: "Date ORR/DUCS approved placement"
    t.datetime "time_orr_approved"
    t.integer  "pregnancy",                      limit: 2
    t.integer  "injury",                         limit: 2
    t.integer  "illness",                        limit: 2
    t.integer  "behavior_wo_medication",         limit: 2
    t.integer  "behavior_w_medication",          limit: 2
    t.string   "note_bi_wo_medication",          limit: 32000
    t.string   "note_for_w_medication",          limit: 32000
    t.string   "immigration_status",             limit: 2000
    t.string   "referring_agency",               limit: 2000
    t.string   "orr_comments",                   limit: 32000
    t.string   "uac_status",                     limit: 50
    t.datetime "date_created"
    t.string   "user_created",                   limit: 112
    t.datetime "uptime"
    t.string   "upuser",                         limit: 112
    t.string   "gender",                         limit: 6
    t.string   "uac_fast_status",                limit: 1,                                   comment: "F for FAST , N for Non-FAST, B for Both"
    t.integer  "status_id",                      limit: 2
    t.integer  "agency_id",                      limit: 2
    t.string   "middle_name",                    limit: 2000,                                comment: "MIDDLE NAME"
    t.integer  "uac_health_concern",             limit: 2,                                   comment: "Is there any Health Concern for the UAC?"
    t.integer  "uac_criminal_charge",            limit: 2,                                   comment: "Was there any criminal charge for the UAC?"
    t.string   "uac_additional_info",            limit: 250,                                 comment: "UAC Additional APPREHENSION Information"
    t.integer  "hc_other",                       limit: 2,                                   comment: "Health Concern: Other"
    t.string   "hc_summary",                     limit: 32000,                               comment: "Health Concern: Summary  (List diagnosis, medications, observations, and number of months pregnant)"
    t.integer  "hc_ergent_condition",            limit: 2,                                   comment: "Health Concern: If UAC has urgent medical/mental health conditions, check here to indicate that the UAC has been seen."
    t.string   "uac_flag",                       limit: 30,                                  comment: "UAC APPREHENSIONs: Relationship flags"
    t.string   "processing_poc",                 limit: 2000,                                comment: "UAC APPREHENSIONs and Transaction Information: Processing POC"
    t.string   "processing_email",               limit: 2000,                                comment: "UAC APPREHENSIONs and Transaction Information: Processing EMAIL"
    t.string   "processing_phone",               limit: 20,                                  comment: "UAC APPREHENSIONs and Transaction Information: Processing PHONE"
    t.string   "referral_notes",                 limit: 32000,                               comment: "Referral Notes"
    t.string   "justification_for_ss_placement", limit: 32000,                               comment: "Justification for Secure Placement"
    t.datetime "date_of_current_location",                                                   comment: "Date Time of Current Location"
    t.integer  "known_gang_affiliation",         limit: 2,                                   comment: "Any Known Gang affiliation"
    t.string   "name_of_gang",                   limit: 500,                                 comment: "Name of Gang"
    t.string   "city_of_apprehension",           limit: 50,                                  comment: "The City of Apprehension"
    t.string   "state_of_apprehension",          limit: 50,                                  comment: "The STATE of Apprehension"
    t.string   "city_of_current_location",       limit: 50,                                  comment: "The City of Current Location"
    t.string   "state_of_current_location",      limit: 50,                                  comment: "The State of Current Location"
    t.string   "gang_affiliation_summary",       limit: 32000,                               comment: "Gang Affiliation Summary"
    t.integer  "detention_type_of_facility",     limit: 2,                                   comment: "Detention Type of Facility"
    t.string   "facility_name",                  limit: 250,                                 comment: "Name of Facility"
    t.string   "facility_phone",                 limit: 20,                                  comment: "Phone of Facility"
    t.string   "facility_poc",                   limit: 500,                                 comment: "POC of Facility"
    t.string   "facility_fax",                   limit: 20,                                  comment: "Fax of Facility"
    t.datetime "facility_admission_date",                                                    comment: "Facility Admission Date"
    t.datetime "facility_discharged_date",                                                   comment: "Facility Discharged Date"
    t.string   "incident_rpt_in_dc",             limit: 32000,                               comment: "Summary of Known Incident Reports During Stay at Detention Center"
    t.string   "sum_of_mm_health_condition",     limit: 32000,                               comment: "Summary of known TB tests and medical/mental health condition"
    t.datetime "date_cancelled",                                                             comment: "The Date UAC's Status change to cancelled"
    t.string   "cancelled_by",                   limit: 112,                                 comment: "The user who cancelled the UAC"
    t.datetime "referral_date"
    t.string   "familygroup",                    limit: 13
    t.integer  "foot_guide",                     limit: 2
    t.integer  "reviewed_by_orr",                limit: 2
    t.string   "current_location_other",         limit: 500
    t.index ["alien_no", "first_name", "last_name", "dob"], name: "index_uac_info", using: :btree
  end

  create_table "uac_info_tmp", id: false, force: :cascade do |t|
    t.string   "token",                          limit: 500,                   null: false
    t.bigint   "uac_id",                                                       null: false
    t.string   "alien_no",                       limit: 10,                    null: false
    t.string   "first_name",                     limit: 2000,                  null: false
    t.string   "last_name",                      limit: 2000,                  null: false
    t.string   "middle_name",                    limit: 2000
    t.string   "aka",                            limit: 2000
    t.datetime "dob"
    t.string   "cob",                            limit: 50
    t.datetime "date_of_entry"
    t.string   "manner_of_entry",                limit: 50,    default: "EWI"
    t.string   "city_of_entry",                  limit: 50
    t.string   "specify_city_of_entry",          limit: 2000
    t.string   "state_of_entry",                 limit: 2
    t.datetime "date_of_apprehension"
    t.integer  "referring_office",               limit: 2
    t.string   "notification_city",              limit: 50
    t.string   "specify_not_city",               limit: 2000
    t.string   "notification_state",             limit: 2
    t.datetime "date_orr_notified"
    t.datetime "time_orr_notified"
    t.datetime "date_orr_approved"
    t.datetime "time_orr_approved"
    t.integer  "pregnancy",                      limit: 2
    t.integer  "injury",                         limit: 2
    t.integer  "illness",                        limit: 2
    t.integer  "hc_other",                       limit: 2
    t.integer  "behavior_wo_medication",         limit: 2
    t.integer  "behavior_w_medication",          limit: 2
    t.string   "note_bi_wo_medication",          limit: 32000
    t.string   "note_for_w_medication",          limit: 32000
    t.string   "immigration_status",             limit: 2000
    t.string   "referring_agency",               limit: 2000
    t.string   "orr_comments",                   limit: 32000
    t.string   "uac_status",                     limit: 50
    t.datetime "date_created"
    t.string   "user_created",                   limit: 112
    t.datetime "uptime"
    t.string   "upuser",                         limit: 112
    t.string   "gender",                         limit: 6
    t.string   "uac_fast_status",                limit: 1
    t.integer  "status_id",                      limit: 2
    t.integer  "agency_id",                      limit: 2
    t.string   "hc_summary",                     limit: 32000
    t.integer  "hc_ergent_condition",            limit: 2
    t.string   "uac_flag",                       limit: 30
    t.string   "processing_poc",                 limit: 2000
    t.string   "processing_email",               limit: 2000
    t.string   "referral_notes",                 limit: 32000
    t.string   "justification_for_ss_placement", limit: 32000
    t.integer  "known_gang_affiliation",         limit: 2
    t.string   "name_of_gang",                   limit: 500
    t.string   "gang_affiliation_summary",       limit: 32000
    t.integer  "detention_type_of_facility",     limit: 2
    t.string   "facility_name",                  limit: 250
    t.string   "facility_phone",                 limit: 20
    t.string   "facility_poc",                   limit: 500
    t.string   "facility_fax",                   limit: 20
    t.datetime "facility_admission_date"
    t.datetime "facility_discharged_date"
    t.string   "incident_rpt_in_dc",             limit: 32000
    t.string   "sum_of_mm_health_condition",     limit: 32000
    t.datetime "date_of_current_location"
    t.integer  "uac_health_concern",             limit: 2
    t.integer  "uac_criminal_charge",            limit: 2
    t.string   "uac_additional_info",            limit: 250
    t.string   "city_of_apprehension",           limit: 50
    t.string   "state_of_apprehension",          limit: 50
    t.string   "city_of_current_location",       limit: 50
    t.string   "state_of_current_location",      limit: 50
    t.string   "processing_phone",               limit: 20
    t.datetime "date_cancelled"
    t.string   "cancelled_by",                   limit: 112
    t.datetime "referral_date"
    t.string   "familygroup",                    limit: 13
    t.integer  "foot_guide",                     limit: 2
    t.integer  "reviewed_by_orr",                limit: 2
    t.string   "current_location_other",         limit: 500
  end

  create_table "uac_info_tmp_fromxml", id: false, force: :cascade do |t|
    t.string   "transaction_id",                 limit: 500
    t.bigint   "uac_id"
    t.string   "alien_no",                       limit: 10
    t.string   "first_name",                     limit: 2000
    t.string   "last_name",                      limit: 2000
    t.string   "middle_name",                    limit: 2000
    t.string   "aka",                            limit: 2000
    t.datetime "dob"
    t.string   "cob",                            limit: 50
    t.datetime "date_of_entry"
    t.string   "manner_of_entry",                limit: 50,    default: "EWI"
    t.string   "city_of_entry",                  limit: 50
    t.string   "specify_city_of_entry",          limit: 2000
    t.string   "state_of_entry",                 limit: 2
    t.datetime "date_of_apprehension"
    t.integer  "referring_office",               limit: 2
    t.string   "notification_city",              limit: 50
    t.string   "specify_not_city",               limit: 2000
    t.string   "notification_state",             limit: 2
    t.datetime "date_orr_notified"
    t.datetime "time_orr_notified"
    t.datetime "date_orr_approved"
    t.datetime "time_orr_approved"
    t.integer  "pregnancy",                      limit: 2
    t.integer  "injury",                         limit: 2
    t.integer  "illness",                        limit: 2
    t.integer  "hc_other",                       limit: 2
    t.integer  "behavior_wo_medication",         limit: 2
    t.integer  "behavior_w_medication",          limit: 2
    t.string   "note_bi_wo_medication",          limit: 32000
    t.string   "note_for_w_medication",          limit: 32000
    t.string   "immigration_status",             limit: 2000
    t.string   "referring_agency",               limit: 2000
    t.string   "orr_comments",                   limit: 32000
    t.string   "uac_status",                     limit: 50
    t.datetime "date_created"
    t.string   "user_created",                   limit: 112
    t.datetime "uptime"
    t.string   "upuser",                         limit: 112
    t.string   "gender",                         limit: 6
    t.string   "uac_fast_status",                limit: 1
    t.integer  "status_id",                      limit: 2
    t.integer  "agency_id",                      limit: 2
    t.string   "hc_summary",                     limit: 32000
    t.integer  "hc_ergent_condition",            limit: 2
    t.string   "uac_flag",                       limit: 30
    t.string   "processing_poc",                 limit: 2000
    t.string   "processing_email",               limit: 2000
    t.string   "referral_notes",                 limit: 32000
    t.string   "justification_for_ss_placement", limit: 32000
    t.integer  "known_gang_affiliation",         limit: 2
    t.string   "name_of_gang",                   limit: 500
    t.string   "gang_affiliation_summary",       limit: 32000
    t.integer  "detention_type_of_facility",     limit: 2
    t.string   "facility_name",                  limit: 250
    t.string   "facility_phone",                 limit: 20
    t.string   "facility_poc",                   limit: 500
    t.string   "facility_fax",                   limit: 20
    t.datetime "facility_admission_date"
    t.datetime "facility_discharged_date"
    t.string   "incident_rpt_in_dc",             limit: 32000
    t.string   "sum_of_mm_health_condition",     limit: 32000
    t.datetime "date_of_current_location"
    t.integer  "uac_health_concern",             limit: 2
    t.integer  "uac_criminal_charge",            limit: 2
    t.string   "uac_additional_info",            limit: 250
    t.string   "city_of_apprehension",           limit: 50
    t.string   "state_of_apprehension",          limit: 50
    t.string   "city_of_current_location",       limit: 50
    t.string   "state_of_current_location",      limit: 50
    t.string   "processing_phone",               limit: 20
    t.datetime "date_cancelled"
    t.string   "cancelled_by",                   limit: 112
    t.datetime "referral_date"
    t.string   "reffering_sector",               limit: 6
    t.string   "family_group",                   limit: 13
  end

  create_table "uac_ini_documents", primary_key: "doc_id", id: :bigint, force: :cascade do |t|
    t.bigint   "risk_assessment_id",                         null: false
    t.string   "file_name",          limit: 500,             null: false
    t.string   "org_file_name",      limit: 500,             null: false
    t.string   "file_type",          limit: 250
    t.bigint   "file_size"
    t.datetime "date_created"
    t.string   "uploaded_by",        limit: 250
    t.datetime "uptime"
    t.string   "upuser",             limit: 112
    t.integer  "isdeleted",          limit: 2,   default: 0
    t.string   "doc_type",           limit: 20,              null: false
  end

  create_table "uac_initial_assessment", primary_key: "initial_intakes_id", id: :bigint, force: :cascade do |t|
    t.bigint   "uac_program_id",                                         null: false
    t.string   "uac_arrival_date",             limit: 112
    t.datetime "uac_arrived_time"
    t.string   "uac_primary_language",         limit: 2000
    t.string   "language_inkate_conducted",    limit: 2000
    t.integer  "cor",                          limit: 2
    t.datetime "date_departure_cor"
    t.string   "someone_uac_knows_to_contact", limit: 2000
    t.integer  "had_medical_issue_past30",     limit: 2
    t.string   "medical_issue_past30_comment", limit: 32000
    t.integer  "had_medical_issue_ever",       limit: 2
    t.string   "medical_issue_ever_comment",   limit: 32000
    t.integer  "has_allergy",                  limit: 2
    t.integer  "has_dietary_needs",            limit: 2
    t.string   "dietary_needs_comment",        limit: 32000
    t.integer  "taking_medication",            limit: 2
    t.string   "reason_of_injuries",           limit: 32000
    t.string   "other_medical_concerns",       limit: 32000
    t.integer  "doc_visit_or_stayedin_hosp",   limit: 2
    t.string   "reason_for_visit_or_stayin",   limit: 32000
    t.integer  "has_tb_hist",                  limit: 2
    t.string   "explain_if_had_tb",            limit: 32000
    t.integer  "has_seizures_hist",            limit: 2
    t.string   "explain_if_had_seizures",      limit: 32000
    t.integer  "have_scars_tattoos",           limit: 2
    t.string   "explain_if_have_scars",        limit: 32000
    t.string   "explain_any_mental_issues",    limit: 32000
    t.string   "having_thoughts_of_harming",   limit: 32000
    t.integer  "feel_safe",                    limit: 2
    t.integer  "fear_someone",                 limit: 2
    t.string   "explain_fear",                 limit: 32000
    t.string   "need_anything_now",            limit: 32000
    t.string   "staff_signature",              limit: 2000
    t.datetime "signature_date"
    t.string   "staff_name",                   limit: 2000
    t.string   "staff_title",                  limit: 2000
    t.string   "translator_signature",         limit: 2000
    t.string   "sign_date_of_translator",      limit: 2000
    t.string   "translator_name",              limit: 2000
    t.string   "language",                     limit: 2000
    t.datetime "date_created"
    t.string   "user_created",                 limit: 112
    t.datetime "uptime"
    t.string   "upuser",                       limit: 112
    t.string   "allergy_comment",              limit: 32000
    t.integer  "isdeleted",                    limit: 2,     default: 0
    t.datetime "date_arrival_us"
    t.integer  "child_room_location",          limit: 2
    t.string   "uac_child_primary_language",   limit: 2000
    t.integer  "roomassignmentsafe",           limit: 2
    t.string   "roomassignmentsafeexp",        limit: 2000
    t.integer  "anyinappcomments",             limit: 2
    t.string   "anyinappcommentsexp",          limit: 2000
    t.string   "identifyas",                   limit: 200
    t.string   "identifytransgendered",        limit: 200
    t.string   "identifyasother",              limit: 200
    t.integer  "istransorintersex",            limit: 2
    t.integer  "tellsexualpreference",         limit: 2
    t.string   "tellsexualpreferenceexp",      limit: 2000
    t.integer  "isanythingthere",              limit: 2
    t.string   "isanythingthereexp",           limit: 2000
    t.integer  "lotofcomments",                limit: 2
    t.string   "lotofcommentsexp",             limit: 2000
    t.integer  "haseversexuallyactive",        limit: 2
    t.string   "haseversexuallyactiveyes",     limit: 200
    t.integer  "haseversexuallyactiveboth",    limit: 2
    t.string   "haseversexuallyactivebothexp", limit: 200
    t.integer  "didperformsexualfavours",      limit: 2
    t.string   "didperformsexualfavoursexp",   limit: 2000
    t.integer  "anytrouble",                   limit: 2
    t.string   "anytroubleexp",                limit: 2000
    t.integer  "hadanytalk",                   limit: 2
    t.string   "hadanytalkexp",                limit: 2000
    t.integer  "gendernonconfirming",          limit: 2
    t.string   "gendernonconfirmingexp",       limit: 2000
    t.integer  "anycriminalcharges",           limit: 2
    t.string   "anycriminalchargesexp",        limit: 2000
    t.string   "anymentaldisability",          limit: 200
    t.string   "disabilitylist",               limit: 200
    t.string   "anymentaldisabilityexp",       limit: 2000
    t.string   "physicalsize",                 limit: 200
    t.integer  "otherspecificinfo",            limit: 2
    t.string   "otherspecificinfoexp",         limit: 2000
    t.string   "housingandother",              limit: 200
    t.integer  "clinicianshared",              limit: 2
    t.string   "cliniciansharedexp",           limit: 2000
    t.integer  "childoryouth",                 limit: 2
    t.string   "childoryouthexp",              limit: 2000
    t.integer  "howtoreportthreats",           limit: 2
    t.string   "howtoreportthreatsexp",        limit: 2000
    t.integer  "movedtoprivateroom",           limit: 2
    t.string   "movedtoprivateroomexp",        limit: 2000
    t.integer  "movedtoroomarea",              limit: 2
    t.string   "movedtoroomareaexp",           limit: 2000
    t.integer  "alternativebathroom",          limit: 2
    t.string   "alternativebathroomexp",       limit: 2000
    t.integer  "educationalgroup",             limit: 2
    t.string   "educationalgroupexp",          limit: 2000
    t.integer  "developedsafetyplan",          limit: 2
    t.string   "developedsafetyplanexp",       limit: 2000
    t.integer  "increasedclinicalsessions",    limit: 2
    t.string   "increasedclinicalsessionsexp", limit: 2000
    t.integer  "mentalhealthservices",         limit: 2
    t.string   "mentalhealthservicesexp",      limit: 2000
    t.integer  "closerstaffsupervision",       limit: 2
    t.string   "closerstaffsupervisionexp",    limit: 2000
    t.integer  "staffedwithffs",               limit: 2
    t.string   "staffedwithffsexp",            limit: 2000
    t.integer  "otherhousing",                 limit: 2
    t.string   "otherhousingexp",              limit: 2000
    t.datetime "date_interviewed"
    t.string   "feel_safe_exp",                limit: 4000
    t.string   "roomlocation_talk_exp",        limit: 4000
  end

  create_table "uac_intakes_doc_list", primary_key: "doc_id", id: :bigint, force: :cascade do |t|
    t.bigint   "uac_id",                                 null: false
    t.string   "file_name",     limit: 2000
    t.string   "file_type",     limit: 250
    t.bigint   "file_size"
    t.binary   "file_content"
    t.string   "uploaded_by",   limit: 250
    t.integer  "isdeleted",     limit: 2,    default: 0
    t.datetime "uptime"
    t.string   "upuser",        limit: 112
    t.string   "org_file_name", limit: 250
  end

  create_table "uac_isp_certificate", primary_key: "certificate_id", id: :bigint, force: :cascade do |t|
    t.bigint   "service_plan_id",             null: false
    t.string   "upuser",          limit: 112
    t.datetime "uptime"
  end

  create_table "uac_isp_sub", primary_key: "isp_id", id: :bigint, force: :cascade do |t|
    t.bigint   "service_plan_id",                 null: false
    t.string   "service",            limit: 2000
    t.string   "frequency",          limit: 2000
    t.string   "tasks",              limit: 2000
    t.string   "person_responsible", limit: 2000
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "date_created"
    t.string   "user_created",       limit: 112
    t.datetime "uptime"
    t.string   "upuser",             limit: 112
  end

  create_table "uac_jobs", primary_key: "job_id", id: :bigint, force: :cascade do |t|
    t.string   "job_name",    limit: 50,  null: false
    t.string   "description", limit: 200
    t.string   "run_time",    limit: 20,  null: false
    t.integer  "active_flag", limit: 2,   null: false
    t.datetime "last_run",                null: false
  end

  create_table "uac_level1_logging", id: false, force: :cascade do |t|
    t.bigint   "logid"
    t.string   "userid",          limit: 100
    t.datetime "login_time"
    t.datetime "logout_time"
    t.string   "ip_address",      limit: 100
    t.string   "browser_name",    limit: 250
    t.string   "browser_type",    limit: 250
    t.string   "browser_version", limit: 250
    t.datetime "created_date"
    t.string   "event_type",      limit: 250
    t.index ["logid"], name: "uac_level1_logging_pk", unique: true, using: :btree
  end

  create_table "uac_level2_logging", id: false, force: :cascade do |t|
    t.bigint   "logid"
    t.string   "userid",            limit: 250
    t.string   "page_title",        limit: 250
    t.string   "page_request_type", limit: 250
    t.string   "ip_address",        limit: 100
    t.datetime "created_date"
    t.string   "browser_name",      limit: 250
    t.string   "browser_type",      limit: 250
    t.string   "browser_version",   limit: 250
    t.index ["logid"], name: "uac_level2_logging_pk", unique: true, using: :btree
  end

  create_table "uac_level3_logging", id: false, force: :cascade do |t|
    t.bigint   "logid"
    t.string   "userid",          limit: 250
    t.datetime "created_date"
    t.string   "object_name",     limit: 250
    t.string   "filter_criteria", limit: 4000
    t.string   "action_type",     limit: 250
  end

  create_table "uac_list_sir_type", id: false, force: :cascade do |t|
    t.bigint   "sir_type_id"
    t.bigint   "category_id"
    t.string   "description",  limit: 250
    t.string   "isemergency",  limit: 1
    t.datetime "date_created"
    t.string   "user_created", limit: 250
    t.datetime "uptime"
    t.string   "upuser",       limit: 112
    t.integer  "isdeleted",    limit: 2,   default: 0
  end

  create_table "uac_maintenance_event", id: false, force: :cascade do |t|
    t.integer  "event_id",        limit: 2
    t.string   "event",           limit: 2000
    t.integer  "isactive",        limit: 2,    default: 0
    t.datetime "date_of_event"
    t.integer  "additional_note", limit: 2,    default: 0
  end

  create_table "uac_medical_concern", primary_key: "medical_concern_id", id: :decimal, precision: 38, force: :cascade do |t|
    t.bigint  "initial_intakes_id",                            null: false
    t.decimal "concern_id",                     precision: 38, null: false
    t.integer "yes_no",             limit: 2
    t.string  "other_exp",          limit: 500
    t.index ["initial_intakes_id", "concern_id"], name: "uac_medical_concer_pk", unique: true, using: :btree
  end

  create_table "uac_medical_history", primary_key: ["mm_condition_id", "uac_assessment_id"], force: :cascade do |t|
    t.integer  "mm_condition_id",   limit: 2,                   null: false
    t.bigint   "uac_assessment_id",                             null: false
    t.string   "clarification",     limit: 2000
    t.datetime "date_created"
    t.string   "user_created",      limit: 112
    t.decimal  "medical_hist_id",                precision: 38, null: false
    t.integer  "condition_yn",      limit: 2
  end

  create_table "uac_medical_screening", primary_key: "screening_id", id: :decimal, precision: 38, force: :cascade do |t|
    t.decimal  "uac_program_id",                            precision: 38,             null: false
    t.datetime "medical_exam_date"
    t.integer  "pregnancy",                     limit: 2
    t.string   "medical_examiner_name",         limit: 112
    t.datetime "dental_exam_date"
    t.datetime "tst_date_applied"
    t.integer  "tst_result",                    limit: 2
    t.decimal  "specity_if_nagative",                       precision: 38
    t.datetime "igra_date_drawn"
    t.string   "igra_type",                     limit: 6
    t.integer  "igra_result",                   limit: 2
    t.datetime "date_xray"
    t.integer  "xray_findings",                 limit: 2
    t.string   "xray_scpecify_if_abnormal",     limit: 112
    t.integer  "suggestive_tb",                 limit: 2
    t.integer  "smears_result",                 limit: 2
    t.integer  "nucleicacid_result",            limit: 2
    t.integer  "caltures_results",              limit: 2
    t.integer  "drug_susceptibility_resutl",    limit: 2
    t.string   "suscep_cpecify_if_other",       limit: 112
    t.integer  "communicable_disease_id",       limit: 2,                  default: 8
    t.string   "comm_disease_cpecify_if_other", limit: 112
    t.integer  "intakes_interrupted",           limit: 2
    t.integer  "release_delayed",               limit: 2
    t.integer  "quarantine",                    limit: 2
    t.decimal  "number_of_uac_quarantined",                 precision: 38
    t.integer  "ltbi_treatment_started",        limit: 2
    t.integer  "3months_rehinment",             limit: 2
    t.datetime "date_created"
    t.string   "user_created",                  limit: 112
    t.datetime "uptime"
    t.string   "upuser",                        limit: 112
    t.integer  "disease_classification_id",     limit: 2,                  default: 0
    t.integer  "isdeleted",                     limit: 2,                  default: 0
  end

  create_table "uac_medical_screening_notes", primary_key: "screeining_note_id", id: :bigint, force: :cascade do |t|
    t.bigint   "uac_program_id",                    null: false
    t.string   "comments",              limit: 500
    t.string   "attachement_file_name", limit: 112
    t.datetime "date_created"
    t.string   "user_created",          limit: 112
    t.datetime "uptime"
    t.string   "upuser",                limit: 112
  end

  create_table "uac_medical_visit", primary_key: "visit_id", id: :bigint, force: :cascade do |t|
    t.bigint   "uac_program_id"
    t.datetime "date_of_visit"
    t.string   "specify_other_reason",    limit: 250
    t.string   "specify_other_diagnosis", limit: 250
    t.string   "summary_of_outcome",      limit: 500
    t.datetime "date_created"
    t.string   "user_created",            limit: 112
    t.datetime "uptime"
    t.string   "upuser",                  limit: 112
  end

  create_table "uac_medical_visit_diagnosis", id: false, force: :cascade do |t|
    t.decimal "visit_id",               precision: 38
    t.integer "diagnosis_id", limit: 2
  end

  create_table "uac_medical_visit_reason", id: false, force: :cascade do |t|
    t.decimal "visit_id",                  precision: 38
    t.integer "visit_reason_id", limit: 2
  end

  create_table "uac_medical_visit_type", id: false, force: :cascade do |t|
    t.decimal "visit_id",                precision: 38
    t.integer "visit_type_id", limit: 2
  end

  create_table "uac_medication_history", primary_key: "medication_hist_id", id: :bigint, force: :cascade do |t|
    t.bigint   "uac_assessment_id",               null: false
    t.string   "medication_name",   limit: 2000
    t.string   "dosage",            limit: 2000
    t.string   "timeframe",         limit: 2000
    t.string   "medical_condition", limit: 32000
    t.datetime "date_created"
    t.string   "user_created",      limit: 112
  end

  create_table "uac_medication_info", primary_key: "medication_id", id: :decimal, precision: 38, force: :cascade do |t|
    t.bigint   "uac_program_id",                   null: false
    t.string   "medication_name",    limit: 2000
    t.string   "dose",               limit: 2000
    t.string   "medication_purpose", limit: 2000
    t.integer  "is_psychotropic",    limit: 2
    t.string   "drug_direction",     limit: 32000
    t.datetime "drug_date"
    t.datetime "date_created"
    t.string   "user_created",       limit: 112
    t.datetime "uptime"
    t.string   "upuser",             limit: 112
  end

  create_table "uac_mental_issues", primary_key: "uac_mental_issues_id", id: :decimal, precision: 38, force: :cascade do |t|
    t.bigint  "initial_intakes_id",           null: false
    t.integer "mental_issue_id",    limit: 2, null: false
    t.index ["initial_intakes_id", "mental_issue_id"], name: "uac_mental_issues_pk", unique: true, using: :btree
  end

  create_table "uac_phc_cluster_info", primary_key: "cluster_id", id: :bigint, force: :cascade do |t|
    t.bigint "phc_id",                    null: false
    t.string "anumber",        limit: 10, null: false
    t.bigint "uac_id"
    t.bigint "uac_program_id"
    t.index ["phc_id"], name: "uac_phc_claster_info__idxv1", using: :btree
  end

  create_table "uac_phc_exposures", primary_key: "phc_exposure_id", id: :bigint, force: :cascade do |t|
    t.bigint   "phc_id",                                  null: false
    t.string   "anumber",                     limit: 10,  null: false
    t.string   "relationship_to_current_uc",  limit: 250
    t.datetime "date_first_exposure_to_case"
    t.integer  "outcome_of_ci",               limit: 2
    t.bigint   "general_info_id"
    t.bigint   "uac_program_id"
    t.index ["phc_id", "anumber"], name: "uac_phc_exposures__idx", using: :btree
    t.index ["phc_id"], name: "uac_phc_exposures_phc_id_idx", using: :btree
  end

  create_table "uac_program_exit", primary_key: "program_exit_id", id: :bigint, force: :cascade do |t|
    t.bigint   "uac_program_id"
    t.datetime "date_of_discharge"
    t.integer  "type_of_discharge", limit: 2
    t.datetime "date_created"
    t.string   "user_created",      limit: 112
    t.datetime "uptime"
    t.string   "upuser",            limit: 112
  end

  create_table "uac_program_info", primary_key: "uac_program_id", id: :decimal, precision: 38, force: :cascade do |t|
    t.decimal  "uac_id",                      precision: 38, null: false
    t.integer  "program_id",      limit: 2,                  null: false
    t.datetime "date_referred"
    t.integer  "bio_verified",    limit: 2
    t.datetime "date_admitted"
    t.string   "current_status",  limit: 50
    t.datetime "date_discharged"
    t.datetime "date_created"
    t.string   "user_created",    limit: 112
    t.string   "upuser",          limit: 112
    t.datetime "uptime"
  end

  create_table "uac_psychological_eval", primary_key: "uac_psychological_eval_id", id: :decimal, precision: 38, force: :cascade do |t|
    t.decimal  "uac_case_review_id",               precision: 38, null: false
    t.datetime "date_of_eval"
    t.string   "evaluator",          limit: 2000
    t.string   "axis1",              limit: 2000
    t.string   "axis2",              limit: 2000
    t.string   "axis3",              limit: 2000
    t.string   "axis4",              limit: 2000
    t.string   "axis5",              limit: 2000
    t.string   "sum_of_recommend",   limit: 32000
    t.datetime "date_created"
    t.string   "user_created",       limit: 112
    t.datetime "uptime"
    t.string   "upuser",             limit: 112
  end

  create_table "uac_psycosocial_risk", primary_key: "uac_psycosocial_risk_id", id: :bigint, force: :cascade do |t|
    t.bigint "psycosocial_risk_id",                    null: false
    t.string "other_exp",                  limit: 250
    t.bigint "health_psycosocial_risk_id",             null: false
    t.index ["psycosocial_risk_id"], name: "uac_psycosocial_risk_id__idx", using: :btree
  end

  create_table "uac_release_request", primary_key: "release_id", id: :bigint, force: :cascade do |t|
    t.bigint   "uac_program_id",                                           null: false
    t.string   "requester_name",                 limit: 2000
    t.string   "requester_title",                limit: 2000
    t.string   "requester_phone",                limit: 22
    t.integer  "type_of_release",                limit: 2,                              comment: "1: Release to Sponsor, 2: Release to Program"
    t.bigint   "sponsor_id"
    t.string   "sponsor_aka",                    limit: 2000
    t.string   "specify_non_immigrant_visa",     limit: 32000
    t.string   "specify_other_immigrant_status", limit: 32000
    t.integer  "proof_of_relationship",          limit: 2
    t.string   "detail_of_proof",                limit: 32000
    t.integer  "has_doc_to_prove_relationship",  limit: 2
    t.string   "program_name",                   limit: 2000
    t.string   "program_address1",               limit: 2000
    t.string   "program_address2",               limit: 2000
    t.string   "program_city",                   limit: 2000
    t.string   "program_state",                  limit: 2
    t.string   "program_zipcode",                limit: 10
    t.string   "prog_primary_contact",           limit: 2000
    t.string   "prog_primary_phone",             limit: 22
    t.string   "prog_primary_email",             limit: 112
    t.integer  "is_urm_program",                 limit: 2
    t.integer  "is_program_licensed",            limit: 2
    t.string   "type_of_license",                limit: 2000
    t.integer  "prog_agreed_to_orr_spnsr_cond",  limit: 2
    t.string   "program_identification",         limit: 32000
    t.string   "case_worker_name",               limit: 2000
    t.string   "case_worker_comments",           limit: 32000
    t.integer  "attorney_contacted",             limit: 2
    t.integer  "case_worker_recommendation",     limit: 2
    t.integer  "cw_recommendation_after_hs",     limit: 2
    t.integer  "cw_cancellation_reason_id",      limit: 2
    t.string   "case_coordinator_name",          limit: 2000
    t.string   "case_coordinator_comments",      limit: 32000
    t.integer  "cc_recommendation",              limit: 2
    t.integer  "cc_recommendation_after_hs",     limit: 2
    t.integer  "cc_cancellation_reason_id",      limit: 2
    t.integer  "orr_decision",                   limit: 2
    t.integer  "orr_home_study_status",          limit: 2
    t.integer  "orr_decision_after_hs",          limit: 2
    t.datetime "release_approved_date"
    t.datetime "release_scheduled_date"
    t.string   "release_approved_by",            limit: 2000
    t.datetime "next_sch_court_appearance"
    t.datetime "date_sponsor_notified"
    t.string   "reason_to_notify_ice_in24h",     limit: 32000
    t.string   "user_notes",                     limit: 32000
    t.datetime "date_created"
    t.string   "user_created",                   limit: 112
    t.datetime "uptime"
    t.string   "upuser",                         limit: 112
    t.string   "program_type",                   limit: 2000
    t.string   "orr_comments",                   limit: 32000
    t.integer  "isdeleted",                      limit: 2,     default: 0
    t.datetime "cw_uptime"
    t.string   "cw_upuser",                      limit: 112
    t.datetime "cc_uptime"
    t.string   "cc_upuser",                      limit: 112
    t.datetime "orr_uptime"
    t.string   "orr_upuser",                     limit: 112
  end

  create_table "uac_risk_assessment", primary_key: "risk_assessment_id", id: :bigint, force: :cascade do |t|
    t.bigint   "uac_program_id",                                         null: false
    t.string   "uac_primary_language",          limit: 2000
    t.string   "language_inkate_conducted",     limit: 2000
    t.integer  "roomassignmentsafe",            limit: 2
    t.string   "roomassignmentsafeexp",         limit: 2000
    t.integer  "anyinappcomments",              limit: 2
    t.string   "anyinappcommentsexp",           limit: 2000
    t.integer  "istransorintersex",             limit: 2
    t.integer  "tellsexualpreference",          limit: 2
    t.string   "tellsexualpreferenceexp",       limit: 2000
    t.integer  "isanythingthere",               limit: 2
    t.string   "isanythingthereexp",            limit: 2000
    t.integer  "lotofcomments",                 limit: 2
    t.string   "lotofcommentsexp",              limit: 2000
    t.integer  "haseversexuallyactive",         limit: 2
    t.integer  "sexualactivity_type",           limit: 2
    t.integer  "sexualactivity_consensual",     limit: 2
    t.string   "sexualactivity_consensual_exp", limit: 2000
    t.integer  "didperformsexualfavours",       limit: 2
    t.string   "didperformsexualfavoursexp",    limit: 2000
    t.integer  "hadanytalk",                    limit: 2
    t.string   "hadanytalkexp",                 limit: 2000
    t.integer  "gendernonconfirming",           limit: 2
    t.string   "gendernonconfirmingexp",        limit: 2000
    t.integer  "anycriminalcharges",            limit: 2
    t.string   "anycriminalchargesexp",         limit: 2000
    t.integer  "anymentaldisability",           limit: 2
    t.integer  "disability_mental",             limit: 2
    t.string   "anymentaldisabilityexp",        limit: 2000
    t.integer  "physicalsize",                  limit: 2
    t.integer  "otherspecificinfo",             limit: 2
    t.string   "otherspecificinfoexp",          limit: 2000
    t.string   "housingandother",               limit: 2000
    t.integer  "clinicianshared",               limit: 2
    t.string   "cliniciansharedexp",            limit: 2000
    t.integer  "childoryouth",                  limit: 2
    t.string   "childoryouthexp",               limit: 2000
    t.integer  "howtoreportthreats",            limit: 2
    t.string   "howtoreportthreatsexp",         limit: 2000
    t.integer  "movedtoprivateroom",            limit: 2
    t.string   "movedtoprivateroomexp",         limit: 2000
    t.integer  "movedtoroomarea",               limit: 2
    t.string   "movedtoroomareaexp",            limit: 2000
    t.integer  "alternativebathroom",           limit: 2
    t.string   "alternativebathroomexp",        limit: 2000
    t.integer  "educationalgroup",              limit: 2
    t.string   "educationalgroupexp",           limit: 2000
    t.integer  "developedsafetyplan",           limit: 2
    t.string   "developedsafetyplanexp",        limit: 2000
    t.integer  "increasedclinicalsessions",     limit: 2
    t.string   "increasedclinicalsessionsexp",  limit: 2000
    t.integer  "mentalhealthservices",          limit: 2
    t.string   "mentalhealthservicesexp",       limit: 2000
    t.integer  "closerstaffsupervision",        limit: 2
    t.string   "closerstaffsupervisionexp",     limit: 2000
    t.integer  "staffedwithffs",                limit: 2
    t.string   "staffedwithffsexp",             limit: 2000
    t.integer  "otherhousing",                  limit: 2
    t.string   "otherhousingexp",               limit: 2000
    t.datetime "date_interviewed"
    t.string   "feel_safe_exp",                 limit: 4000
    t.string   "roomlocation_talk_exp",         limit: 4000
    t.string   "staff_signature",               limit: 2000
    t.datetime "signature_date"
    t.string   "staff_name",                    limit: 2000
    t.string   "staff_title",                   limit: 2000
    t.string   "translator_signature",          limit: 2000
    t.string   "sign_date_of_translator",       limit: 2000
    t.string   "translator_name",               limit: 2000
    t.string   "language",                      limit: 2000
    t.integer  "isdeleted",                     limit: 2,    default: 1
    t.datetime "date_created"
    t.string   "user_created",                  limit: 112
    t.datetime "uptime"
    t.string   "upuser",                        limit: 112
    t.integer  "if_identify_as_transgender",    limit: 2
    t.integer  "like_to_live_with",             limit: 2
    t.datetime "date_of_mental_health_service"
    t.integer  "medical_service",               limit: 2
    t.datetime "date_of_medical_service"
    t.string   "exp_medical_service",           limit: 2000
    t.string   "haseversexualactivity_exp",     limit: 2000
    t.integer  "transgender_or_intersex",       limit: 2
    t.integer  "disability_physical",           limit: 2
    t.integer  "disability_developmental",      limit: 2
    t.integer  "other_attachments",             limit: 2
    t.string   "mentaldisability_suspectedexp", limit: 2000
    t.string   "sexualactivity_decline_exp",    limit: 2000
    t.integer  "nospecificaction",              limit: 2
    t.string   "nospecificaction_exp",          limit: 2000
  end

  create_table "uac_sa_labtesting", primary_key: "uac_sa_lab_testing_id", id: :bigint, force: :cascade do |t|
    t.bigint   "sa_labtesting_id",             null: false
    t.string   "test_name",        limit: 112, null: false
    t.integer  "is_test_done",     limit: 2
    t.datetime "specimen_date"
    t.integer  "test_result_id",   limit: 2
    t.datetime "date_created",                 null: false
    t.string   "user_created",     limit: 112, null: false
    t.datetime "date_updated",                 null: false
    t.string   "user_updated",     limit: 112, null: false
    t.bigint   "doc_id"
    t.index ["sa_labtesting_id"], name: "uac_sa_labtesting__idxv1", using: :btree
    t.index ["test_name"], name: "uac_sa_labtesting__idxv2", using: :btree
    t.index ["test_result_id"], name: "uac_sa_labtesting__idxv3", using: :btree
  end

  create_table "uac_secure_review", primary_key: "secure_review_id", id: :bigint, force: :cascade do |t|
    t.decimal  "uac_program_id",                   precision: 38,                  null: false
    t.integer  "is_under_review",    limit: 2
    t.string   "reason_for_review",  limit: 32000,                default: "NULL"
    t.string   "ffs_secure_review",  limit: 2000
    t.datetime "date_secure_review"
    t.integer  "isdeleted",          limit: 2,                    default: 0
    t.datetime "date_created"
    t.string   "user_created",       limit: 112
    t.datetime "uptime"
    t.string   "upuser",             limit: 112
  end

  create_table "uac_sir", primary_key: "sir_id", id: :decimal, precision: 38, force: :cascade do |t|
    t.decimal  "uac_program_id",                       precision: 38,             null: false
    t.datetime "date_of_incident"
    t.datetime "date_reported"
    t.string   "location_of_incident",   limit: 32000
    t.integer  "abuse_perpetrator_id",   limit: 2
    t.integer  "runaway",                limit: 2
    t.integer  "runaway_risk",           limit: 2
    t.integer  "absense_of_uac",         limit: 2
    t.string   "synopsis_of_incident",   limit: 32000
    t.string   "witnesses",              limit: 32000
    t.string   "staff_responses",        limit: 32000
    t.string   "resolution",             limit: 32000
    t.string   "recommendations",        limit: 32000
    t.string   "info_released_to_media", limit: 32000
    t.string   "jurisdiction_name",      limit: 2000
    t.string   "jurisdiction_title",     limit: 2000
    t.string   "jurisdiction_phone",     limit: 22
    t.string   "contact_name",           limit: 2000
    t.string   "contact_title",          limit: 2000
    t.string   "contact_phone",          limit: 22
    t.string   "filer_name",             limit: 2000
    t.string   "filer_title",            limit: 2000
    t.string   "filer_phone",            limit: 22
    t.string   "supervisor_name",        limit: 2000
    t.string   "supervisor_title",       limit: 2000
    t.string   "supervisor_phone",       limit: 22
    t.string   "supervisor_note",        limit: 32000
    t.datetime "date_created"
    t.string   "user_created",           limit: 112
    t.datetime "uptime"
    t.string   "upuser",                 limit: 112
    t.string   "sir_addendum_note",      limit: 32000
    t.integer  "isdeleted",              limit: 2,                    default: 0
  end

  create_table "uac_sir_category", primary_key: "category_id", id: :bigint, force: :cascade do |t|
    t.string   "description",       limit: 250
    t.bigint   "parent_id"
    t.bigint   "description_order"
    t.datetime "date_created"
    t.string   "user_created",      limit: 250
    t.datetime "uptime"
    t.string   "upuser",            limit: 112
    t.integer  "isdeleted",         limit: 2,   default: 0
    t.bigint   "ui_column_order"
  end

  create_table "uac_sir_category_map", primary_key: "category_map_id", id: :bigint, force: :cascade do |t|
    t.bigint   "sir_id"
    t.bigint   "category_id"
    t.string   "other_explain", limit: 4000
    t.datetime "date_created"
    t.string   "user_created",  limit: 250
    t.datetime "uptime"
    t.string   "upuser",        limit: 112
    t.integer  "isdeleted",     limit: 2,    default: 0
    t.integer  "addendum_id"
  end

  create_table "uac_sir_documents", primary_key: "doc_id", id: :bigint, force: :cascade do |t|
    t.bigint   "uac_sir_id"
    t.string   "sir_doc_type",           limit: 250
    t.string   "file_name",              limit: 500
    t.string   "org_file_name",          limit: 500
    t.string   "file_type",              limit: 250
    t.bigint   "file_size"
    t.integer  "isdeleted",              limit: 2,   default: 0
    t.integer  "addendum_id"
    t.bigint   "sa_followup_rpt_id"
    t.datetime "date_created"
    t.string   "user_created",           limit: 112
    t.datetime "uptime"
    t.string   "upuser",                 limit: 112
    t.bigint   "sir_followup_report_id"
  end

  create_table "uac_sir_event", id: false, force: :cascade do |t|
    t.decimal  "event_id",                        precision: 38
    t.datetime "date_of_event"
    t.string   "synopsis_of_event", limit: 16000
    t.datetime "date_created"
    t.string   "user_created",      limit: 250
    t.datetime "uptime"
    t.string   "upuser",            limit: 112
    t.integer  "isdeleted",         limit: 2,                    default: 0
    t.string   "time_of_event",     limit: 50
    t.integer  "program_id",        limit: 2
  end

  create_table "uac_sir_fields_history", primary_key: "history_id", id: :decimal, precision: 32, force: :cascade do |t|
    t.bigint   "sir_id",                                     null: false
    t.datetime "date_completed"
    t.string   "staff",                         limit: 200
    t.string   "description_of_incident",       limit: 2000
    t.string   "staff_response_intervention",   limit: 2000
    t.string   "sa_action_for_indinvolved",     limit: 2000
    t.string   "sa_action_for_victim",          limit: 2000
    t.string   "sa_action_for_allegedperp",     limit: 2000
    t.string   "updated_recommendations",       limit: 2000
    t.string   "progress_of_sl_investigation",  limit: 2000
    t.string   "results_of_sl_investigation",   limit: 2000
    t.string   "progress_of_le_investigation",  limit: 2000
    t.string   "results_of_le_investigation",   limit: 2000
    t.string   "follow_up_resolution",          limit: 2000
    t.string   "progress_of_cps_investigation", limit: 2000
    t.string   "results_of_cps_investigation",  limit: 2000
    t.index ["sir_id"], name: "uac_sir_fields_history_index1", using: :btree
  end

  create_table "uac_sir_followup_rpt", primary_key: "sir_followup_report_id", id: :decimal, precision: 38, force: :cascade do |t|
    t.decimal  "uac_program_id",                              precision: 38
    t.decimal  "event_id",                                    precision: 38
    t.string   "sa_type_of_incident",            limit: 250
    t.string   "sa_type_of_allegation",          limit: 250
    t.string   "sa_type_of_allegation_specify",  limit: 250
    t.string   "incident_at_another_facility",   limit: 1
    t.string   "care_provider_name",             limit: 250
    t.string   "care_provider_city",             limit: 250
    t.string   "care_provider_state",            limit: 250
    t.datetime "date_of_incident"
    t.datetime "date_reported_to_care_provider"
    t.datetime "date_reported_to_orr"
    t.string   "location_of_incident",           limit: 250
    t.string   "school_area",                    limit: 250
    t.string   "location_of_incident_specify",   limit: 500
    t.string   "description_of_incident",        limit: 4000
    t.string   "uac_or_anyone_injured",          limit: 1
    t.string   "uac_or_anyone_injured_specify",  limit: 500
    t.string   "staff_response_intervention",    limit: 500
    t.string   "sa_action_for_victim",           limit: 500
    t.string   "sa_action_for_allegedperp",      limit: 500
    t.string   "sa_action_for_indinvolved",      limit: 500
    t.string   "updated_recommendations",        limit: 500
    t.string   "cps_different_from_state_lic",   limit: 1
    t.string   "reported_to_cps",                limit: 1
    t.datetime "date_reported_to_cps"
    t.string   "cps_case_confirmation_number",   limit: 250
    t.string   "was_cps_incident_investigated",  limit: 1
    t.datetime "date_notify_cps_inc_invest"
    t.string   "cps_incident_explain",           limit: 500
    t.string   "progress_of_cps_investigation",  limit: 500
    t.string   "results_of_cps_investigation",   limit: 500
    t.string   "reported_to_state_licensing",    limit: 1
    t.datetime "date_of_state_lic_report"
    t.string   "state_case_confirmation_number", limit: 250
    t.string   "was_state_inc_investigated",     limit: 1
    t.datetime "date_notify_state_inci_invest"
    t.string   "state_incident_explain",         limit: 500
    t.string   "progress_of_sl_investigation",   limit: 500
    t.string   "results_of_sl_investigation",    limit: 500
    t.string   "reported_to_law_enforcement",    limit: 1
    t.datetime "date_report_to_law_enforce"
    t.string   "le_officers_name",               limit: 250
    t.string   "le_officers_badge_number",       limit: 250
    t.string   "le_case_confirmation_number",    limit: 250
    t.string   "was_le_inc_investigated",        limit: 1
    t.datetime "date_notify_le_inc_invest"
    t.string   "le_incident_explain",            limit: 500
    t.string   "progress_of_le_investigation",   limit: 500
    t.string   "results_of_le_investigation",    limit: 500
    t.string   "reported_to_doj",                limit: 1
    t.datetime "date_reported_to_doj"
    t.string   "reported_to_eousa",              limit: 1
    t.datetime "date_reported_to_eousa"
    t.string   "reported_to_fbi",                limit: 1
    t.datetime "date_reported_to_fbi"
    t.string   "was_doj_inc_investigated",       limit: 1
    t.string   "progress_of_doj_investigation",  limit: 500
    t.string   "results_of_doj_investigation",   limit: 500
    t.string   "doj_report_notes",               limit: 500
    t.string   "was_outside_counselor_offered",  limit: 1
    t.string   "was_child_advocate_recommended", limit: 1
    t.string   "any_exchange_of_bodily_fluids",  limit: 1
    t.string   "taken_for_forensic_exam",        limit: 1
    t.string   "svcs_followup_vic_explain",      limit: 500
    t.string   "could_v_be_at_pregnancy_risk",   limit: 1
    t.string   "access_to_pregnancy_test",       limit: 1
    t.datetime "pregnancy_test_date"
    t.string   "pregnancy_test_explain",         limit: 500
    t.string   "access_to_er_contraception",     limit: 1
    t.datetime "emergency_contraception_date"
    t.string   "er_contraception_explain",       limit: 500
    t.string   "access_to_lawful_pregancy_svcs", limit: 1
    t.datetime "lawful_pregancy_svcs_date"
    t.string   "lawful_pregancy_svcs_explain",   limit: 500
    t.string   "perpetrator_removed_duties",     limit: 1
    t.datetime "perp_removed_duties_date"
    t.string   "staff_member_terminated",        limit: 1
    t.datetime "staff_member_terminated_date"
    t.string   "staff_member_reinstated",        limit: 1
    t.datetime "staff_member_reinstated_date"
    t.string   "perpetrator_removed_explain",    limit: 500
    t.string   "perpetrator_health_findings",    limit: 500
    t.string   "perpetrator_discharge_plan",     limit: 500
    t.string   "perpetrator_additional_info",    limit: 500
    t.string   "issues_prior_to_incident",       limit: 500
    t.string   "issues_with_resp_to_inc",        limit: 500
    t.string   "issues_post_incident",           limit: 500
    t.string   "advisory_information",           limit: 500
    t.string   "were_correct_actions_issued",    limit: 1
    t.string   "correct_actions_issued_exp",     limit: 500
    t.string   "complaint_with_correct_actions", limit: 1
    t.datetime "complaint_correct_actions_date"
    t.string   "completed_incident_review",      limit: 1
    t.string   "incident_review_follow",         limit: 500
    t.string   "final_cps_status",               limit: 1
    t.string   "final_cps_findings",             limit: 250
    t.string   "final_cps_findings_exp",         limit: 250
    t.string   "final_cps_charges_filed",        limit: 1
    t.datetime "final_cps_charges_fileddate"
    t.string   "final_cps_charges_minor",        limit: 1
    t.string   "final_cps_minorname",            limit: 250
    t.string   "final_cps_minoranum",            limit: 250
    t.string   "final_cps_staff",                limit: 1
    t.string   "final_cps_staffname",            limit: 250
    t.string   "final_cps_stafftitle",           limit: 250
    t.string   "final_cps_specify",              limit: 1
    t.string   "final_cps_other",                limit: 250
    t.string   "final_lle_status",               limit: 1
    t.string   "final_lle_charges_filed",        limit: 1
    t.datetime "final_lle_charges_fileddate"
    t.string   "final_lle_charges_minor",        limit: 1
    t.string   "final_lle_minorname",            limit: 250
    t.string   "final_lle_minoranum",            limit: 250
    t.string   "final_lle_staff",                limit: 1
    t.string   "final_lle_staffname",            limit: 250
    t.string   "final_lle_stafftitle",           limit: 250
    t.string   "final_lle_specify",              limit: 1
    t.string   "final_lle_other",                limit: 250
    t.string   "final_sl_status",                limit: 1
    t.string   "final_sl_substance_alleg",       limit: 1
    t.string   "final_sl_findings",              limit: 250
    t.string   "final_sl_findings_exp",          limit: 250
    t.string   "final_sl_charges_filed",         limit: 1
    t.datetime "final_sl_charges_fileddate"
    t.string   "final_sl_charges_minor",         limit: 1
    t.string   "final_sl_minorname",             limit: 250
    t.string   "final_sl_minoranum",             limit: 250
    t.string   "final_sl_staff",                 limit: 1
    t.string   "final_sl_staffname",             limit: 250
    t.string   "final_sl_stafftitle",            limit: 250
    t.string   "final_sl_specify",               limit: 1
    t.string   "final_sl_other",                 limit: 250
    t.string   "final_sl_were_findings",         limit: 1
    t.datetime "final_sl_were_findingsdate"
    t.string   "final_sl_status_explain",        limit: 250
    t.string   "final_doj_status",               limit: 1
    t.string   "final_doj_charges_filed",        limit: 1
    t.datetime "final_doj_charges_fileddate"
    t.string   "final_doj_charges_minor",        limit: 1
    t.string   "final_doj_minorname",            limit: 250
    t.string   "final_doj_minoranum",            limit: 250
    t.string   "final_ldoj_staff",               limit: 1
    t.string   "final_doj_staffname",            limit: 250
    t.string   "final_doj_stafftitle",           limit: 250
    t.string   "final_doj_specify",              limit: 1
    t.string   "final_doj_other",                limit: 250
    t.string   "case_dispo_convicted",           limit: 1
    t.datetime "case_dispo_convicted_date"
    t.string   "case_dispo_convicted_court",     limit: 250
    t.string   "case_dispo_convicted_convic",    limit: 250
    t.string   "case_dispo_convicted_sentence",  limit: 250
    t.string   "case_dispo_convicted_explain",   limit: 250
    t.string   "case_dispo_notconvicted",        limit: 1
    t.string   "case_dispo_chargesdrop",         limit: 1
    t.string   "case_dispo_convicted_other",     limit: 1
    t.string   "case_dispo_convicted_specify",   limit: 250
    t.datetime "case_close_date"
    t.string   "case_close_date_notes",          limit: 250
    t.string   "assigned_ffs",                   limit: 250
    t.string   "assigned_po",                    limit: 250
    t.string   "assigned_psa",                   limit: 250
    t.string   "assigned_cfs",                   limit: 250
    t.datetime "date_created"
    t.string   "user_created",                   limit: 250
    t.datetime "uptime"
    t.string   "upuser",                         limit: 112
    t.integer  "isdeleted",                      limit: 2,                   default: 0
  end

  create_table "uac_sir_media_contacts", id: false, force: :cascade do |t|
    t.decimal  "media_contact_id",              precision: 38
    t.decimal  "sir_id",                        precision: 38
    t.string   "contact_name",     limit: 2000
    t.string   "agency",           limit: 2000
    t.string   "phone",            limit: 22
    t.datetime "date_contact"
    t.index ["media_contact_id"], name: "uac_sir_media_contacts_pk", unique: true, using: :btree
  end

  create_table "uac_sir_new", primary_key: "uac_sir_id", id: :bigint, force: :cascade do |t|
    t.decimal  "sir_id",                                       precision: 38
    t.decimal  "uac_program_id",                               precision: 38
    t.decimal  "event_id",                                     precision: 38
    t.bigint   "sir_type_id"
    t.string   "abuse_neglect_type",             limit: 250
    t.string   "alleged_perpetrator",            limit: 250
    t.string   "past_abuse_other_exp",           limit: 250
    t.string   "past_abuse_dhs_cust_other_exp",  limit: 250
    t.string   "past_abuse_mbi_other_exp",       limit: 250
    t.string   "past_abuse_iile_other_exp",      limit: 250
    t.string   "past_abuse_ch_other_exp",        limit: 250
    t.string   "other_threats_to_uc_other_exp",  limit: 250
    t.string   "er_death_in_care_provider",      limit: 250
    t.string   "er_immediate_hospitalization",   limit: 1
    t.string   "er_major_disturbance_other_exp", limit: 250
    t.string   "er_natural_disaster_other_exp",  limit: 250
    t.string   "er_other_exp",                   limit: 250
    t.string   "incident_at_another_facility",   limit: 1
    t.string   "care_provider_name",             limit: 250
    t.string   "care_provider_city",             limit: 250
    t.string   "care_provider_state",            limit: 250
    t.datetime "date_reported_to_care_provider"
    t.datetime "date_reported_to_orr"
    t.string   "location_of_incident",           limit: 250
    t.string   "description_of_incident",        limit: 16000
    t.string   "staff_response_intervention",    limit: 2000
    t.string   "follow_up_resolution",           limit: 2000
    t.string   "updated_recommendations",        limit: 2000
    t.string   "reported_to_state_licensing",    limit: 1
    t.datetime "date_of_state_lic_report"
    t.string   "state_case_confirmation_number", limit: 250
    t.string   "was_state_inc_investigated",     limit: 1
    t.datetime "date_notify_state_inci_invest"
    t.string   "state_incident_explain",         limit: 2000
    t.string   "school_area",                    limit: 250
    t.string   "dhs_facility",                   limit: 250
    t.string   "location_of_incident_specify",   limit: 2000
    t.string   "uac_or_anyone_injured",          limit: 1
    t.string   "uac_or_anyone_injured_specify",  limit: 2000
    t.string   "cps_different_from_state_lic",   limit: 1
    t.string   "reported_to_cps",                limit: 1
    t.datetime "date_reported_to_cps"
    t.string   "cps_case_confirmation_number",   limit: 250
    t.string   "was_cps_incident_investigated",  limit: 1
    t.datetime "date_notify_cps_inc_invest"
    t.string   "cps_incident_explain",           limit: 2000
    t.string   "progress_of_cps_investigation",  limit: 2000
    t.string   "results_of_cps_investigation",   limit: 2000
    t.string   "reported_to_law_enforcement",    limit: 1
    t.datetime "date_report_to_law_enforce"
    t.string   "le_officers_name",               limit: 250
    t.string   "le_officers_badge_number",       limit: 250
    t.string   "le_case_confirmation_number",    limit: 250
    t.string   "was_le_inc_investigated",        limit: 1
    t.datetime "date_notify_le_inc_invest"
    t.string   "le_incident_explain",            limit: 2000
    t.string   "progress_of_le_investigation",   limit: 2000
    t.string   "results_of_le_investigation",    limit: 2000
    t.string   "reported_to_doj",                limit: 1
    t.datetime "date_reported_to_doj"
    t.string   "doj_report_notes",               limit: 2000
    t.string   "sa_type_of_incident",            limit: 250
    t.string   "sa_type_of_allegation",          limit: 250
    t.string   "sa_how_uac_involved",            limit: 250
    t.string   "sa_were_other_uac_involved",     limit: 1
    t.string   "sa_were_staff_present_at_inc",   limit: 1
    t.string   "major_incidents_threaten",       limit: 1
    t.string   "physical_aggression_to_others",  limit: 1
    t.string   "verbal_aggression_to_others",    limit: 1
    t.string   "possesion_of_weapon",            limit: 1
    t.string   "self_injury_behaviour",          limit: 1
    t.string   "suicidal_ideation",              limit: 1
    t.string   "suicide_attempt",                limit: 1
    t.string   "use_of_drugs_in_orr_custody",    limit: 1
    t.string   "runaway",                        limit: 1
    t.string   "runaway_value",                  limit: 1
    t.string   "attempted_runaway_value",        limit: 1
    t.string   "incidents_involve_le",           limit: 1
    t.string   "le_investigate_response",        limit: 1
    t.string   "le_arrest",                      limit: 1
    t.string   "le_interview",                   limit: 1
    t.string   "le_search",                      limit: 1
    t.string   "le_other",                       limit: 1
    t.string   "le_other_specify",               limit: 250
    t.string   "safety_measures",                limit: 1
    t.string   "one_on_one_supervision",         limit: 1
    t.string   "use_of_restraints",              limit: 1
    t.string   "patdown_other_searches",         limit: 1
    t.string   "criminal_history",               limit: 1
    t.string   "criminal_hist_in_homecountry",   limit: 1
    t.string   "criminal_history_in_us",         limit: 1
    t.string   "ch_other",                       limit: 1
    t.string   "ch_other_specify",               limit: 250
    t.string   "other_type",                     limit: 1
    t.string   "contact_or_threat_to_uc_in_orr", limit: 1
    t.string   "other_type_specify",             limit: 250
    t.datetime "date_created"
    t.string   "user_created",                   limit: 250
    t.datetime "uptime"
    t.string   "upuser",                         limit: 112
    t.integer  "isdeleted",                      limit: 2,                    default: 0
    t.integer  "addendum_id"
    t.string   "sa_action_for_victim",           limit: 2000
    t.string   "sa_action_for_allegedperp",      limit: 2000
    t.string   "sa_action_for_indinvolved",      limit: 2000
    t.string   "progress_of_sl_investigation",   limit: 2000
    t.string   "results_of_sl_investigation",    limit: 2000
    t.string   "sa_type_of_allegation_specify",  limit: 250
    t.string   "abuse_neglect_type_other",       limit: 250
    t.string   "alleged_perpetrator_other",      limit: 250
    t.bigint   "is_sir_for_runaway"
    t.string   "sa_how_uac_involved_specify",    limit: 250
    t.string   "dhs_facility_other",             limit: 250
    t.string   "other_threats_to_uc",            limit: 1
    t.string   "other_threats_to_uc_other",      limit: 1
    t.string   "er_death_in_cp_other",           limit: 250
    t.string   "pregnancy_termination_exp",      limit: 4000
  end

  create_table "uac_sir_notification_list", primary_key: "notification_list_id", id: :bigint, force: :cascade do |t|
    t.bigint   "uac_sir_id"
    t.string   "notification_list_type",     limit: 250
    t.string   "notification_list_type_sub", limit: 250
    t.string   "name",                       limit: 250
    t.string   "agency_title",               limit: 250
    t.datetime "date_notified"
    t.string   "email",                      limit: 250
    t.string   "phone",                      limit: 250
    t.string   "method_of_notification",     limit: 250
    t.bigint   "display_order"
    t.datetime "date_created"
    t.string   "user_created",               limit: 250
    t.datetime "uptime"
    t.string   "upuser",                     limit: 112
    t.integer  "isdeleted",                  limit: 2,   default: 0
    t.integer  "addendum_id"
    t.bigint   "sa_followup_rpt_id"
    t.string   "other_explain",              limit: 250
  end

  create_table "uac_sir_uacinvolved_list", primary_key: "uacinvolved_list_id", id: :bigint, force: :cascade do |t|
    t.bigint   "uac_sir_id"
    t.bigint   "sir_type_id"
    t.string   "uac_name",     limit: 250
    t.string   "anumber",      limit: 250
    t.string   "uac_role",     limit: 250
    t.string   "uac_title",    limit: 250
    t.datetime "date_created"
    t.string   "user_created", limit: 250
    t.datetime "uptime"
    t.string   "upuser",       limit: 112
    t.integer  "isdeleted",    limit: 2,   default: 0
  end

  create_table "uac_sir_ucinvolved_list", id: false, force: :cascade do |t|
    t.bigint   "ucinvolved_list_id"
    t.bigint   "uac_sir_id"
    t.string   "ucinvolved_list_type", limit: 250
    t.string   "uc_name",              limit: 250
    t.string   "anumber",              limit: 250
    t.string   "uc_role",              limit: 250
    t.string   "uc_title",             limit: 250
    t.datetime "date_created"
    t.string   "user_created",         limit: 250
    t.datetime "uptime"
    t.string   "upuser",               limit: 112
    t.integer  "isdeleted",            limit: 2,   default: 0
    t.integer  "addendum_id"
    t.bigint   "sa_followup_rpt_id"
    t.string   "other_explain",        limit: 250
  end

  create_table "uac_sponsor_list", primary_key: ["uac_id", "sponsor_id"], force: :cascade do |t|
    t.bigint   "uac_id",                                    null: false
    t.bigint   "sponsor_id",                                null: false
    t.integer  "current_sponsor",             limit: 2
    t.string   "sponsor_address",             limit: 2000
    t.string   "sponsor_city",                limit: 2000
    t.string   "sponsor_state",               limit: 2
    t.string   "sponsor_zipcode",             limit: 10
    t.string   "sponsor_home_phone",          limit: 22
    t.string   "sponsor_work_phone",          limit: 22
    t.string   "sponsor_fax",                 limit: 22
    t.string   "sponsor_email",               limit: 112
    t.integer  "sponsor_relationship_to_uac", limit: 2
    t.integer  "uac_relationship_to_sponsor", limit: 2
    t.string   "comments",                    limit: 32000
    t.datetime "date_created"
    t.string   "user_created",                limit: 112
    t.datetime "uptime"
    t.string   "upuser",                      limit: 112
  end

  create_table "uac_sponsor_sponsored_uacs", primary_key: "sponsored_id", id: :bigint, force: :cascade do |t|
    t.bigint   "uac_id",                                null: false
    t.bigint   "sponsor_id",                            null: false
    t.string   "uac_anumber",               limit: 10
    t.integer  "relationship_id",           limit: 2
    t.integer  "facilityid_sponsored_from", limit: 2
    t.datetime "date_created"
    t.string   "user_created",              limit: 112
  end

  create_table "uac_substance_use_history", primary_key: "substance_hist_id", id: :bigint, force: :cascade do |t|
    t.decimal  "substance_id",                   precision: 38, null: false
    t.decimal  "uac_assessment_id",              precision: 38, null: false
    t.string   "frequency_of_use",  limit: 2000
    t.datetime "date_of_last_use"
    t.datetime "date_created"
    t.string   "user_created",      limit: 112
    t.integer  "yes_no",            limit: 2
  end

  create_table "uac_transfer_request", primary_key: "transfer_request_id", id: :bigint, force: :cascade do |t|
    t.bigint   "uac_program_id",                                           null: false
    t.string   "height",                         limit: 6
    t.float    "weight"
    t.string   "eye_color",                      limit: 2000
    t.string   "identifying_marks",              limit: 32000
    t.integer  "requested_program_type",         limit: 2
    t.datetime "date_requested"
    t.string   "requesting_party",               limit: 2000
    t.string   "requestor_name",                 limit: 2000
    t.string   "requestor_title",                limit: 2000
    t.string   "requestor_phone",                limit: 22
    t.integer  "concur_with_requesting_party",   limit: 2
    t.string   "concur_note",                    limit: 32000
    t.integer  "recommended_program_type",       limit: 2
    t.datetime "date_recommended"
    t.string   "case_coordinator_name",          limit: 2000
    t.integer  "standard_placement",             limit: 2
    t.integer  "convicted_as_adult",             limit: 2
    t.integer  "adjudicated_delinquent",         limit: 2
    t.integer  "criminal_charges",               limit: 2
    t.integer  "chargeable",                     limit: 2
    t.integer  "provide_less_restrictive",       limit: 2
    t.integer  "provide_more_restrictive",       limit: 2
    t.integer  "minor_medical_health",           limit: 2
    t.integer  "minor_mental_health",            limit: 2
    t.integer  "violent_behavior",               limit: 2
    t.integer  "disruptive_behavior",            limit: 2
    t.integer  "minors_safety",                  limit: 2
    t.integer  "flight_risk",                    limit: 2
    t.integer  "emergency_influx",               limit: 2
    t.integer  "minor_attorney_contacted",       limit: 2
    t.string   "attorney_of_record",             limit: 2000
    t.string   "attorney_phone",                 limit: 22
    t.integer  "pregnancy",                      limit: 2
    t.integer  "injury",                         limit: 2
    t.integer  "illness",                        limit: 2
    t.integer  "nondiagnosed_illness_wo_drug",   limit: 2
    t.integer  "nondiagnosed_illness_with_drug", limit: 2
    t.integer  "diagnosed_illness_wo_drug",      limit: 2
    t.integer  "diagnosed_illness_with_drug",    limit: 2
    t.integer  "non_violent_conviction",         limit: 2
    t.integer  "non_violent_charge",             limit: 2
    t.integer  "charges_dropped",                limit: 2
    t.string   "medical_mental_health_summary",  limit: 32000
    t.string   "behavior_summary",               limit: 32000
    t.string   "family_reunification_status",    limit: 32000
    t.string   "immigration_court_status",       limit: 32000
    t.string   "case_worker",                    limit: 2000
    t.string   "case_worker_comments",           limit: 32000
    t.integer  "case_worker_suggests_trnsf",     limit: 2
    t.integer  "tms_historical_trnsf_request",   limit: 2
    t.integer  "tms_histcl_proposed_program",    limit: 2
    t.integer  "tms_hstcl_proposed_progtype_id", limit: 2
    t.integer  "proposed_program_id",            limit: 2
    t.datetime "date_cw_comments"
    t.string   "orr_ducs_comments",              limit: 32000
    t.string   "orr_decision",                   limit: 2000
    t.datetime "date_of_decision"
    t.string   "orr_decision_maker_name",        limit: 2000
    t.integer  "packet_completed",               limit: 2
    t.string   "uac_belongings",                 limit: 32000
    t.integer  "request_type",                   limit: 2
    t.datetime "trnsf_sch_date"
    t.datetime "next_schdate_court_appearance"
    t.string   "reason_to_notice_ice",           limit: 32000
    t.integer  "orr_decided_relocate",           limit: 2
    t.integer  "uac_has_special_needs",          limit: 2
    t.string   "specify_special_needs",          limit: 32000
    t.integer  "other_orr",                      limit: 2
    t.string   "other_orr_specify",              limit: 32000
    t.datetime "departure_date"
    t.datetime "departure_time"
    t.string   "trnsp_staff_name",               limit: 2000
    t.string   "trnsf_staff_title",              limit: 2000
    t.string   "trnsp_staff_comments",           limit: 32000
    t.datetime "arrival_date"
    t.datetime "arrival_time"
    t.string   "receiving_staff_name",           limit: 2000
    t.string   "receiving_staff_title",          limit: 2000
    t.string   "receiving_staff_comments",       limit: 32000
    t.datetime "date_created"
    t.string   "user_created",                   limit: 112
    t.datetime "uptime"
    t.string   "upuser",                         limit: 112
    t.integer  "isdeleted",                      limit: 2,     default: 0
  end

  create_table "uac_working_diagnosis", id: false, force: :cascade do |t|
    t.bigint   "working_diagnosis_id"
    t.bigint   "health_assessment_id"
    t.integer  "program_id",                    limit: 2
    t.integer  "disease_id",                    limit: 2
    t.integer  "uac_admitted_to_icu",           limit: 2
    t.integer  "total_number_of_nights_in_icu", limit: 2
    t.integer  "working_diagnosis_confirmed",   limit: 2
    t.integer  "did_uac_returned_to_clinic",    limit: 2
    t.integer  "prn_as_needed",                 limit: 2
    t.integer  "follow_up",                     limit: 2
    t.string   "follow_up_exp",                 limit: 500
    t.integer  "referred_to_specialist",        limit: 2
    t.string   "referred_to_specialist_exp",    limit: 500
    t.integer  "prolonged_treatment",           limit: 2
    t.string   "prolonged_treatment_exp",       limit: 500
    t.integer  "surgery_needed",                limit: 2
    t.string   "surgery_needed_exp",            limit: 500
    t.integer  "other",                         limit: 2
    t.string   "other_exp",                     limit: 500
    t.integer  "quarantined",                   limit: 2
    t.integer  "release_delayed",               limit: 2
    t.integer  "immunization_given",            limit: 2
    t.integer  "medication_given",              limit: 2
    t.integer  "shd_notified",                  limit: 2
    t.string   "shd_state",                     limit: 2
    t.integer  "dhs_notified",                  limit: 2
    t.datetime "date_dhs_notified"
    t.string   "if_not_notified_exp",           limit: 500
    t.integer  "injury_to_self",                limit: 2
    t.integer  "injury_to_staff",               limit: 2
    t.integer  "injury_to_other_kid",           limit: 2
    t.integer  "police_action",                 limit: 2
    t.integer  "restrained",                    limit: 2
    t.integer  "consequence_other",             limit: 2
    t.string   "consequence_other_exp",         limit: 500
    t.string   "consiquence_exp",               limit: 500
    t.datetime "date_created"
    t.string   "user_created",                  limit: 112
    t.datetime "date_updated"
    t.string   "user_updated",                  limit: 112
    t.integer  "other_conditions",              limit: 2,   default: 0
    t.string   "viral_fever_exp",               limit: 500
    t.string   "tb_type",                       limit: 50
    t.string   "meningitis_type",               limit: 100
    t.string   "meningitis_other_exp",          limit: 100
    t.bigint   "other_conditions_cat"
    t.bigint   "other_conditions_subcat"
    t.string   "other_conditions_subcat_exp",   limit: 100
    t.string   "wd_other_exp",                  limit: 500
    t.integer  "lt_performed",                  limit: 2
    t.index ["disease_id"], name: "uac_working_diagnosis__idxv2", using: :btree
    t.index ["health_assessment_id"], name: "uac_working_diagnosis__idxv1", using: :btree
    t.index ["working_diagnosis_id"], name: "uac_working_diagnosis__idx", using: :btree
  end

  create_table "xmljob_activity_logs", id: false, force: :cascade do |t|
    t.decimal  "activity_id",                      precision: 38
    t.string   "new_filename",       limit: 512
    t.string   "status",             limit: 112,                  default: "NULL"
    t.decimal  "uac_id",                           precision: 38
    t.string   "transaction_id",     limit: 512
    t.datetime "datetime_started"
    t.datetime "datetime_completed"
    t.string   "process_info",       limit: 32000
  end

  add_foreign_key "health_abnormal_cxr", "health_contact_investigation", column: "contact_investigation_id", primary_key: "contact_investigation_id", name: "health_abnormal_cxr_fk2"
  add_foreign_key "health_abnormal_cxr", "health_tb_screening", primary_key: "health_tb_screening_id", name: "health_abnormal_cxr_fk1"
  add_foreign_key "health_abnormal_cxr", "uac_health_cxr", column: "health_cxr_id", primary_key: "health_cxr_id", name: "uac_abn_cxr_uac_health_cxr_fk"
  add_foreign_key "health_assessment", "health_general_info", column: "general_info_id", primary_key: "general_info_id", name: "assessment_general_info_fk"
  add_foreign_key "health_contact_investigation", "list_working_diagnosis", column: "disease_id", primary_key: "working_diagnosis_id", name: "health_contact_investigat_fk1"
  add_foreign_key "health_contact_investigation", "uac_phc_exposures", column: "phc_exposure_id", primary_key: "phc_exposure_id", name: "health_contact_investigat_fk2"
  add_foreign_key "health_files_uploaded", "health_contact_investigation", column: "contact_investigation_id", primary_key: "contact_investigation_id", name: "health_files_uploaded_fk1"
  add_foreign_key "health_files_uploaded", "health_general_info", column: "general_info_id", primary_key: "general_info_id", name: "files_uploaded_general_info_fk"
  add_foreign_key "health_files_uploaded", "list_health_file_type", column: "health_file_type_id", primary_key: "health_file_type_id", name: "health_file_type_fk"
  add_foreign_key "health_general_info", "list_location_child_got_care", column: "location_child_received_care", primary_key: "location_id", name: "location_crc_fk"
  add_foreign_key "health_hst_physical_assessment", "health_general_info", column: "general_info_id", primary_key: "general_info_id", name: "hst_physical_general_info_fk"
  add_foreign_key "health_illness_of_phc", "health_general_info", column: "general_info_id", primary_key: "general_info_id", name: "phc_health_general_info_fk"
  add_foreign_key "health_lab_test", "health_contact_investigation", column: "contact_investigation_id", primary_key: "contact_investigation_id", name: "health_lab_test_fk1"
  add_foreign_key "health_lab_test", "health_files_uploaded", column: "doc_id", primary_key: "doc_id", name: "health_lab_test_fk2"
  add_foreign_key "health_lab_test", "health_general_info", column: "general_info_id", primary_key: "general_info_id", name: "health_lab_test_giid_fk"
  add_foreign_key "health_lab_test", "list_test_result", column: "test_result_id", primary_key: "result_id", name: "health_lab_test_result_fk"
  add_foreign_key "health_lab_test", "list_test_type", column: "test_id", primary_key: "test_id", name: "health_lab_test_test_type_fk"
  add_foreign_key "health_medical_case_wrapup", "health_general_info", column: "general_info_id", primary_key: "general_info_id", name: "case_wrapup_general_info_fk"
  add_foreign_key "health_prid_labtesting", "health_general_info", column: "general_info_id", primary_key: "general_info_id", name: "prid_health_general_info_fk"
  add_foreign_key "health_prid_labtesting", "list_test_result", column: "test_result_id", primary_key: "result_id", name: "prid_labtesting_result_fk"
  add_foreign_key "health_prid_labtesting", "list_test_type", column: "test_id", primary_key: "test_id", name: "prid_labtesting_test_type_fk"
  add_foreign_key "health_prid_labtesting", "list_working_diagnosis", column: "disease_id", primary_key: "working_diagnosis_id", name: "prid_working_diagnosis_fk"
  add_foreign_key "health_psycosociall_risk", "health_general_info", column: "general_info_id", primary_key: "general_info_id", name: "health_psycosociall_risk_fk1"
  add_foreign_key "health_review_symptoms", "health_general_info", column: "general_info_id", primary_key: "general_info_id", name: "health_rs_general_info_fk"
  add_foreign_key "health_review_symptoms", "list_symptoms_exams", column: "symptom_id", primary_key: "symptom_id", name: "healthlist_symptoms_exams_fk"
  add_foreign_key "health_sa_labtesting", "health_general_info", column: "general_info_id", primary_key: "general_info_id", name: "health_sa_labtest_gi_fk"
  add_foreign_key "health_tb_screening", "health_general_info", column: "general_info_id", primary_key: "general_info_id", name: "health_general_info_fk"
  add_foreign_key "health_tb_screening", "list_tb_screening_location", column: "tb_screen_location_id", primary_key: "location_id", name: "list_tb_screening_location_fk"
  add_foreign_key "list_programs", "list_program_type", column: "program_type_id", primary_key: "program_type_id", name: "listprogrram_type_fk"
  add_foreign_key "list_working_diagnosis", "list_wd_category", column: "wd_category_id", primary_key: "wd_category_id", name: "list_working_diagnosis_fk1"
  add_foreign_key "reason_for_typeoffacility", "list_reason_typeoffacility", column: "reason_type_id", primary_key: "type_id", name: "list_reason_typeoffacility_fk"
  add_foreign_key "reason_for_typeoffacility", "uac_program_info", column: "uac_program_id", primary_key: "uac_program_id", name: "reasonfacility_uacprog_info_fk"
  add_foreign_key "sir_abuse_allegations", "list_abuse_allegations", column: "abuse_type_id", primary_key: "abuse_type_id", name: "sir_list_abuse_allegations_fk"
  add_foreign_key "sir_abuse_allegations", "uac_sir", column: "sir_id", primary_key: "sir_id", name: "sir_abuse_allegations_fk"
  add_foreign_key "sir_medical_mental_issues", "list_sir_mm_issues", column: "medical_mental_issue_id", primary_key: "medical_mental_issue_id", name: "list_sir_mm_issues_fk"
  add_foreign_key "sir_medical_mental_issues", "uac_sir", column: "sir_id", primary_key: "sir_id", name: "sir_mm_issues_uac_sri_fk"
  add_foreign_key "sir_other_incident_types", "list_other_incident_types", column: "incident_type_id", primary_key: "incident_type_id", name: "sir_other_incident_types_fk"
  add_foreign_key "sir_other_incident_types", "uac_sir", column: "sir_id", primary_key: "sir_id", name: "sir_other_incident_typs_uac_fk"
  add_foreign_key "sir_uac_behavior", "list_uac_behavior", column: "behavior_id", primary_key: "behavior_id", name: "sir_uac_behavior_fk"
  add_foreign_key "sir_uac_behavior", "uac_sir", column: "sir_id", primary_key: "sir_id", name: "sir_uac_behavior_uac_sri_fk"
  add_foreign_key "sponsor_criminal_history", "sponsor_info", column: "sponsor_id", primary_key: "sponsor_id", name: "sponsor_criminal_fk"
  add_foreign_key "sponsor_household_occupants", "list_relationship", column: "relationship_to_minor", primary_key: "relationship_id", name: "sponsor_hh_relationship_fk2"
  add_foreign_key "sponsor_household_occupants", "list_relationship", column: "relationship_to_sponsor", primary_key: "relationship_id", name: "sponsor_hh_relationship_fk"
  add_foreign_key "sponsor_household_occupants", "sponsor_info", column: "sponsor_id", primary_key: "sponsor_id", name: "sponsor_hh_occupants_info_fk"
  add_foreign_key "sponsor_info", "list_legal_status", column: "legal_status_id", primary_key: "legal_status_id", name: "sponsor_info_legal_status_fk"
  add_foreign_key "sponsor_info", "list_states", column: "state", primary_key: "state", name: "sponsor_info_list_states_fk"
  add_foreign_key "uac_abnormal_cxr", "health_abnormal_cxr", column: "abnormal_cxr_id", primary_key: "abnormal_cxr_id", name: "uac_abnormal_cxr_fk1"
  add_foreign_key "uac_abnormal_cxr", "list_suggestive_active_tb", column: "stb_id", primary_key: "stb_id", name: "uac_abnormal_cxr_fk2"
  add_foreign_key "uac_apprehension_info", "uac_info", column: "uac_id", primary_key: "uac_id", name: "uac_apprehension_info_fk"
  add_foreign_key "uac_assessment", "uac_program_info", column: "uac_program_id", primary_key: "uac_program_id", name: "uac_assesment_uac_info_fk"
  add_foreign_key "uac_cr_medical_history", "list_medical_mental_condition", column: "mm_condition_id", primary_key: "mm_condition_id", name: "uac_cr_medical_history_fk2"
  add_foreign_key "uac_cr_medical_history", "uac_case_review", primary_key: "uac_case_review_id", name: "uac_cr_medical_history_fk1"
  add_foreign_key "uac_discharge_notification", "list_programs", column: "program_uac_transfer_to", primary_key: "program_id", name: "uac_discharge_programs_fk"
  add_foreign_key "uac_discharge_notification", "uac_program_info", column: "uac_program_id", primary_key: "uac_program_id", name: "uac_discharge_notif_info_fk"
  add_foreign_key "uac_doctor_visit", "list_doc_diagnosis", column: "diagnosis_id", primary_key: "diagnosis_id", name: "uac_list_doc_diagnosis_fk"
  add_foreign_key "uac_doctor_visit", "list_doc_visit_reason", column: "visit_reason_id", primary_key: "visit_reason_id", name: "uac_list_doc_visit_reason_fk"
  add_foreign_key "uac_doctor_visit", "list_doc_visit_type", column: "visit_type_id", primary_key: "visit_type_id", name: "uac_list_doc_visit_type_fk"
  add_foreign_key "uac_doctor_visit", "uac_program_info", column: "uac_program_id", primary_key: "uac_program_id", name: "uac_doctor_visit_uac_info_fk"
  add_foreign_key "uac_documents", "uac_program_info", column: "uac_program_id", primary_key: "uac_program_id", name: "uac_documents_fk1"
  add_foreign_key "uac_education_placement", "uac_program_info", column: "uac_program_id", primary_key: "uac_program_id", name: "uac_education_plcment_info_fk"
  add_foreign_key "uac_effort", "list_effort_type", column: "effort_type_id", primary_key: "effort_type_id", name: "uac_effort_list_effort_type_fk"
  add_foreign_key "uac_effort", "uac_program_info", column: "uac_program_id", primary_key: "uac_program_id", name: "uac_effort_list_programs_fk"
  add_foreign_key "uac_emotional_concerns", "list_emotional_concerns", column: "emotional_concern_id", primary_key: "emotional_concern_id", name: "uac_emotional_concerns_fk"
  add_foreign_key "uac_emotional_concerns", "uac_initial_assessment", column: "initial_intakes_id", primary_key: "initial_intakes_id", name: "uac_emotional_concerns_assm_fk"
  add_foreign_key "uac_family_info", "uac_initial_assessment", column: "initial_intakes_id", primary_key: "initial_intakes_id", name: "uac_family_info_assessment_fk"
  add_foreign_key "uac_family_relations", "uac_assessment", primary_key: "uac_assessment_id", name: "uac_family_relation_asses_fk"
  add_foreign_key "uac_fast", "list_other_escape_risk_factors", column: "c_escapes_from_gov_custody", primary_key: "factor_id", name: "uac_fast_list_risk_factor_fkv1"
  add_foreign_key "uac_fast", "list_other_escape_risk_factors", column: "f_escapes_from_gov_custody", primary_key: "factor_id", name: "uac_fast_list_risk_factor_fkv3"
  add_foreign_key "uac_fast", "list_other_escape_risk_factors", column: "i_escapes_from_gov_custody", primary_key: "factor_id", name: "uac_fast_list_risk_factors_fk"
  add_foreign_key "uac_fast", "list_pef_gov_custody", column: "c_vt_gov_custody", primary_key: "factor_id", name: "uac_fast_pef_gov_custody_fkv1"
  add_foreign_key "uac_fast", "list_pef_gov_custody", column: "f_vt_gov_custody", primary_key: "factor_id", name: "uac_fast_pef_gov_custody_fkv3"
  add_foreign_key "uac_fast", "list_pef_gov_custody", column: "i_vt_gov_custody", primary_key: "factor_id", name: "uac_fast_list_pef_gov_cstdy_fk"
  add_foreign_key "uac_fast", "uac_info", column: "uac_id", primary_key: "uac_id", name: "uac_fast_uac_info_fk"
  add_foreign_key "uac_gang_determination_by", "uac_info", column: "uac_id", primary_key: "uac_id", name: "uac_gang_determination_fk"
  add_foreign_key "uac_health_cxr", "health_contact_investigation", column: "contact_investigation_id", primary_key: "contact_investigation_id", name: "uac_health_cxr_fk1"
  add_foreign_key "uac_health_cxr", "health_tb_screening", primary_key: "health_tb_screening_id", name: "uac_tbcxt_screening_fk"
  add_foreign_key "uac_health_igra", "health_contact_investigation", column: "contact_investigation_id", primary_key: "contact_investigation_id", name: "uac_health_igra_fk1"
  add_foreign_key "uac_health_igra", "health_tb_screening", primary_key: "health_tb_screening_id", name: "health_tb_screening_fk"
  add_foreign_key "uac_health_igra", "list_test_result", column: "result", primary_key: "result_id", name: "uac_igra_test_result_fk"
  add_foreign_key "uac_health_igra", "list_test_type", column: "test_id", primary_key: "test_id", name: "uac_igra_test_type_fk"
  add_foreign_key "uac_health_immunization", "health_assessment", primary_key: "health_assessment_id", name: "uac_immunization_assessment_fk"
  add_foreign_key "uac_health_immunization", "health_contact_investigation", column: "contact_investigation_id", primary_key: "contact_investigation_id", name: "uac_health_immunization_fk1"
  add_foreign_key "uac_health_immunization", "health_files_uploaded", column: "doc_id", primary_key: "doc_id", name: "uac_health_imm_health_files_fk"
  add_foreign_key "uac_health_immunization", "list_health_immunization", column: "vaccine_id", primary_key: "immunization_id", name: "uac_list_immunization_fk"
  add_foreign_key "uac_health_medication", "health_contact_investigation", column: "contact_investigation_id", primary_key: "contact_investigation_id", name: "uac_health_medication_fk1"
  add_foreign_key "uac_health_tblabtesting", "health_tb_screening", primary_key: "health_tb_screening_id", name: "tblabtesting_tb_screening_fk"
  add_foreign_key "uac_health_tblabtesting", "list_specimen_type", column: "speciment_type", primary_key: "specimen_type_id", name: "uac_specimen_type_fk"
  add_foreign_key "uac_health_tblabtesting", "list_test_result", column: "result", primary_key: "result_id", name: "tblabtesting_test_result_fk"
  add_foreign_key "uac_health_tblabtesting", "list_test_type", column: "test_id", primary_key: "test_id", name: "tblabtesting_list_test_type_fk"
  add_foreign_key "uac_health_tst", "health_contact_investigation", column: "contact_investigation_id", primary_key: "contact_investigation_id", name: "uac_health_tst_fk1"
  add_foreign_key "uac_health_tst", "health_tb_screening", primary_key: "health_tb_screening_id", name: "uac_health_tb_screening_fk"
  add_foreign_key "uac_health_tst", "list_test_result", column: "interpretation", primary_key: "result_id", name: "uac_health_tst_test_result_fk"
  add_foreign_key "uac_iia_summary", "uac_initial_assessment", column: "initial_intakes_id", primary_key: "initial_intakes_id", name: "uac_iia_summary_fk1"
  add_foreign_key "uac_immunization", "list_immunizations", column: "immune_type_id", primary_key: "immune_id", name: "uac_immunization_list_fk"
  add_foreign_key "uac_immunization", "uac_program_info", column: "uac_program_id", primary_key: "uac_program_id", name: "uac_immunization_uac_info_fk"
  add_foreign_key "uac_individual_service_plan", "uac_program_info", column: "uac_program_id", primary_key: "uac_program_id", name: "uac_isp_fk"
  add_foreign_key "uac_initial_assessment", "uac_program_info", column: "uac_program_id", primary_key: "uac_program_id", name: "uac_initial_assessment_ua_fk1"
  add_foreign_key "uac_intakes_doc_list", "uac_info", column: "uac_id", primary_key: "uac_id", name: "uac_intakes_doc_list_fk"
  add_foreign_key "uac_isp_certificate", "uac_individual_service_plan", column: "service_plan_id", primary_key: "service_plan_id", name: "uac_isp_certificate_fk"
  add_foreign_key "uac_isp_sub", "uac_individual_service_plan", column: "service_plan_id", primary_key: "service_plan_id", name: "uac_isp_service_plan_fk"
  add_foreign_key "uac_medical_concern", "list_medical_concern", column: "concern_id", primary_key: "concern_id", name: "uac_medical_concer_list_fk"
  add_foreign_key "uac_medical_concern", "uac_initial_assessment", column: "initial_intakes_id", primary_key: "initial_intakes_id", name: "uac_medical_concern_assessm_fk"
  add_foreign_key "uac_medical_history", "list_medical_mental_condition", column: "mm_condition_id", primary_key: "mm_condition_id", name: "uac_med_hist_list_mm_cond_fk"
  add_foreign_key "uac_medical_screening", "list_comm_diseases", column: "communicable_disease_id", primary_key: "disease_id", name: "uac_med_screen_comm_disease_fk"
  add_foreign_key "uac_medical_screening", "uac_program_info", column: "uac_program_id", primary_key: "uac_program_id", name: "uac_medical_screening_fk1"
  add_foreign_key "uac_medical_screening_notes", "uac_info", column: "uac_program_id", primary_key: "uac_id", name: "uac_medical_screening_notes_fk"
  add_foreign_key "uac_mental_issues", "list_mental_issues", column: "mental_issue_id", primary_key: "mental_issue_id", name: "uac_men_issues_list_issues_fk"
  add_foreign_key "uac_mental_issues", "uac_initial_assessment", column: "initial_intakes_id", primary_key: "initial_intakes_id", name: "uac_mental_issues_assm_fk"
  add_foreign_key "uac_phc_cluster_info", "health_illness_of_phc", column: "phc_id", primary_key: "phc_id", name: "uac_ill_phc_claster_fk"
  add_foreign_key "uac_phc_exposures", "health_illness_of_phc", column: "phc_id", primary_key: "phc_id", name: "uac_phc_exposures_fk"
  add_foreign_key "uac_psycosocial_risk", "health_psycosociall_risk", column: "health_psycosocial_risk_id", primary_key: "health_psycosocial_risk_id", name: "uac_psycosocial_risk_fk1"
  add_foreign_key "uac_psycosocial_risk", "list_psycosocial_risk", column: "psycosocial_risk_id", primary_key: "psycosocial_risk_id", name: "uac_psycosocial_risk_fk2"
  add_foreign_key "uac_release_request", "uac_program_info", column: "uac_program_id", primary_key: "uac_program_id", name: "release_request_uac_info_fk"
  add_foreign_key "uac_sa_labtesting", "health_sa_labtesting", column: "sa_labtesting_id", primary_key: "sa_labtesting_id", name: "uac_sa_labtesting__fk"
  add_foreign_key "uac_sa_labtesting", "list_test_result", column: "test_result_id", primary_key: "result_id", name: "uac_sa_labtesting_result_fk"
  add_foreign_key "uac_secure_review", "uac_program_info", column: "uac_program_id", primary_key: "uac_program_id", name: "uac_secure_review_fk1"
  add_foreign_key "uac_sir", "uac_program_info", column: "uac_program_id", primary_key: "uac_program_id", name: "uac_sri_uac_info_fk"
  add_foreign_key "uac_sponsor_list", "sponsor_info", column: "sponsor_id", primary_key: "sponsor_id", name: "uac_sponsor_list_info_fk"
  add_foreign_key "uac_sponsor_list", "uac_info", column: "uac_id", primary_key: "uac_id", name: "uac_sponsor_list_uac_info_fk"
  add_foreign_key "uac_sponsor_sponsored_uacs", "sponsor_info", column: "sponsor_id", primary_key: "sponsor_id", name: "uac_sponsor_sponsored_info_fk"
  add_foreign_key "uac_sponsor_sponsored_uacs", "uac_info", column: "uac_id", primary_key: "uac_id", name: "uac_sponsor_sponsored_uacs_fk"
  add_foreign_key "uac_substance_use_history", "list_substances", column: "substance_id", primary_key: "substance_id", name: "uac_substance_use_history_fk"
  add_foreign_key "uac_substance_use_history", "uac_assessment", primary_key: "uac_assessment_id", name: "uac_substance_use_history_fk1"
  add_foreign_key "uac_transfer_request", "uac_program_info", column: "uac_program_id", primary_key: "uac_program_id", name: "uac_transfer_request_info_fk"
end
