--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.3
-- Dumped by pg_dump version 9.5.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: uac_health; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA uac_health;


--
-- Name: uacportal; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA uacportal;


SET search_path = uac_health, pg_catalog;

--
-- Name: trigger_fct_tt_contact_investigation(); Type: FUNCTION; Schema: uac_health; Owner: -
--

CREATE FUNCTION trigger_fct_tt_contact_investigation() RETURNS trigger
    LANGUAGE plpgsql SECURITY DEFINER
    AS $$
BEGIN
  Select nextval('seq_contact_investigation') into NEW.CONTACT_INVESTIGATION_ID ;
RETURN NEW;
END;
$$;


--
-- Name: trigger_fct_tt_documents(); Type: FUNCTION; Schema: uac_health; Owner: -
--

CREATE FUNCTION trigger_fct_tt_documents() RETURNS trigger
    LANGUAGE plpgsql SECURITY DEFINER
    AS $$
BEGIN
  Select nextval('seq_health_documents') into NEW.DOC_ID ;
RETURN NEW;
END;
$$;


--
-- Name: trigger_fct_tt_general_info(); Type: FUNCTION; Schema: uac_health; Owner: -
--

CREATE FUNCTION trigger_fct_tt_general_info() RETURNS trigger
    LANGUAGE plpgsql SECURITY DEFINER
    AS $$
BEGIN
  Select nextval('seq_general_info') into NEW.GENERAL_INFO_ID ;
RETURN NEW;
END;
$$;


--
-- Name: trigger_fct_tt_health_abnormal_cxr(); Type: FUNCTION; Schema: uac_health; Owner: -
--

CREATE FUNCTION trigger_fct_tt_health_abnormal_cxr() RETURNS trigger
    LANGUAGE plpgsql SECURITY DEFINER
    AS $$
BEGIN
  SELECT nextval('seq_health_abnormal_cxr') into NEW.ABNORMAL_CXR_ID ;
RETURN NEW;
END;
$$;


--
-- Name: trigger_fct_tt_health_assessment(); Type: FUNCTION; Schema: uac_health; Owner: -
--

CREATE FUNCTION trigger_fct_tt_health_assessment() RETURNS trigger
    LANGUAGE plpgsql SECURITY DEFINER
    AS $$
BEGIN
  SELECT nextval('seq_health_assessment') into NEW.HEALTH_ASSESSMENT_ID ;
RETURN NEW;
END;
$$;


--
-- Name: trigger_fct_tt_health_illness_of_phc(); Type: FUNCTION; Schema: uac_health; Owner: -
--

CREATE FUNCTION trigger_fct_tt_health_illness_of_phc() RETURNS trigger
    LANGUAGE plpgsql SECURITY DEFINER
    AS $$
BEGIN
  SELECT nextval('seq_health_illness_of_phc') into NEW.PHC_ID ;
RETURN NEW;
END;
$$;


--
-- Name: trigger_fct_tt_health_sa_labtesting(); Type: FUNCTION; Schema: uac_health; Owner: -
--

CREATE FUNCTION trigger_fct_tt_health_sa_labtesting() RETURNS trigger
    LANGUAGE plpgsql SECURITY DEFINER
    AS $$
BEGIN
  Select nextval('seq_health_sa_labtesting') into NEW.SA_LABTESTING_ID ;
RETURN NEW;
END;
$$;


--
-- Name: trigger_fct_tt_health_tb_screening(); Type: FUNCTION; Schema: uac_health; Owner: -
--

CREATE FUNCTION trigger_fct_tt_health_tb_screening() RETURNS trigger
    LANGUAGE plpgsql SECURITY DEFINER
    AS $$
BEGIN
  SELECT nextval('seq_health_tb_screening') into NEW.HEALTH_TB_SCREENING_ID ;
RETURN NEW;
END;
$$;


--
-- Name: trigger_fct_tt_lab_test(); Type: FUNCTION; Schema: uac_health; Owner: -
--

CREATE FUNCTION trigger_fct_tt_lab_test() RETURNS trigger
    LANGUAGE plpgsql SECURITY DEFINER
    AS $$
BEGIN
  SELECT nextval('seq_lab_test') into NEW.HEALTH_LAB_TEST_ID ;
RETURN NEW;
END;
$$;


--
-- Name: trigger_fct_tt_physical_assessment(); Type: FUNCTION; Schema: uac_health; Owner: -
--

CREATE FUNCTION trigger_fct_tt_physical_assessment() RETURNS trigger
    LANGUAGE plpgsql SECURITY DEFINER
    AS $$
BEGIN
  SELECT nextval('seq_physical_assessment') into NEW.HST_PHYSICAL_ASSESSMENT_ID ;
RETURN NEW;
END;
$$;


--
-- Name: trigger_fct_tt_prid_labtesting(); Type: FUNCTION; Schema: uac_health; Owner: -
--

CREATE FUNCTION trigger_fct_tt_prid_labtesting() RETURNS trigger
    LANGUAGE plpgsql SECURITY DEFINER
    AS $$
BEGIN
  SELECT nextval('seq_prid_labtesting') into NEW.PRID_LABTESTING_ID ;
RETURN NEW;
END;
$$;


--
-- Name: trigger_fct_tt_psycosocial_risk(); Type: FUNCTION; Schema: uac_health; Owner: -
--

CREATE FUNCTION trigger_fct_tt_psycosocial_risk() RETURNS trigger
    LANGUAGE plpgsql SECURITY DEFINER
    AS $$
BEGIN
  SELECT nextval('seq_psycosocial_risk') into NEW.HEALTH_PSYCOSOCIAL_RISK_ID ;
RETURN NEW;
END;
$$;


--
-- Name: trigger_fct_tt_review_symptoms(); Type: FUNCTION; Schema: uac_health; Owner: -
--

CREATE FUNCTION trigger_fct_tt_review_symptoms() RETURNS trigger
    LANGUAGE plpgsql SECURITY DEFINER
    AS $$
BEGIN
  SELECT nextval('seq_review_symptoms') into NEW.REVIEW_SYMPTOMS_ID ;
RETURN NEW;
END;
$$;


--
-- Name: trigger_fct_tt_uac_abnormal_cxr(); Type: FUNCTION; Schema: uac_health; Owner: -
--

CREATE FUNCTION trigger_fct_tt_uac_abnormal_cxr() RETURNS trigger
    LANGUAGE plpgsql SECURITY DEFINER
    AS $$
BEGIN
  SELECT nextval('seq_uac_abnormal_cxr') into NEW.UAC_ABNORMAL_CXR_ID ;
RETURN NEW;
END;
$$;


--
-- Name: trigger_fct_tt_uac_health_cxr(); Type: FUNCTION; Schema: uac_health; Owner: -
--

CREATE FUNCTION trigger_fct_tt_uac_health_cxr() RETURNS trigger
    LANGUAGE plpgsql SECURITY DEFINER
    AS $$
BEGIN
  SELECT nextval('seq_uac_health_cxr') into NEW.HEALTH_CXR_ID ;
RETURN NEW;
END;
$$;


--
-- Name: trigger_fct_tt_uac_health_igra(); Type: FUNCTION; Schema: uac_health; Owner: -
--

CREATE FUNCTION trigger_fct_tt_uac_health_igra() RETURNS trigger
    LANGUAGE plpgsql SECURITY DEFINER
    AS $$
BEGIN
  SELECT nextval('seq_uac_health_igra') into NEW.HEALTH_IGRA_ID ;
RETURN NEW;
END;
$$;


--
-- Name: trigger_fct_tt_uac_health_immunization(); Type: FUNCTION; Schema: uac_health; Owner: -
--

CREATE FUNCTION trigger_fct_tt_uac_health_immunization() RETURNS trigger
    LANGUAGE plpgsql SECURITY DEFINER
    AS $$
BEGIN
  SELECT nextval('seq_uac_health_immunization') into NEW.ASSESSMENT_IMMUNIZATION_ID ;
RETURN NEW;
END;
$$;


--
-- Name: trigger_fct_tt_uac_health_medication(); Type: FUNCTION; Schema: uac_health; Owner: -
--

CREATE FUNCTION trigger_fct_tt_uac_health_medication() RETURNS trigger
    LANGUAGE plpgsql SECURITY DEFINER
    AS $$
BEGIN
  SELECT nextval('seq_uac_health_medication') into NEW.ASSESSMENT_MEDICATION_ID ;
RETURN NEW;
END;
$$;


--
-- Name: trigger_fct_tt_uac_health_tblabtesting(); Type: FUNCTION; Schema: uac_health; Owner: -
--

CREATE FUNCTION trigger_fct_tt_uac_health_tblabtesting() RETURNS trigger
    LANGUAGE plpgsql SECURITY DEFINER
    AS $$
BEGIN
  SELECT nextval('seq_uac_health_tblabtesting') into NEW.HEALTH_TBT_ID ;
RETURN NEW;
END;
$$;


--
-- Name: trigger_fct_tt_uac_health_tst(); Type: FUNCTION; Schema: uac_health; Owner: -
--

CREATE FUNCTION trigger_fct_tt_uac_health_tst() RETURNS trigger
    LANGUAGE plpgsql SECURITY DEFINER
    AS $$
BEGIN
  SELECT nextval('seq_uac_health_tst') into NEW.HEALTH_TST_ID ;
RETURN NEW;
END;
$$;


--
-- Name: trigger_fct_tt_uac_phc_cluster_info(); Type: FUNCTION; Schema: uac_health; Owner: -
--

CREATE FUNCTION trigger_fct_tt_uac_phc_cluster_info() RETURNS trigger
    LANGUAGE plpgsql SECURITY DEFINER
    AS $$
BEGIN
  SELECT nextval('seq_uac_phc_cluster_info') into NEW.CLUSTER_ID ;
RETURN NEW;
END;
$$;


--
-- Name: trigger_fct_tt_uac_phc_exposures(); Type: FUNCTION; Schema: uac_health; Owner: -
--

CREATE FUNCTION trigger_fct_tt_uac_phc_exposures() RETURNS trigger
    LANGUAGE plpgsql SECURITY DEFINER
    AS $$
BEGIN
  SELECT nextval('seq_uac_phc_exposures') into NEW.PHC_EXPOSURE_ID ;
RETURN NEW;
END;
$$;


--
-- Name: trigger_fct_tt_uac_psycosocial_risk(); Type: FUNCTION; Schema: uac_health; Owner: -
--

CREATE FUNCTION trigger_fct_tt_uac_psycosocial_risk() RETURNS trigger
    LANGUAGE plpgsql SECURITY DEFINER
    AS $$
BEGIN
  SELECT nextval('seq_uac_psycosocial_risk') into NEW.UAC_PSYCOSOCIAL_RISK_ID ;
RETURN NEW;
END;
$$;


--
-- Name: trigger_fct_tt_uac_sa_labtesting(); Type: FUNCTION; Schema: uac_health; Owner: -
--

CREATE FUNCTION trigger_fct_tt_uac_sa_labtesting() RETURNS trigger
    LANGUAGE plpgsql SECURITY DEFINER
    AS $$
BEGIN
  Select nextval('seq_uac_sa_labtesting') into NEW.UAC_SA_LAB_TESTING_ID ;
RETURN NEW;
END;
$$;


--
-- Name: trigger_fct_tt_uac_working_diagnosis(); Type: FUNCTION; Schema: uac_health; Owner: -
--

CREATE FUNCTION trigger_fct_tt_uac_working_diagnosis() RETURNS trigger
    LANGUAGE plpgsql SECURITY DEFINER
    AS $$
BEGIN
 SELECT nextval('seq_uac_working_diagnosis') into NEW.WORKING_DIAGNOSIS_ID ;
RETURN NEW;
END;
$$;


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: health_abnormal_cxr; Type: TABLE; Schema: uac_health; Owner: -
--

CREATE TABLE health_abnormal_cxr (
    abnormal_cxr_id bigint NOT NULL,
    health_tb_screening_id bigint,
    program_id smallint NOT NULL,
    stb_other_exp character varying(250),
    nstb_other_exp character varying(250),
    cxr_determination smallint,
    date_created timestamp without time zone NOT NULL,
    user_created character varying(112) NOT NULL,
    date_updated timestamp without time zone NOT NULL,
    user_updated character varying(112),
    health_cxr_id bigint NOT NULL,
    contact_investigation_id bigint
);


--
-- Name: health_assessment; Type: TABLE; Schema: uac_health; Owner: -
--

CREATE TABLE health_assessment (
    health_assessment_id bigint NOT NULL,
    general_info_id bigint NOT NULL,
    program_id integer NOT NULL,
    well_child smallint,
    new_medication_given smallint,
    immunization_given smallint,
    immunization_not_given_due_mc smallint,
    immunization_not_given_exp character varying(1000),
    guidance_discussed smallint,
    guidance_discussed_exp character varying(500),
    plan_other smallint,
    plan_other_exp character varying(500),
    additional_info character varying(2000),
    date_created timestamp without time zone NOT NULL,
    user_created character varying(112) NOT NULL,
    date_updated timestamp without time zone NOT NULL,
    user_updated character varying(112),
    age_appropriate smallint,
    recommendation_from_clinician character varying(5100),
    complaint_synopsis character varying(5100),
    evalreason_newsigns smallint,
    evalreason_worsened smallint,
    evalreason_noimprove smallint,
    evalreason_followup smallint,
    evalreason_other smallint,
    evalreason_other_exp character varying(100),
    evaloutcome_complication smallint,
    evaloutcome_relatedtoini smallint,
    evaloutcome_previousincorrect smallint,
    evaloutcome_other smallint,
    evaloutcome_other_exp character varying(100),
    abnormal_findings smallint,
    vaccine_other_exp character varying(250)
);


--
-- Name: health_contact_investigation; Type: TABLE; Schema: uac_health; Owner: -
--

CREATE TABLE health_contact_investigation (
    contact_investigation_id bigint NOT NULL,
    uac_id bigint,
    uac_program_id bigint,
    disease_id smallint,
    phc_exposure_id bigint,
    phc_cluster_id bigint,
    relationship_to_current_uc character varying(250),
    date_first_exposure_to_case timestamp without time zone,
    tst smallint,
    tb_blood_test smallint,
    cxr smallint,
    outcome_of_ci smallint,
    serum_igg_test smallint,
    quarantined smallint,
    release_delayed smallint,
    igg_test_date timestamp without time zone,
    igg_result_id smallint,
    immunization_given smallint,
    medication_given smallint,
    lab_test_performed smallint,
    date_created timestamp without time zone,
    user_created character varying(112),
    date_updated timestamp without time zone,
    user_updated character varying(112),
    vaccine_other_exp character varying(250),
    vhf_specify character varying(250)
);


--
-- Name: health_files_uploaded; Type: TABLE; Schema: uac_health; Owner: -
--

CREATE TABLE health_files_uploaded (
    doc_id bigint NOT NULL,
    general_info_id bigint,
    program_id smallint NOT NULL,
    file_name character varying(112) NOT NULL,
    file_content_type character varying(112) NOT NULL,
    file_size bigint NOT NULL,
    health_file_type_id smallint NOT NULL,
    file_display_name character varying(75),
    org_file_name character varying(250) NOT NULL,
    date_uploaded timestamp without time zone NOT NULL,
    user_uploaded character varying(112) NOT NULL,
    isdeleted smallint,
    description character varying(100),
    file_type_other character varying(75),
    contact_investigation_id bigint,
    health_type character varying(20)
);


--
-- Name: health_general_info; Type: TABLE; Schema: uac_health; Owner: -
--

CREATE TABLE health_general_info (
    general_info_id bigint NOT NULL,
    uac_id bigint NOT NULL,
    program_id smallint NOT NULL,
    clinician_name character varying(112),
    title_code character(2),
    phone character varying(20),
    clinic_name character varying(255),
    address character varying(250),
    city character varying(112),
    state character(2),
    date_evaluated timestamp without time zone NOT NULL,
    staff_name character varying(112),
    location_child_received_care smallint,
    initial_exam smallint,
    date_created timestamp without time zone NOT NULL,
    user_created character varying(112) NOT NULL,
    date_updated timestamp without time zone NOT NULL,
    user_updated character varying(112) NOT NULL,
    org_general_info_id bigint,
    abnormal_findings smallint
);


--
-- Name: health_hst_physical_assessment; Type: TABLE; Schema: uac_health; Owner: -
--

CREATE TABLE health_hst_physical_assessment (
    hst_physical_assessment_id bigint NOT NULL,
    general_info_id bigint NOT NULL,
    program_id smallint NOT NULL,
    tc character varying(10),
    hr character varying(10),
    bp character varying(10),
    rr character varying(10),
    ht character varying(10),
    wt character varying(10),
    allergies_none smallint,
    allergies_food smallint,
    allergies_food_exp character varying(500),
    allergies_medication smallint,
    allergies_medication_exp character varying(500),
    corrected_right_eye smallint,
    corrected_left_eye smallint,
    corrected_both_eye smallint,
    uncorrected_right_eye smallint NOT NULL,
    uncorrected_left_eye smallint NOT NULL,
    uncorrected_both_eye smallint NOT NULL,
    concerns_child_or_caregiver smallint NOT NULL,
    cpecify_concerns character varying(512),
    past_medical_history character varying(512),
    social_family_history character varying(512),
    lmp smallint,
    lmp_date timestamp without time zone,
    previous_pregnancy smallint,
    previous_pregnancy_g smallint,
    previous_pregnancy_p smallint,
    date_created timestamp without time zone NOT NULL,
    user_created character varying(112) NOT NULL,
    date_updated timestamp without time zone NOT NULL,
    user_updated character varying(112),
    allergies_other smallint,
    allergies_other_exp character varying(500)
);


--
-- Name: health_illness_of_phc; Type: TABLE; Schema: uac_health; Owner: -
--

CREATE TABLE health_illness_of_phc (
    phc_id bigint NOT NULL,
    general_info_id bigint,
    program_id smallint NOT NULL,
    disease_id smallint NOT NULL,
    notified_doh_by_shelter smallint,
    number_of_staff_exposed smallint,
    intakes_deleted smallint,
    date_created timestamp without time zone NOT NULL,
    user_created character varying(112) NOT NULL,
    date_updated timestamp without time zone NOT NULL,
    user_updated character varying(112) NOT NULL,
    orr_outcome_id smallint,
    tb_type character varying(50),
    meningitis_type character varying(100),
    meningitis_other_exp character varying(100),
    contact_investigation_id bigint
);


--
-- Name: health_lab_test; Type: TABLE; Schema: uac_health; Owner: -
--

CREATE TABLE health_lab_test (
    health_lab_test_id bigint NOT NULL,
    general_info_id bigint,
    program_id smallint NOT NULL,
    test_id smallint NOT NULL,
    test_date timestamp without time zone NOT NULL,
    test_result_id smallint NOT NULL,
    date_created timestamp without time zone NOT NULL,
    user_created character varying(112) NOT NULL,
    date_updated timestamp without time zone NOT NULL,
    user_updated character varying(112),
    contact_investigation_id bigint,
    doc_id bigint,
    disease_id smallint
);


--
-- Name: health_medical_case_wrapup; Type: TABLE; Schema: uac_health; Owner: -
--

CREATE TABLE health_medical_case_wrapup (
    case_wrapup_id bigint NOT NULL,
    general_info_id bigint NOT NULL,
    program_id smallint NOT NULL,
    case_wrapup_type smallint NOT NULL,
    uac_admitted_to_icu smallint,
    total_number_of_nights_in_icu smallint,
    working_diagnosis_ruled_out smallint,
    did_uac_returned_to_clinic smallint,
    prn_as_needed smallint,
    follow_up smallint,
    follow_up_exp character varying(500),
    referred_to_specialist smallint,
    referred_to_specialist_exp character varying(500),
    prolonged_treatment smallint,
    prolonged_treatment_exp character varying(500) NOT NULL,
    surgery_needed smallint,
    surgery_needed_exp character varying(500) NOT NULL,
    other smallint,
    other_exp character varying(500) NOT NULL,
    quarantined smallint,
    release_delayed smallint,
    immunization_given smallint,
    medication_given smallint,
    shd_notified smallint,
    shd_state character(2),
    dhs_notified smallint,
    date_dhs_notified timestamp without time zone,
    if_not_notified_exp character varying(500),
    injury_to_self smallint,
    injury_to_staff smallint,
    injury_to_other_kid smallint,
    police_action smallint,
    restrained smallint,
    consequence_other smallint,
    consequence_other_exp character varying(500),
    consiquence_exp character varying(500),
    date_created timestamp without time zone NOT NULL,
    user_created character varying(112) NOT NULL,
    date_updated timestamp without time zone NOT NULL,
    user_updated character varying(112)
);


--
-- Name: health_prid_labtesting; Type: TABLE; Schema: uac_health; Owner: -
--

CREATE TABLE health_prid_labtesting (
    prid_labtesting_id bigint NOT NULL,
    general_info_id bigint,
    program_id smallint NOT NULL,
    disease_id smallint NOT NULL,
    specimen_date timestamp without time zone NOT NULL,
    test_id smallint NOT NULL,
    test_result_id smallint NOT NULL,
    date_created timestamp without time zone NOT NULL,
    user_created character varying(112) NOT NULL,
    date_updated timestamp without time zone NOT NULL,
    user_updated character varying(112),
    doc_id bigint,
    contact_investigation_id bigint,
    specimen_type_id smallint,
    specimen_other_exp character varying(128),
    test_other_exp character varying(128),
    disease_other_exp character varying(128)
);


--
-- Name: health_psycosociall_risk; Type: TABLE; Schema: uac_health; Owner: -
--

CREATE TABLE health_psycosociall_risk (
    health_psycosocial_risk_id bigint NOT NULL,
    general_info_id bigint NOT NULL,
    program_id smallint,
    mental_health_concern smallint,
    victim_of_physical_abuse smallint,
    exp_abuse character varying(500),
    abuse_in_home_country smallint,
    abuse_in_during_journey smallint,
    abuse_in_orr_custody smallint,
    sexual_abuse smallint,
    consensual_sexual_activity smallint,
    exp_sexual_abuse character varying(500),
    sa_in_home_country smallint,
    sa_in_during_jorney smallint,
    sa_in_orr_custody smallint,
    previous_std smallint,
    chlamydia smallint,
    gonorhea smallint,
    hepatitis_b smallint,
    hiv smallint,
    sypholis smallint,
    std_other smallint,
    std_other_exp character varying(250),
    ivdu smallint,
    ivdu_exp character varying(250),
    alcohol smallint,
    alcohol_exp character varying(250),
    tabacco smallint,
    tabacco_exp character varying(250),
    abuse_other smallint,
    abuse_other_exp character varying(250),
    date_created timestamp without time zone NOT NULL,
    user_created character varying(112) NOT NULL,
    date_updated timestamp without time zone NOT NULL,
    user_updated character varying(112),
    substance_abuse smallint,
    forced_sexual_abuse smallint,
    sa_notin_orr_custody smallint,
    abuse_notin_orr_custody smallint
);


--
-- Name: health_review_symptoms; Type: TABLE; Schema: uac_health; Owner: -
--

CREATE TABLE health_review_symptoms (
    review_symptoms_id bigint NOT NULL,
    general_info_id bigint NOT NULL,
    program_id smallint NOT NULL,
    symptom_id smallint NOT NULL,
    symptom_exam_type smallint NOT NULL,
    symptom_date timestamp without time zone,
    specify character varying(500),
    pain_location character varying(250),
    measured_temprature character varying(10),
    date_created timestamp without time zone NOT NULL,
    user_created character varying(112) NOT NULL,
    date_updated timestamp without time zone NOT NULL,
    user_updated character varying(112),
    normal smallint,
    other_exp character varying(250)
);


--
-- Name: health_sa_labtesting; Type: TABLE; Schema: uac_health; Owner: -
--

CREATE TABLE health_sa_labtesting (
    sa_labtesting_id bigint NOT NULL,
    general_info_id bigint NOT NULL,
    sa_occured_6month_ago smallint,
    explain_detail character varying(4000),
    occured_in_home_country smallint,
    occured_during_journey smallint,
    occured_in_orr_custody smallint,
    date_created timestamp without time zone NOT NULL,
    user_created character varying(112) NOT NULL,
    date_updated timestamp with time zone NOT NULL,
    user_updated character varying(112) NOT NULL,
    occured_notin_orr_custody smallint,
    program_id smallint
);


--
-- Name: health_tb_screening; Type: TABLE; Schema: uac_health; Owner: -
--

CREATE TABLE health_tb_screening (
    health_tb_screening_id bigint NOT NULL,
    general_info_id bigint NOT NULL,
    program_id smallint NOT NULL,
    has_contacted_with_active_tb smallint,
    if_contacted_exp character varying(250),
    treated_for_active_tb smallint,
    if_treated_active_tb_exp character varying(250),
    treated_for_latent_tb smallint,
    if_treated_latent_tb_exp character varying(250),
    tb_screen_location_id smallint,
    tst smallint,
    tb_blood_test smallint,
    cxr smallint,
    tb_screening_determination_id smallint,
    afb_smear_date1 timestamp without time zone,
    afb_smear_date2 timestamp without time zone,
    afb_smear_date3 timestamp without time zone,
    dst_date1 timestamp without time zone,
    dst_date2 timestamp without time zone,
    date_created timestamp without time zone,
    user_created character varying(112) NOT NULL,
    date_updated timestamp without time zone NOT NULL,
    user_updated character varying(112) NOT NULL
);


--
-- Name: list_health_file_type; Type: TABLE; Schema: uac_health; Owner: -
--

CREATE TABLE list_health_file_type (
    health_file_type_id smallint NOT NULL,
    description character varying(250) NOT NULL
);


--
-- Name: list_health_immunization; Type: TABLE; Schema: uac_health; Owner: -
--

CREATE TABLE list_health_immunization (
    immunization_id smallint NOT NULL,
    description character varying(250) NOT NULL
);


--
-- Name: list_location_child_got_care; Type: TABLE; Schema: uac_health; Owner: -
--

CREATE TABLE list_location_child_got_care (
    location_id smallint NOT NULL,
    location_name character varying(250)
);


--
-- Name: list_orr_outcome; Type: TABLE; Schema: uac_health; Owner: -
--

CREATE TABLE list_orr_outcome (
    orr_outcome_id smallint,
    description character varying(250),
    orr_outcome_type character varying(20)
);


--
-- Name: list_psycosocial_risk; Type: TABLE; Schema: uac_health; Owner: -
--

CREATE TABLE list_psycosocial_risk (
    psycosocial_risk_id smallint NOT NULL,
    description character varying(250) NOT NULL
);


--
-- Name: list_source; Type: TABLE; Schema: uac_health; Owner: -
--

CREATE TABLE list_source (
    source_id integer NOT NULL,
    source_name character varying(200) NOT NULL
);


--
-- Name: list_specimen_type; Type: TABLE; Schema: uac_health; Owner: -
--

CREATE TABLE list_specimen_type (
    specimen_type_id smallint NOT NULL,
    description character varying(100) NOT NULL,
    page character varying(20)
);


--
-- Name: list_suggestive_active_tb; Type: TABLE; Schema: uac_health; Owner: -
--

CREATE TABLE list_suggestive_active_tb (
    stb_id smallint NOT NULL,
    description character varying(250) NOT NULL,
    issuggestive smallint NOT NULL
);


--
-- Name: list_symptoms_exams; Type: TABLE; Schema: uac_health; Owner: -
--

CREATE TABLE list_symptoms_exams (
    symptom_id smallint NOT NULL,
    description character varying(250) NOT NULL,
    symptom_exam_type smallint NOT NULL
);


--
-- Name: list_tb_screening_location; Type: TABLE; Schema: uac_health; Owner: -
--

CREATE TABLE list_tb_screening_location (
    location_id smallint NOT NULL,
    description character varying(250) NOT NULL
);


--
-- Name: list_tblt_result; Type: TABLE; Schema: uac_health; Owner: -
--

CREATE TABLE list_tblt_result (
    result_id smallint NOT NULL,
    description character varying(200) NOT NULL,
    test_id smallint NOT NULL
);


--
-- Name: list_test_result; Type: TABLE; Schema: uac_health; Owner: -
--

CREATE TABLE list_test_result (
    result_id smallint NOT NULL,
    description character varying(250) NOT NULL,
    test_type character varying(250) NOT NULL
);


--
-- Name: list_test_type; Type: TABLE; Schema: uac_health; Owner: -
--

CREATE TABLE list_test_type (
    test_id smallint NOT NULL,
    description character varying(250) NOT NULL,
    test_type character varying(10) NOT NULL
);


--
-- Name: list_wd_category; Type: TABLE; Schema: uac_health; Owner: -
--

CREATE TABLE list_wd_category (
    wd_category_id smallint NOT NULL,
    wd_category character varying(250) NOT NULL
);


--
-- Name: list_working_diagnosis; Type: TABLE; Schema: uac_health; Owner: -
--

CREATE TABLE list_working_diagnosis (
    working_diagnosis_id smallint NOT NULL,
    working_diagnosis character varying(250),
    wd_category_id smallint,
    contact_investigation smallint,
    wd_order smallint
);


--
-- Name: seq_contact_investigation; Type: SEQUENCE; Schema: uac_health; Owner: -
--

CREATE SEQUENCE seq_contact_investigation
    START WITH 1261
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;


--
-- Name: seq_general_info; Type: SEQUENCE; Schema: uac_health; Owner: -
--

CREATE SEQUENCE seq_general_info
    START WITH 1163
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: seq_health_abnormal_cxr; Type: SEQUENCE; Schema: uac_health; Owner: -
--

CREATE SEQUENCE seq_health_abnormal_cxr
    START WITH 99
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: seq_health_assessment; Type: SEQUENCE; Schema: uac_health; Owner: -
--

CREATE SEQUENCE seq_health_assessment
    START WITH 3063
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;


--
-- Name: seq_health_documents; Type: SEQUENCE; Schema: uac_health; Owner: -
--

CREATE SEQUENCE seq_health_documents
    START WITH 962
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;


--
-- Name: seq_health_illness_of_phc; Type: SEQUENCE; Schema: uac_health; Owner: -
--

CREATE SEQUENCE seq_health_illness_of_phc
    START WITH 479
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: seq_health_sa_labtesting; Type: SEQUENCE; Schema: uac_health; Owner: -
--

CREATE SEQUENCE seq_health_sa_labtesting
    START WITH 100
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: seq_health_tb_screening; Type: SEQUENCE; Schema: uac_health; Owner: -
--

CREATE SEQUENCE seq_health_tb_screening
    START WITH 379
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: seq_lab_test; Type: SEQUENCE; Schema: uac_health; Owner: -
--

CREATE SEQUENCE seq_lab_test
    START WITH 272
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: seq_physical_assessment; Type: SEQUENCE; Schema: uac_health; Owner: -
--

CREATE SEQUENCE seq_physical_assessment
    START WITH 128
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: seq_prid_labtesting; Type: SEQUENCE; Schema: uac_health; Owner: -
--

CREATE SEQUENCE seq_prid_labtesting
    START WITH 157
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: seq_prid_main; Type: SEQUENCE; Schema: uac_health; Owner: -
--

CREATE SEQUENCE seq_prid_main
    START WITH 121
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;


--
-- Name: seq_psycosocial_risk; Type: SEQUENCE; Schema: uac_health; Owner: -
--

CREATE SEQUENCE seq_psycosocial_risk
    START WITH 112
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: seq_review_symptoms; Type: SEQUENCE; Schema: uac_health; Owner: -
--

CREATE SEQUENCE seq_review_symptoms
    START WITH 1632
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: seq_uac_abnormal_cxr; Type: SEQUENCE; Schema: uac_health; Owner: -
--

CREATE SEQUENCE seq_uac_abnormal_cxr
    START WITH 530
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: seq_uac_health_cxr; Type: SEQUENCE; Schema: uac_health; Owner: -
--

CREATE SEQUENCE seq_uac_health_cxr
    START WITH 433
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: seq_uac_health_igra; Type: SEQUENCE; Schema: uac_health; Owner: -
--

CREATE SEQUENCE seq_uac_health_igra
    START WITH 170
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: seq_uac_health_immunization; Type: SEQUENCE; Schema: uac_health; Owner: -
--

CREATE SEQUENCE seq_uac_health_immunization
    START WITH 2351
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;


--
-- Name: seq_uac_health_medication; Type: SEQUENCE; Schema: uac_health; Owner: -
--

CREATE SEQUENCE seq_uac_health_medication
    START WITH 1641
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;


--
-- Name: seq_uac_health_tblabtesting; Type: SEQUENCE; Schema: uac_health; Owner: -
--

CREATE SEQUENCE seq_uac_health_tblabtesting
    START WITH 182
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: seq_uac_health_tst; Type: SEQUENCE; Schema: uac_health; Owner: -
--

CREATE SEQUENCE seq_uac_health_tst
    START WITH 245
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: seq_uac_phc_cluster_info; Type: SEQUENCE; Schema: uac_health; Owner: -
--

CREATE SEQUENCE seq_uac_phc_cluster_info
    START WITH 467
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: seq_uac_phc_exposures; Type: SEQUENCE; Schema: uac_health; Owner: -
--

CREATE SEQUENCE seq_uac_phc_exposures
    START WITH 298
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: seq_uac_psycosocial_risk; Type: SEQUENCE; Schema: uac_health; Owner: -
--

CREATE SEQUENCE seq_uac_psycosocial_risk
    START WITH 212
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: seq_uac_sa_labtesting; Type: SEQUENCE; Schema: uac_health; Owner: -
--

CREATE SEQUENCE seq_uac_sa_labtesting
    START WITH 193
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: seq_uac_working_diagnosis; Type: SEQUENCE; Schema: uac_health; Owner: -
--

CREATE SEQUENCE seq_uac_working_diagnosis
    START WITH 4527
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;


--
-- Name: uac_abnormal_cxr; Type: TABLE; Schema: uac_health; Owner: -
--

CREATE TABLE uac_abnormal_cxr (
    abnormal_cxr_id bigint NOT NULL,
    uac_abnormal_cxr_id bigint NOT NULL,
    stb_id bigint NOT NULL
);


--
-- Name: uac_health_cxr; Type: TABLE; Schema: uac_health; Owner: -
--

CREATE TABLE uac_health_cxr (
    health_cxr_id bigint NOT NULL,
    health_tb_screening_id bigint,
    program_id smallint NOT NULL,
    cxr_date timestamp without time zone,
    findings smallint NOT NULL,
    final_determination character varying(250),
    date_created timestamp without time zone NOT NULL,
    user_created character varying(112) NOT NULL,
    date_updated timestamp without time zone NOT NULL,
    user_updated character varying(112),
    doc_id bigint,
    final_determination_id smallint,
    contact_investigation_id bigint
);


--
-- Name: uac_health_igra; Type: TABLE; Schema: uac_health; Owner: -
--

CREATE TABLE uac_health_igra (
    health_igra_id bigint NOT NULL,
    health_tb_screening_id bigint,
    program_id smallint NOT NULL,
    date_drown timestamp without time zone,
    test_id smallint NOT NULL,
    result smallint NOT NULL,
    interpretation smallint,
    date_created timestamp without time zone NOT NULL,
    user_created character varying(112) NOT NULL,
    date_updated timestamp without time zone NOT NULL,
    user_updated character varying(112),
    doc_id bigint,
    contact_investigation_id bigint
);


--
-- Name: uac_health_immunization; Type: TABLE; Schema: uac_health; Owner: -
--

CREATE TABLE uac_health_immunization (
    assessment_immunization_id bigint NOT NULL,
    health_assessment_id bigint,
    program_id smallint NOT NULL,
    source_id smallint,
    vaccine_id smallint NOT NULL,
    date_created timestamp without time zone NOT NULL,
    user_created character varying(112) NOT NULL,
    date_updated timestamp without time zone NOT NULL,
    user_updated character varying(112),
    immunization_date timestamp without time zone,
    doc_id bigint,
    contact_investigation_id bigint,
    vaccine_other_exp character varying(250)
);


--
-- Name: uac_health_medication; Type: TABLE; Schema: uac_health; Owner: -
--

CREATE TABLE uac_health_medication (
    assessment_medication_id bigint NOT NULL,
    health_assessment_id bigint,
    program_id smallint NOT NULL,
    source_id smallint,
    medication_name character varying(35) NOT NULL,
    reason_for_medication character varying(250) NOT NULL,
    medication_date timestamp without time zone,
    dose character varying(50),
    directions character varying(50) NOT NULL,
    psychotropic smallint,
    date_created timestamp without time zone NOT NULL,
    user_created character varying(112) NOT NULL,
    date_updated timestamp without time zone NOT NULL,
    user_updated character varying(112),
    contact_investigation_id bigint,
    date_discontinued timestamp without time zone
);


--
-- Name: uac_health_tblabtesting; Type: TABLE; Schema: uac_health; Owner: -
--

CREATE TABLE uac_health_tblabtesting (
    health_tbt_id bigint NOT NULL,
    health_tb_screening_id bigint NOT NULL,
    program_id smallint NOT NULL,
    collection_date timestamp without time zone,
    speciment_type smallint,
    test_id smallint NOT NULL,
    result smallint NOT NULL,
    date_created timestamp without time zone NOT NULL,
    user_created character varying(112) NOT NULL,
    date_updated timestamp without time zone NOT NULL,
    user_updated character varying(112)
);


--
-- Name: uac_health_tst; Type: TABLE; Schema: uac_health; Owner: -
--

CREATE TABLE uac_health_tst (
    health_tst_id bigint NOT NULL,
    health_tb_screening_id bigint,
    program_id smallint NOT NULL,
    date_applied timestamp without time zone,
    date_read timestamp without time zone,
    result smallint,
    interpretation smallint,
    date_created timestamp without time zone NOT NULL,
    user_created character varying(112) NOT NULL,
    date_updated timestamp without time zone NOT NULL,
    user_updated character varying(112),
    doc_id bigint,
    contact_investigation_id bigint
);


--
-- Name: uac_phc_cluster_info; Type: TABLE; Schema: uac_health; Owner: -
--

CREATE TABLE uac_phc_cluster_info (
    cluster_id bigint NOT NULL,
    phc_id bigint NOT NULL,
    anumber character varying(10) NOT NULL,
    uac_id bigint,
    uac_program_id bigint
);


--
-- Name: uac_phc_exposures; Type: TABLE; Schema: uac_health; Owner: -
--

CREATE TABLE uac_phc_exposures (
    phc_exposure_id bigint NOT NULL,
    phc_id bigint NOT NULL,
    anumber character varying(10) NOT NULL,
    relationship_to_current_uc character varying(250),
    date_first_exposure_to_case timestamp without time zone,
    outcome_of_ci smallint,
    general_info_id bigint,
    uac_program_id bigint
);


--
-- Name: uac_psycosocial_risk; Type: TABLE; Schema: uac_health; Owner: -
--

CREATE TABLE uac_psycosocial_risk (
    uac_psycosocial_risk_id bigint NOT NULL,
    psycosocial_risk_id bigint NOT NULL,
    other_exp character varying(250),
    health_psycosocial_risk_id bigint NOT NULL
);


--
-- Name: uac_sa_labtesting; Type: TABLE; Schema: uac_health; Owner: -
--

CREATE TABLE uac_sa_labtesting (
    uac_sa_lab_testing_id bigint NOT NULL,
    sa_labtesting_id bigint NOT NULL,
    test_name character varying(112) NOT NULL,
    is_test_done smallint,
    specimen_date timestamp without time zone,
    test_result_id smallint,
    date_created timestamp without time zone NOT NULL,
    user_created character varying(112) NOT NULL,
    date_updated timestamp without time zone NOT NULL,
    user_updated character varying(112) NOT NULL,
    doc_id bigint
);


--
-- Name: uac_working_diagnosis; Type: TABLE; Schema: uac_health; Owner: -
--

CREATE TABLE uac_working_diagnosis (
    working_diagnosis_id bigint,
    health_assessment_id bigint,
    program_id smallint,
    disease_id smallint,
    uac_admitted_to_icu smallint,
    total_number_of_nights_in_icu smallint,
    working_diagnosis_confirmed smallint,
    did_uac_returned_to_clinic smallint,
    prn_as_needed smallint,
    follow_up smallint,
    follow_up_exp character varying(500),
    referred_to_specialist smallint,
    referred_to_specialist_exp character varying(500),
    prolonged_treatment smallint,
    prolonged_treatment_exp character varying(500),
    surgery_needed smallint,
    surgery_needed_exp character varying(500),
    other smallint,
    other_exp character varying(500),
    quarantined smallint,
    release_delayed smallint,
    immunization_given smallint,
    medication_given smallint,
    shd_notified smallint,
    shd_state character(2),
    dhs_notified smallint,
    date_dhs_notified timestamp without time zone,
    if_not_notified_exp character varying(500),
    injury_to_self smallint,
    injury_to_staff smallint,
    injury_to_other_kid smallint,
    police_action smallint,
    restrained smallint,
    consequence_other smallint,
    consequence_other_exp character varying(500),
    consiquence_exp character varying(500),
    date_created timestamp without time zone,
    user_created character varying(112),
    date_updated timestamp without time zone,
    user_updated character varying(112),
    other_conditions smallint DEFAULT 0,
    viral_fever_exp character varying(500),
    tb_type character varying(50),
    meningitis_type character varying(100),
    meningitis_other_exp character varying(100),
    other_conditions_cat bigint,
    other_conditions_subcat bigint,
    other_conditions_subcat_exp character varying(100),
    wd_other_exp character varying(500),
    lt_performed smallint
);


--
-- Name: v_confirmed_diseases; Type: VIEW; Schema: uac_health; Owner: -
--

CREATE VIEW v_confirmed_diseases AS
 SELECT
        CASE
            WHEN (b.working_diagnosis_confirmed = 1) THEN (a.working_diagnosis_id)::bigint
            WHEN ((b.other_conditions = 1) AND (b.other_conditions_subcat IS NOT NULL)) THEN b.other_conditions_subcat
            ELSE (a.working_diagnosis_id)::bigint
        END AS working_diagnosis_id,
    a.working_diagnosis,
    a.wd_category_id,
    a.contact_investigation,
    b.health_assessment_id,
        CASE
            WHEN ((b.working_diagnosis_confirmed = 1) OR ((b.other_conditions = 1) AND (b.other_conditions_subcat IS NOT NULL))) THEN 1
            ELSE 0
        END AS confirmed,
        CASE
            WHEN (b.other_conditions = 1) THEN b.other_conditions_subcat_exp
            ELSE b.wd_other_exp
        END AS other_exp,
    b.disease_id AS original_disease_id
   FROM (list_working_diagnosis a
     JOIN uac_working_diagnosis b ON ((
        CASE
            WHEN (b.other_conditions_subcat IS NOT NULL) THEN b.other_conditions_subcat
            ELSE (b.disease_id)::bigint
        END = a.working_diagnosis_id)));


--
-- Name: v_illness_of_phc; Type: VIEW; Schema: uac_health; Owner: -
--

CREATE VIEW v_illness_of_phc AS
 SELECT DISTINCT a.phc_id,
    a.general_info_id,
    a.program_id,
    a.disease_id,
    a.notified_doh_by_shelter,
    a.number_of_staff_exposed,
    a.orr_outcome_id,
    ( SELECT count(*) AS count
           FROM uac_phc_exposures
          WHERE (uac_phc_exposures.phc_id = a.phc_id)) AS number_of_uac_exposed,
        CASE
            WHEN (c.working_diagnosis_confirmed = 1) THEN
            CASE
                WHEN ("substring"((d.working_diagnosis)::text, 0, 5) = 'Other'::text) THEN ((((d.working_diagnosis)::text || ' - '::text) || (c.wd_other_exp)::text))::character varying
                WHEN (c.wd_other_exp IS NOT NULL) THEN ((((d.working_diagnosis)::text || ' - '::text) || (c.wd_other_exp)::text))::character varying
                ELSE d.working_diagnosis
            END
            WHEN (c.working_diagnosis_confirmed = 0) THEN
            CASE
                WHEN (c.other_conditions = 1) THEN (
                CASE
                    WHEN (c.other_conditions_subcat_exp IS NULL) THEN (( SELECT list_working_diagnosis.working_diagnosis
                       FROM list_working_diagnosis
                      WHERE (list_working_diagnosis.working_diagnosis_id = c.other_conditions_subcat)))::text
                    ELSE (((( SELECT list_working_diagnosis.working_diagnosis
                       FROM list_working_diagnosis
                      WHERE (list_working_diagnosis.working_diagnosis_id = c.other_conditions_subcat)))::text || ' - '::text) || (c.other_conditions_subcat_exp)::text)
                END)::character varying
                ELSE d.working_diagnosis
            END
            ELSE d.working_diagnosis
        END AS working_diagnosis
   FROM (((health_illness_of_phc a
     JOIN health_assessment b ON ((a.general_info_id = b.general_info_id)))
     JOIN uac_working_diagnosis c ON (((b.health_assessment_id = c.health_assessment_id) AND (a.disease_id =
        CASE
            WHEN ((c.working_diagnosis_confirmed = 0) AND (c.other_conditions = 1)) THEN c.other_conditions_subcat
            ELSE (c.disease_id)::bigint
        END))))
     JOIN list_working_diagnosis d ON ((
        CASE
            WHEN ((c.working_diagnosis_confirmed = 0) AND (c.other_conditions = 1)) THEN c.other_conditions_subcat
            ELSE (c.disease_id)::bigint
        END = d.working_diagnosis_id)))
  WHERE ((d.contact_investigation = 1) AND ((COALESCE(c.tb_type, 'AAAA'::character varying))::text <> 'TB, latent (LTBI)'::text) AND ((c.working_diagnosis_confirmed = 1) OR (COALESCE(c.other_conditions_subcat, (0)::bigint) > 0)) AND (a.disease_id <> ALL (ARRAY[44, 46])))
UNION
 SELECT DISTINCT a.phc_id,
    a.general_info_id,
    a.program_id,
    a.disease_id,
    a.notified_doh_by_shelter,
    a.number_of_staff_exposed,
    a.orr_outcome_id,
    ( SELECT count(*) AS count
           FROM uac_phc_exposures
          WHERE (uac_phc_exposures.phc_id = a.phc_id)) AS number_of_uac_exposed,
        CASE
            WHEN (a.disease_id = 46) THEN (a.tb_type)::text
            ELSE ('Sepsis/Meningitis - '::text || (a.meningitis_type)::text)
        END AS working_diagnosis
   FROM health_illness_of_phc a
  WHERE ((a.disease_id = ANY (ARRAY[44, 46])) AND (EXISTS ( SELECT 1
           FROM (uac_working_diagnosis b
             JOIN health_assessment c ON ((b.health_assessment_id = c.health_assessment_id)))
          WHERE ((c.general_info_id = a.general_info_id) AND ((b.disease_id = a.disease_id) OR ((b.other_conditions = 1) AND (b.other_conditions_subcat = a.disease_id))) AND (b.working_diagnosis_confirmed = 1)))));


--
-- Name: v_medical_file_list; Type: VIEW; Schema: uac_health; Owner: -
--

CREATE VIEW v_medical_file_list AS
 SELECT a.doc_id,
    a.general_info_id,
    a.program_id,
    a.file_name,
    a.file_content_type,
    a.file_size,
    a.health_file_type_id,
    a.file_display_name,
    a.org_file_name,
    a.date_uploaded,
    a.user_uploaded,
    a.description,
    a.file_type_other,
    a.contact_investigation_id,
    b.uac_id,
    a.health_type,
        CASE
            WHEN (a.health_file_type_id = 9) THEN ((((c.description)::text || ' - '::text) || (a.file_type_other)::text))::character varying
            ELSE c.description
        END AS health_file_type
   FROM ((health_files_uploaded a
     JOIN health_general_info b ON ((a.general_info_id = b.general_info_id)))
     JOIN list_health_file_type c ON ((a.health_file_type_id = c.health_file_type_id)));


--
-- Name: v_prid_disease_list; Type: VIEW; Schema: uac_health; Owner: -
--

CREATE VIEW v_prid_disease_list AS
 SELECT list_working_diagnosis.working_diagnosis_id,
    list_working_diagnosis.working_diagnosis,
    list_working_diagnosis.wd_category_id,
    list_working_diagnosis.contact_investigation
   FROM list_working_diagnosis
  WHERE ((list_working_diagnosis.wd_category_id = 9) AND (list_working_diagnosis.working_diagnosis_id <> 46));


--
-- Name: v_prid_gv_data; Type: VIEW; Schema: uac_health; Owner: -
--

CREATE VIEW v_prid_gv_data AS
 SELECT a.prid_labtesting_id,
    a.general_info_id,
    a.program_id,
    a.disease_id,
    a.specimen_date,
    a.test_id,
    a.test_result_id,
    b.uac_id
   FROM (health_prid_labtesting a
     JOIN health_general_info b ON ((a.general_info_id = b.general_info_id)));


--
-- Name: v_sa_labtesting; Type: VIEW; Schema: uac_health; Owner: -
--

CREATE VIEW v_sa_labtesting AS
 SELECT a.uac_sa_lab_testing_id,
    a.sa_labtesting_id,
    a.test_name,
    a.is_test_done,
    a.specimen_date,
    a.test_result_id,
    a.date_created,
    a.user_created,
    a.date_updated,
    a.user_updated,
    b.general_info_id,
    c.uac_id
   FROM ((uac_sa_labtesting a
     JOIN health_sa_labtesting b ON ((a.sa_labtesting_id = b.sa_labtesting_id)))
     JOIN health_general_info c ON ((b.general_info_id = c.general_info_id)));


--
-- Name: v_wd_category_by_wdid; Type: VIEW; Schema: uac_health; Owner: -
--

CREATE VIEW v_wd_category_by_wdid AS
 SELECT a.wd_category_id,
    a.working_diagnosis,
    b.working_diagnosis_id
   FROM (list_working_diagnosis a
     JOIN uac_working_diagnosis b ON ((a.working_diagnosis_id = b.disease_id)));


--
-- Name: v_wd_list; Type: VIEW; Schema: uac_health; Owner: -
--

CREATE VIEW v_wd_list AS
 SELECT
        CASE
            WHEN ((a.working_diagnosis_confirmed = 1) OR (a.working_diagnosis_confirmed IS NULL)) THEN (a.disease_id)::bigint
            WHEN (a.working_diagnosis_confirmed = 0) THEN
            CASE
                WHEN (a.other_conditions = 1) THEN a.other_conditions_subcat
                ELSE (a.disease_id)::bigint
            END
            ELSE NULL::bigint
        END AS disease_id,
    b.general_info_id
   FROM (uac_working_diagnosis a
     JOIN health_assessment b ON ((a.health_assessment_id = b.health_assessment_id)));


SET search_path = uacportal, pg_catalog;

--
-- Name: adm_list_web_user_bkp; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE adm_list_web_user_bkp (
    user_id character varying(112) NOT NULL,
    password character varying(512) NOT NULL,
    first_name character varying(30),
    last_name character varying(50),
    address character varying(112),
    city character varying(50),
    state character(2),
    zip_code character varying(10),
    phone character varying(22),
    work_phone character varying(22),
    work_fax character varying(22),
    email character varying(112),
    suspended smallint NOT NULL,
    role_type character varying(50),
    user_privelege character varying(20),
    date_created timestamp without time zone NOT NULL,
    user_created character varying(30) NOT NULL,
    uptime timestamp without time zone NOT NULL,
    upuser character varying(50) NOT NULL,
    passwordreset smallint NOT NULL,
    groupemails character varying(32000),
    logincount bigint,
    lastlogin timestamp without time zone
);


--
-- Name: ext_country_mapping; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE ext_country_mapping (
    country_code smallint,
    cbp_code character varying(5),
    country_name character varying(50)
);


--
-- Name: ext_location_mapping; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE ext_location_mapping (
    location_code smallint,
    location_name character varying(100),
    sector_code smallint,
    cbp_code character varying(10)
);


--
-- Name: ext_referring_sector; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE ext_referring_sector (
    orr_code smallint,
    uac_code smallint NOT NULL,
    sector_name character varying(200) NOT NULL
);


--
-- Name: ext_relationship_mapping; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE ext_relationship_mapping (
    cbp_code character varying(3),
    relation_code smallint,
    relation_name character varying(50)
);


--
-- Name: facility_info; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE facility_info (
    facility_id smallint NOT NULL,
    facility_name character varying(250),
    facility_type character varying(112),
    region character(1),
    state character(2),
    city character varying(250),
    comments character varying(32000),
    instructions character varying(32000),
    confirmed_by character varying(250),
    confirmed_time timestamp without time zone,
    isdeleted smallint DEFAULT 0,
    men_only smallint DEFAULT 0,
    region_order character(1),
    program_id smallint,
    beds_unavailable_m smallint,
    beds_unavailable_f smallint,
    dffc_type character varying(20),
    verified smallint DEFAULT 0,
    funded_capacity_m smallint DEFAULT 0,
    funded_capacity_f smallint DEFAULT 0
);


--
-- Name: facility_info_arc; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE facility_info_arc (
    arc_time timestamp without time zone NOT NULL,
    facility_id smallint NOT NULL,
    facility_name character varying(250),
    facility_type character varying(112),
    region character(1),
    state character(2),
    city character varying(250),
    in_care_m smallint,
    in_care_f smallint,
    beds_in_reserve_m smallint,
    beds_in_reserve_f smallint,
    comments character varying(32000),
    instructions character varying(32000),
    confirmed_by character varying(250),
    confirmed_time timestamp without time zone,
    isdeleted smallint DEFAULT 0,
    men_only smallint DEFAULT 0,
    region_order character(1),
    program_id smallint,
    dffc_type character varying(20),
    verified smallint DEFAULT 0,
    beds_unavailable_m smallint DEFAULT 0,
    beds_unavailable_f smallint DEFAULT 0,
    funded_capacity_m smallint DEFAULT 0,
    funded_capacity_f smallint DEFAULT 0,
    enroute_m smallint DEFAULT 0,
    enroute_f smallint DEFAULT 0,
    in_transfer_m smallint DEFAULT 0,
    in_transfer_f smallint DEFAULT 0
);


--
-- Name: list_abuse_allegations; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE list_abuse_allegations (
    abuse_type_id smallint NOT NULL,
    abuse_type character varying(112)
);


--
-- Name: list_abuse_perpetrator; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE list_abuse_perpetrator (
    perpetrator_type_id smallint NOT NULL,
    perpetrator_type character varying(112)
);


--
-- Name: list_bg_check_result_type; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE list_bg_check_result_type (
    result_id smallint NOT NULL,
    description character varying(500) NOT NULL,
    result_type character varying(500) NOT NULL
);


--
-- Name: list_comm_diseases; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE list_comm_diseases (
    disease_id smallint NOT NULL,
    disease_name character varying(112)
);


--
-- Name: list_countries; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE list_countries (
    country_id numeric(38,0) NOT NULL,
    country_name character varying(50)
);


--
-- Name: list_deny_reason; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE list_deny_reason (
    reason_id smallint,
    reason character varying(112)
);


--
-- Name: list_discharge_type; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE list_discharge_type (
    discharge_type_id smallint,
    discharge_type character varying(112),
    discharge_type_listing_order smallint
);


--
-- Name: list_doc_diagnosis; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE list_doc_diagnosis (
    diagnosis_id smallint NOT NULL,
    diagnosis character varying(112),
    visit_purpose character varying(50)
);


--
-- Name: list_doc_visit_reason; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE list_doc_visit_reason (
    visit_reason_id smallint NOT NULL,
    visit_reason character varying(112),
    visit_purpose character varying(50)
);


--
-- Name: list_doc_visit_type; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE list_doc_visit_type (
    visit_type_id smallint NOT NULL,
    visit_type character varying(112),
    visit_purpose character varying(50)
);


--
-- Name: list_effort_type; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE list_effort_type (
    effort_type_id smallint NOT NULL,
    effor_type character varying(50)
);


--
-- Name: list_emotional_concerns; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE list_emotional_concerns (
    emotional_concern_id smallint NOT NULL,
    emotional_concern_desc character varying(250)
);


--
-- Name: list_entry_locations; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE list_entry_locations (
    location_id smallint NOT NULL,
    city character varying(50),
    state character varying(50)
);


--
-- Name: list_facility_beds_in_reserve; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE list_facility_beds_in_reserve (
    facility_id smallint NOT NULL,
    facility_name character varying(250) NOT NULL
);


--
-- Name: list_html_color; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE list_html_color (
    color_name character varying(50) NOT NULL,
    color_code character varying(8) NOT NULL
);


--
-- Name: list_ice_cbp; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE list_ice_cbp (
    ice_cbp_id smallint NOT NULL,
    ice_cbp_type character varying(5),
    description character varying(500)
);


--
-- Name: list_immgrtn_status_at_referal; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE list_immgrtn_status_at_referal (
    status_id smallint NOT NULL,
    status character varying(112)
);


--
-- Name: list_immunizations; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE list_immunizations (
    immune_id smallint NOT NULL,
    immunization_name character varying(112)
);


--
-- Name: list_legal_status; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE list_legal_status (
    legal_status_id smallint NOT NULL,
    legal_status character varying(112)
);


--
-- Name: list_manner_of_entry; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE list_manner_of_entry (
    me_id bigint NOT NULL,
    maner_of_entry character varying(50)
);


--
-- Name: list_medical_concern; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE list_medical_concern (
    concern_id numeric(38,0) NOT NULL,
    concern_description character varying(112)
);


--
-- Name: list_medical_mental_condition; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE list_medical_mental_condition (
    mm_condition_id smallint NOT NULL,
    mm_condition character varying(112)
);


--
-- Name: list_medical_screening_type; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE list_medical_screening_type (
    screening_type_id smallint NOT NULL,
    screening_type character varying(112)
);


--
-- Name: list_mental_issues; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE list_mental_issues (
    mental_issue_id smallint NOT NULL,
    mental_issue_desc character varying(250)
);


--
-- Name: list_other_escape_risk_factors; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE list_other_escape_risk_factors (
    factor_id numeric(38,0) NOT NULL,
    factor_description character varying(112)
);


--
-- Name: list_other_incident_types; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE list_other_incident_types (
    incident_type_id smallint NOT NULL,
    incident_type character varying(112)
);


--
-- Name: list_pef_gov_custody; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE list_pef_gov_custody (
    factor_id numeric(38,0) NOT NULL,
    factor_description character varying(112)
);


--
-- Name: list_program_type; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE list_program_type (
    program_type_id smallint NOT NULL,
    program_type character varying(112)
);


--
-- Name: list_programs; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE list_programs (
    program_id smallint NOT NULL,
    program_type_id smallint NOT NULL,
    program_name character varying(112),
    address character varying(112),
    city character varying(50),
    state character(2),
    zipcode character varying(10),
    phone character varying(22),
    fax character varying(22),
    email character varying(112),
    capacity smallint,
    beds_for_female smallint,
    beds_for_male smallint,
    min_age smallint,
    max_age smallint,
    date_created timestamp without time zone,
    user_created character varying(112),
    uptime timestamp without time zone,
    upuser character varying(112),
    isactive smallint DEFAULT 1,
    mail_address character varying(112),
    mail_city character varying(50),
    mail_state character(2),
    mail_zipcode character varying(10)
);


--
-- Name: list_reason_typeoffacility; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE list_reason_typeoffacility (
    type_id smallint NOT NULL,
    facility_type character varying(112) NOT NULL
);


--
-- Name: list_referring_agency; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE list_referring_agency (
    agency_id smallint NOT NULL,
    agency character varying(112)
);


--
-- Name: list_referring_field_offices; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE list_referring_field_offices (
    office_id smallint NOT NULL,
    office_name character varying(50)
);


--
-- Name: list_relationship; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE list_relationship (
    relationship_id smallint NOT NULL,
    relationship character varying(50),
    sponsor_to_uac smallint,
    uac_apprehension smallint DEFAULT 1,
    sponsor_category smallint,
    isactive smallint DEFAULT 1
);


--
-- Name: list_release_deny_reasons; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE list_release_deny_reasons (
    reason_id smallint NOT NULL,
    reason character varying(112)
);


--
-- Name: list_sir_mm_issues; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE list_sir_mm_issues (
    medical_mental_issue_id smallint NOT NULL,
    medical_mental_issue character varying(112)
);


--
-- Name: list_sir_notified_entities; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE list_sir_notified_entities (
    contact_id numeric(38,0) NOT NULL,
    sir_id numeric(38,0) NOT NULL,
    contact_name character varying(112),
    phone character varying(22),
    date_notified timestamp without time zone,
    time_notified timestamp without time zone
);


--
-- Name: list_sites; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE list_sites (
    site_id smallint NOT NULL,
    site_name character varying(112)
);


--
-- Name: list_smsgateway; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE list_smsgateway (
    smsgateway_id bigint NOT NULL,
    company_name character varying(112) NOT NULL,
    smsgateway character varying(112) NOT NULL
);


--
-- Name: list_states; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE list_states (
    state character(2) NOT NULL,
    statename character varying(50) NOT NULL
);


--
-- Name: list_substances; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE list_substances (
    substance_id numeric(38,0) NOT NULL,
    substance_name character varying(50)
);


--
-- Name: list_transportation_mode; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE list_transportation_mode (
    transportation_mode_id smallint,
    transportation_mode character varying(20)
);


--
-- Name: list_uac_behavior; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE list_uac_behavior (
    behavior_id smallint NOT NULL,
    behavior character varying(112)
);


--
-- Name: list_uac_identity; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE list_uac_identity (
    identity_id smallint,
    identity_description character varying(112)
);


--
-- Name: list_vehicle_make; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE list_vehicle_make (
    vehicle_make_id smallint,
    vehicle_make_name character varying(50),
    transportation_mode_id smallint
);


--
-- Name: reason_for_typeoffacility; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE reason_for_typeoffacility (
    uac_program_id numeric(38,0) NOT NULL,
    reason_type_id smallint NOT NULL
);


--
-- Name: seq_ar_notification; Type: SEQUENCE; Schema: uacportal; Owner: -
--

CREATE SEQUENCE seq_ar_notification
    START WITH 500021
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;


--
-- Name: seq_background_check; Type: SEQUENCE; Schema: uacportal; Owner: -
--

CREATE SEQUENCE seq_background_check
    START WITH 321
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;


--
-- Name: seq_cr_medical_hist; Type: SEQUENCE; Schema: uacportal; Owner: -
--

CREATE SEQUENCE seq_cr_medical_hist
    START WITH 819586
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;


--
-- Name: seq_cr_medication_hist; Type: SEQUENCE; Schema: uacportal; Owner: -
--

CREATE SEQUENCE seq_cr_medication_hist
    START WITH 616780
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;


--
-- Name: seq_discharge_notification; Type: SEQUENCE; Schema: uacportal; Owner: -
--

CREATE SEQUENCE seq_discharge_notification
    START WITH 501480
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;


--
-- Name: seq_education_placement; Type: SEQUENCE; Schema: uacportal; Owner: -
--

CREATE SEQUENCE seq_education_placement
    START WITH 500960
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;


--
-- Name: seq_effort; Type: SEQUENCE; Schema: uacportal; Owner: -
--

CREATE SEQUENCE seq_effort
    START WITH 500000
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;


--
-- Name: seq_event_logging; Type: SEQUENCE; Schema: uacportal; Owner: -
--

CREATE SEQUENCE seq_event_logging
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 1000000
    CACHE 20;


--
-- Name: seq_hotline_alert; Type: SEQUENCE; Schema: uacportal; Owner: -
--

CREATE SEQUENCE seq_hotline_alert
    START WITH 421
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;


--
-- Name: seq_hotline_reporting; Type: SEQUENCE; Schema: uacportal; Owner: -
--

CREATE SEQUENCE seq_hotline_reporting
    START WITH 441
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;


--
-- Name: seq_iia_summary; Type: SEQUENCE; Schema: uacportal; Owner: -
--

CREATE SEQUENCE seq_iia_summary
    START WITH 2884
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;


--
-- Name: seq_ini_docs; Type: SEQUENCE; Schema: uacportal; Owner: -
--

CREATE SEQUENCE seq_ini_docs
    START WITH 26
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: seq_isp; Type: SEQUENCE; Schema: uacportal; Owner: -
--

CREATE SEQUENCE seq_isp
    START WITH 502140
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;


--
-- Name: seq_isp_certificate; Type: SEQUENCE; Schema: uacportal; Owner: -
--

CREATE SEQUENCE seq_isp_certificate
    START WITH 502207
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;


--
-- Name: seq_isp_sub; Type: SEQUENCE; Schema: uacportal; Owner: -
--

CREATE SEQUENCE seq_isp_sub
    START WITH 507820
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;


--
-- Name: seq_medical_immunization; Type: SEQUENCE; Schema: uacportal; Owner: -
--

CREATE SEQUENCE seq_medical_immunization
    START WITH 509780
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;


--
-- Name: seq_medical_screen; Type: SEQUENCE; Schema: uacportal; Owner: -
--

CREATE SEQUENCE seq_medical_screen
    START WITH 501268
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 999999999999
    CACHE 1;


--
-- Name: seq_medical_visit; Type: SEQUENCE; Schema: uacportal; Owner: -
--

CREATE SEQUENCE seq_medical_visit
    START WITH 507862
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;


--
-- Name: seq_medication; Type: SEQUENCE; Schema: uacportal; Owner: -
--

CREATE SEQUENCE seq_medication
    START WITH 500690
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;


--
-- Name: seq_program_exit; Type: SEQUENCE; Schema: uacportal; Owner: -
--

CREATE SEQUENCE seq_program_exit
    START WITH 502703
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;


--
-- Name: seq_release_request; Type: SEQUENCE; Schema: uacportal; Owner: -
--

CREATE SEQUENCE seq_release_request
    START WITH 502163
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;


--
-- Name: seq_risk_assessment; Type: SEQUENCE; Schema: uacportal; Owner: -
--

CREATE SEQUENCE seq_risk_assessment
    START WITH 600056
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: seq_secure_review; Type: SEQUENCE; Schema: uacportal; Owner: -
--

CREATE SEQUENCE seq_secure_review
    START WITH 14
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: seq_sir; Type: SEQUENCE; Schema: uacportal; Owner: -
--

CREATE SEQUENCE seq_sir
    START WITH 501220
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;


--
-- Name: seq_sir_event; Type: SEQUENCE; Schema: uacportal; Owner: -
--

CREATE SEQUENCE seq_sir_event
    START WITH 1560
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;


--
-- Name: seq_sir_media; Type: SEQUENCE; Schema: uacportal; Owner: -
--

CREATE SEQUENCE seq_sir_media
    START WITH 502980
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;


--
-- Name: seq_sponsor_affidavits; Type: SEQUENCE; Schema: uacportal; Owner: -
--

CREATE SEQUENCE seq_sponsor_affidavits
    START WITH 509480
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;


--
-- Name: seq_sponsor_hh; Type: SEQUENCE; Schema: uacportal; Owner: -
--

CREATE SEQUENCE seq_sponsor_hh
    START WITH 506440
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;


--
-- Name: seq_sponsor_info; Type: SEQUENCE; Schema: uacportal; Owner: -
--

CREATE SEQUENCE seq_sponsor_info
    START WITH 502060
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;


--
-- Name: seq_substance_use_history; Type: SEQUENCE; Schema: uacportal; Owner: -
--

CREATE SEQUENCE seq_substance_use_history
    START WITH 598120
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 99999999
    CACHE 20;


--
-- Name: seq_transfer_request; Type: SEQUENCE; Schema: uacportal; Owner: -
--

CREATE SEQUENCE seq_transfer_request
    START WITH 501680
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;


--
-- Name: seq_travel_request; Type: SEQUENCE; Schema: uacportal; Owner: -
--

CREATE SEQUENCE seq_travel_request
    START WITH 500320
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;


--
-- Name: seq_uac_apprehension; Type: SEQUENCE; Schema: uacportal; Owner: -
--

CREATE SEQUENCE seq_uac_apprehension
    START WITH 40210
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: seq_uac_assessment; Type: SEQUENCE; Schema: uacportal; Owner: -
--

CREATE SEQUENCE seq_uac_assessment
    START WITH 503400
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;


--
-- Name: seq_uac_case_review; Type: SEQUENCE; Schema: uacportal; Owner: -
--

CREATE SEQUENCE seq_uac_case_review
    START WITH 501580
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;


--
-- Name: seq_uac_children; Type: SEQUENCE; Schema: uacportal; Owner: -
--

CREATE SEQUENCE seq_uac_children
    START WITH 503960
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;


--
-- Name: seq_uac_criminal_history; Type: SEQUENCE; Schema: uacportal; Owner: -
--

CREATE SEQUENCE seq_uac_criminal_history
    START WITH 567440
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 99999999
    CACHE 20;


--
-- Name: seq_uac_documents; Type: SEQUENCE; Schema: uacportal; Owner: -
--

CREATE SEQUENCE seq_uac_documents
    START WITH 110
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: seq_uac_emotional_concerns; Type: SEQUENCE; Schema: uacportal; Owner: -
--

CREATE SEQUENCE seq_uac_emotional_concerns
    START WITH 511576
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;


--
-- Name: seq_uac_family; Type: SEQUENCE; Schema: uacportal; Owner: -
--

CREATE SEQUENCE seq_uac_family
    START WITH 516700
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;


--
-- Name: seq_uac_family_relations; Type: SEQUENCE; Schema: uacportal; Owner: -
--

CREATE SEQUENCE seq_uac_family_relations
    START WITH 530240
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;


--
-- Name: seq_uac_fast; Type: SEQUENCE; Schema: uacportal; Owner: -
--

CREATE SEQUENCE seq_uac_fast
    START WITH 500058
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: seq_uac_fields_history; Type: SEQUENCE; Schema: uacportal; Owner: -
--

CREATE SEQUENCE seq_uac_fields_history
    START WITH 180
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;


--
-- Name: seq_uac_images; Type: SEQUENCE; Schema: uacportal; Owner: -
--

CREATE SEQUENCE seq_uac_images
    START WITH 109
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: seq_uac_info; Type: SEQUENCE; Schema: uacportal; Owner: -
--

CREATE SEQUENCE seq_uac_info
    START WITH 504714
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;


--
-- Name: seq_uac_initial_assessment; Type: SEQUENCE; Schema: uacportal; Owner: -
--

CREATE SEQUENCE seq_uac_initial_assessment
    START WITH 503263
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;


--
-- Name: seq_uac_intakes_doc_list; Type: SEQUENCE; Schema: uacportal; Owner: -
--

CREATE SEQUENCE seq_uac_intakes_doc_list
    START WITH 161
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;


--
-- Name: seq_uac_level1_logging; Type: SEQUENCE; Schema: uacportal; Owner: -
--

CREATE SEQUENCE seq_uac_level1_logging
    START WITH 221
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;


--
-- Name: seq_uac_level2_logging; Type: SEQUENCE; Schema: uacportal; Owner: -
--

CREATE SEQUENCE seq_uac_level2_logging
    START WITH 361
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;


--
-- Name: seq_uac_level3_logging; Type: SEQUENCE; Schema: uacportal; Owner: -
--

CREATE SEQUENCE seq_uac_level3_logging
    START WITH 3561
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;


--
-- Name: seq_uac_medical_concern; Type: SEQUENCE; Schema: uacportal; Owner: -
--

CREATE SEQUENCE seq_uac_medical_concern
    START WITH 513228
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;


--
-- Name: seq_uac_medical_history; Type: SEQUENCE; Schema: uacportal; Owner: -
--

CREATE SEQUENCE seq_uac_medical_history
    START WITH 680820
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;


--
-- Name: seq_uac_medication_history; Type: SEQUENCE; Schema: uacportal; Owner: -
--

CREATE SEQUENCE seq_uac_medication_history
    START WITH 567720
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;


--
-- Name: seq_uac_medication_info; Type: SEQUENCE; Schema: uacportal; Owner: -
--

CREATE SEQUENCE seq_uac_medication_info
    START WITH 501381
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;


--
-- Name: seq_uac_mental_issues; Type: SEQUENCE; Schema: uacportal; Owner: -
--

CREATE SEQUENCE seq_uac_mental_issues
    START WITH 504485
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;


--
-- Name: seq_uac_program_info; Type: SEQUENCE; Schema: uacportal; Owner: -
--

CREATE SEQUENCE seq_uac_program_info
    START WITH 505220
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;


--
-- Name: seq_uac_psychological_eval; Type: SEQUENCE; Schema: uacportal; Owner: -
--

CREATE SEQUENCE seq_uac_psychological_eval
    START WITH 501540
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;


--
-- Name: seq_uac_sir_category_map; Type: SEQUENCE; Schema: uacportal; Owner: -
--

CREATE SEQUENCE seq_uac_sir_category_map
    START WITH 502283
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;


--
-- Name: seq_uac_sir_documents; Type: SEQUENCE; Schema: uacportal; Owner: -
--

CREATE SEQUENCE seq_uac_sir_documents
    START WITH 161
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;


--
-- Name: seq_uac_sir_event; Type: SEQUENCE; Schema: uacportal; Owner: -
--

CREATE SEQUENCE seq_uac_sir_event
    START WITH 102
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: seq_uac_sir_fields_history; Type: SEQUENCE; Schema: uacportal; Owner: -
--

CREATE SEQUENCE seq_uac_sir_fields_history
    START WITH 421
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;


--
-- Name: seq_uac_sir_followup_rpt; Type: SEQUENCE; Schema: uacportal; Owner: -
--

CREATE SEQUENCE seq_uac_sir_followup_rpt
    START WITH 41
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;


--
-- Name: seq_uac_sir_new; Type: SEQUENCE; Schema: uacportal; Owner: -
--

CREATE SEQUENCE seq_uac_sir_new
    START WITH 861
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;


--
-- Name: seq_uac_sir_notification_list; Type: SEQUENCE; Schema: uacportal; Owner: -
--

CREATE SEQUENCE seq_uac_sir_notification_list
    START WITH 2341
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;


--
-- Name: seq_uac_sir_ucinvolved_list; Type: SEQUENCE; Schema: uacportal; Owner: -
--

CREATE SEQUENCE seq_uac_sir_ucinvolved_list
    START WITH 821
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;


--
-- Name: seq_xmljob_activity_logs; Type: SEQUENCE; Schema: uacportal; Owner: -
--

CREATE SEQUENCE seq_xmljob_activity_logs
    START WITH 1161
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;


--
-- Name: sir_abuse_allegations; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE sir_abuse_allegations (
    sir_id numeric(38,0) NOT NULL,
    abuse_type_id smallint NOT NULL
);


--
-- Name: sir_medical_mental_issues; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE sir_medical_mental_issues (
    sir_id numeric(38,0) NOT NULL,
    medical_mental_issue_id smallint NOT NULL
);


--
-- Name: sir_other_incident_types; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE sir_other_incident_types (
    sir_id numeric(38,0) NOT NULL,
    incident_type_id smallint NOT NULL
);


--
-- Name: sir_uac_behavior; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE sir_uac_behavior (
    sir_id numeric(38,0) NOT NULL,
    behavior_id smallint NOT NULL
);


--
-- Name: sponsor_affidavits_support; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE sponsor_affidavits_support (
    affidavit_id bigint NOT NULL,
    sponsor_id bigint NOT NULL,
    annual_income bigint,
    proof_of_income character varying(2000),
    emp_name character varying(2000),
    emp_address character varying(2000),
    emp_city character varying(2000),
    emp_state character(2),
    emp_zipcode character varying(10),
    emp_phone character varying(22),
    has_doc_support smallint,
    date_created character varying(112),
    user_created character varying(112),
    uptime timestamp without time zone,
    upuser character varying(112)
);


--
-- Name: sponsor_background_check; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE sponsor_background_check (
    background_check_id numeric(38,0) NOT NULL,
    uac_id numeric(38,0),
    sponsor_id numeric(38,0) NOT NULL,
    occupant_id numeric(38,0),
    bg_public smallint DEFAULT 0,
    bg_sex smallint DEFAULT 0,
    bg_imm smallint DEFAULT 0,
    bg_fbich smallint DEFAULT 0,
    bg_fbinc smallint DEFAULT 0,
    bg_can smallint DEFAULT 0,
    bg_state smallint DEFAULT 0,
    check_requested smallint DEFAULT 0,
    date_requested timestamp without time zone,
    date_received timestamp without time zone,
    result_id smallint,
    date_created timestamp without time zone NOT NULL,
    date_updated timestamp without time zone,
    user_created character varying(112) NOT NULL,
    user_updated character varying(112),
    bg_canwaiver smallint DEFAULT 0
);


--
-- Name: sponsor_criminal_history; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE sponsor_criminal_history (
    criminal_history_id bigint NOT NULL,
    sponsor_id bigint NOT NULL,
    crime_discription character varying(2000),
    crime_date timestamp without time zone,
    length_of_sentence character varying(2000),
    location character varying(2000),
    date_created timestamp without time zone,
    user_created character varying(112),
    uptime timestamp without time zone,
    upuser character varying(112)
);


--
-- Name: sponsor_household_occupants; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE sponsor_household_occupants (
    occupant_id bigint NOT NULL,
    sponsor_id bigint NOT NULL,
    name_of_occupant character varying(2000),
    age smallint,
    relationship_to_sponsor smallint,
    relationship_to_minor smallint,
    dependent_of_sponsor smallint,
    user_created character varying(112),
    date_created timestamp without time zone,
    uptime timestamp without time zone,
    upuser character varying(112),
    uac_id bigint,
    first_name character varying(2000),
    last_name character varying(2000),
    gender character(1),
    dob timestamp without time zone
);


--
-- Name: sponsor_info; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE sponsor_info (
    sponsor_id bigint NOT NULL,
    first_name character varying(2000),
    last_name character varying(2000),
    ssn character varying(11),
    alien_no character varying(10),
    address character varying(2000),
    city character varying(2000),
    state character(2),
    zip_code character varying(10),
    dob timestamp without time zone,
    cob character varying(112),
    cor character varying(112),
    marriage_status character varying(7),
    home_phone character varying(22),
    work_phone character varying(22),
    fax character varying(22),
    email character varying(112),
    gender character(1),
    legal_status_id smallint,
    sponsor_relationship_to_uac smallint,
    uac_relationship_to_sponsor smallint,
    household_has_disease smallint,
    household_has_criminal_hist smallint,
    notes character varying(32000),
    sponsorthip_status character varying(2000),
    p_counter smallint,
    a_counter smallint,
    date_created timestamp without time zone,
    user_created character varying(112),
    uptime timestamp without time zone,
    upuser character varying(112),
    flag smallint,
    flag_note character varying(4000),
    flag_address smallint,
    flag_address_note character varying(4000),
    sponsor_token character varying(250)
);


--
-- Name: treeview_doc_list; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE treeview_doc_list (
    node_id smallint NOT NULL,
    node_level1 smallint DEFAULT 0 NOT NULL,
    node_level2 smallint DEFAULT 0 NOT NULL,
    node_level3 smallint DEFAULT 0 NOT NULL,
    node_level4 smallint DEFAULT 0 NOT NULL,
    node_text character varying(500) NOT NULL,
    node_value character varying(500),
    is_dhs_only smallint DEFAULT 0 NOT NULL
);


--
-- Name: tt_sir_media_contacts; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE tt_sir_media_contacts (
    session_id character varying(112),
    sir_id numeric(38,0) NOT NULL,
    contact_name character varying(2000),
    agency character varying(2000),
    phone character varying(22),
    date_contact timestamp without time zone,
    userid character varying(112),
    uptime timestamp without time zone DEFAULT ('now'::text)::timestamp without time zone
);


--
-- Name: tt_sponsor_affidavits_support; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE tt_sponsor_affidavits_support (
    session_id character varying(112) NOT NULL,
    sponsor_id bigint NOT NULL,
    annual_income bigint,
    proof_of_income character varying(2000),
    emp_name character varying(2000),
    emp_address character varying(2000),
    emp_city character varying(2000),
    emp_state character(2),
    emp_zipcode character varying(10),
    emp_phone character varying(22),
    has_doc_support smallint,
    upuser character varying(112),
    uptime timestamp without time zone
);


--
-- Name: tt_sponsor_household_occupants; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE tt_sponsor_household_occupants (
    session_id character varying(112) NOT NULL,
    sponsor_id bigint NOT NULL,
    name_of_occupant character varying(2000),
    age smallint,
    relationship_to_sponsor smallint,
    relationship_to_minor smallint,
    dependent_of_sponsor smallint,
    upuser character varying(112),
    uptime timestamp without time zone,
    uac_id bigint,
    first_name character varying(2000),
    last_name character varying(2000),
    gender character(1),
    dob timestamp without time zone,
    occupant_id bigint
);


--
-- Name: tt_uac_immunization; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE tt_uac_immunization (
    session_id character varying(112),
    immune_type_id smallint NOT NULL,
    immune_date1 timestamp without time zone,
    immune_date2 timestamp without time zone,
    immune_date3 timestamp without time zone,
    immune_date4 timestamp without time zone,
    immune_date5 timestamp without time zone
);


--
-- Name: tt_uac_isp_sub; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE tt_uac_isp_sub (
    session_id character varying(112),
    isp_id numeric(38,0),
    service_plan_id numeric(38,0),
    service character varying(2000),
    frequency character varying(2000),
    tasks character varying(2000),
    person_responsible character varying(2000),
    start_date timestamp without time zone,
    end_date timestamp without time zone,
    userid character varying(112),
    uptime timestamp without time zone DEFAULT ('now'::text)::timestamp without time zone
);


--
-- Name: tt_uac_substance_use_history; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE tt_uac_substance_use_history (
    session_id character varying(112),
    substance_id numeric(38,0),
    uac_assessment_id numeric(38,0),
    frequency_of_use character varying(260),
    date_of_last_use timestamp without time zone,
    user_created character varying(112)
);


--
-- Name: uac_apprehension_info; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_apprehension_info (
    apprehension_id bigint NOT NULL,
    uac_id bigint NOT NULL,
    name character varying(500),
    anumber character varying(10),
    phone character varying(20),
    relationship_id smallint,
    address character varying(2000),
    apprehension_type character varying(112),
    uptime timestamp without time zone,
    upuser character varying(112),
    age smallint
);


--
-- Name: uac_ar_notification; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_ar_notification (
    ar_notification_id bigint NOT NULL,
    uac_program_id bigint NOT NULL,
    date_of_discharge timestamp without time zone,
    type_of_discharge character varying(50),
    sponsor_id bigint NOT NULL,
    prove_of_relationship character varying(4000),
    date_created timestamp without time zone,
    user_created character varying(112),
    uptime timestamp without time zone,
    upuser character varying(112)
);


--
-- Name: uac_assessment; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_assessment (
    uac_assessment_id numeric(38,0) NOT NULL,
    uac_program_id numeric(38,0) NOT NULL,
    date_of_intake timestamp without time zone,
    los character varying(2000),
    case_mgt_name character varying(2000),
    clinician_name character varying(2000),
    religiuse_affiliation character varying(32000),
    day_to_day_life_in_hc character varying(32000),
    reason_to_travel_to_usa character varying(32000),
    how_gotin_to_us character varying(32000),
    person_lived_wth_in_hc character varying(32000),
    what_was_the_plan_in_us character varying(32000),
    location_apprehended character varying(32000),
    been_in_us_before smallint,
    lasttime_to_be_in_us timestamp without time zone,
    has_family_in_hc smallint,
    has_family_in_us smallint,
    parents_inof character varying(32000),
    marriage_stus smallint,
    spouse_name character varying(32000),
    has_children smallint,
    hurt_by_someone smallint,
    notes_about_hurt_bysomeone character varying(32000),
    have_been_in_hospital_by_hurt smallint,
    comments_if_was_in_hospital character varying(32000),
    discipline_to_you character varying(32000),
    know_your_right_provided smallint,
    know_your_right_provided_when character varying(2000),
    legal_screening_completed smallint,
    legal_screening_completed_when character varying(2000),
    legal_relief_identified smallint,
    legal_relief_notes character varying(32000),
    has_criminal_history smallint,
    felony_convictions character varying(32000),
    misdemeanor_convictions character varying(32000),
    probation_parole character varying(32000),
    disclosed_criminal_activity character varying(32000),
    attitude smallint,
    attitude_comments character varying(32000),
    behavior smallint,
    behavior_comments character varying(32000),
    speech smallint,
    speech_comments character varying(32000),
    affect numeric(38,0),
    affect_comments character varying(32000),
    mood numeric(38,0),
    mood_comments character varying(32000),
    thought_process numeric(38,0),
    thought_process_comments character varying(32000),
    suicidal_ideation numeric(38,0),
    si_plan smallint,
    si_intent smallint,
    si_means smallint,
    homicidal_ideation numeric(38,0),
    hi_plan smallint,
    hi_intent smallint,
    hi_means smallint,
    thought_content numeric(38,0),
    thought_content_comments character varying(32000),
    perception numeric(38,0),
    orientation_time smallint,
    orientation_place smallint,
    orientation_person smallint,
    orientation_self smallint,
    orientation_other_comments character varying(32000),
    memory_concentration numeric(38,0),
    memory_concentration_comments character varying(32000),
    insight_judgment numeric(38,0),
    talked_emotianal_problem smallint,
    talked_emotianal_problem_when character varying(2000),
    felt_need_help smallint,
    felt_need_help_when character varying(2000),
    advised_to_take_med smallint,
    advised_to_take_med_when character varying(2000),
    seen_er_or_hospitalised smallint,
    seen_er_or_hospitalised_when character varying(2000),
    heard_voises smallint,
    heard_voises_when character varying(2000),
    have_depressed smallint,
    have_depressed_when character varying(2000),
    attemp_to_kill_yourself smallint,
    attemp_to_kill_yourself_when character varying(2000),
    had_nightmares smallint,
    had_nightmares_specify character varying(32000),
    urge_or_impulse smallint,
    urge_or_impulse_when character varying(2000),
    who_planned_journey character varying(32000),
    arangements_before_journey character varying(32000),
    arrangement_change smallint,
    arrangement_change_how character varying(32000),
    family_owe_money_for_journey smallint,
    owe_howmuch_money numeric(38,0),
    whom_themoney_owed character varying(32000),
    who_expected_topay character varying(32000),
    what_happens_ifnot_payed character varying(32000),
    uac_family_threatened smallint,
    reason_for_threaten character varying(32000),
    physically_harmed smallint,
    physically_harmed_remarks character varying(32000),
    someone_physically_harmed smallint,
    someone_whois_harmed character varying(32000),
    held_against_will smallint,
    where_held_against_will character varying(32000),
    anything_bad_happened smallint,
    who_anything_bad_happened character varying(32000),
    someone_controlled_document smallint,
    who_controlled_what character varying(32000),
    threaten_to_report smallint,
    who_threaten_to_report character varying(32000),
    worried_tobe_found smallint,
    worried_tobe_found_bywho character varying(32000),
    perform_anywork smallint,
    perform_anywork_where character varying(32000),
    who_arranged_thework character varying(32000),
    performed_work_type character varying(32000),
    sch_of_thework character varying(32000),
    work_condition_change character varying(32000),
    had_debt smallint,
    debt_amount_increase smallint,
    debt_amount_increase_by character varying(2000),
    debt_amount_increase_when character varying(2000),
    debt_amount_increase_why character varying(32000),
    thearetened_pay_forjourney smallint,
    thearetened_pay_forjrny_who character varying(32000),
    what_happens_if_leave_thejob character varying(32000),
    did_what_didnt_wantto smallint,
    received_payment_for_work character varying(32000),
    paid_whatwas_promised character varying(32000),
    expenses_takenof_thepay smallint,
    what_expenses_takenof_thepay character varying(32000),
    how_get_to_theworksite character varying(32000),
    location_while_working character varying(32000),
    asked_tobe_naked smallint,
    someone_payed_for smallint,
    asked_to_take_pics smallint,
    asked_sexual_acts smallint,
    promise_for_sexual_acts smallint,
    trafficking_concern smallint,
    trafficing_referal timestamp without time zone,
    substance_abuse_concerns smallint,
    substance_abuse_specify character varying(32000),
    domistic_violence_concerns smallint,
    domistic_violence_specify character varying(32000),
    child_abuse_concerns smallint,
    child_abuse_specify character varying(32000),
    mental_health_issues smallint,
    mental_health_specify character varying(32000),
    sponsor_family_support smallint,
    sponsor_family_support_specify character varying(32000),
    sponsor_identified_needs smallint,
    sponsor_identified_needs_expl character varying(32000),
    sponsor_financial_needs smallint,
    sponsor_financial_needs_expl character varying(32000),
    sponsor_hosing smallint,
    sponsor_hosing_expl character varying(32000),
    any_conserns_on_sponsor character varying(32000),
    sponsor_has_criminal_hist smallint,
    sponsor_felony_convictions character varying(32000),
    sponsor_misdemeanor_conviction character varying(32000),
    sponsor_probation_parole character varying(32000),
    parent_child_relational_issue smallint,
    parent_child_issue_expl character varying(32000),
    sponsor_order_of_removal smallint,
    spnsr_order_of_removal_date timestamp without time zone,
    other_uacs_sponsored smallint,
    trafficking_in_persons smallint,
    date_eligibility_letter_issued timestamp without time zone,
    child_disability_act smallint,
    specify_uac_disability character varying(32000),
    victim_of_physex_abuse smallint,
    victim_of_physex_abuse_summary character varying(32000),
    sponsor_risk_to_uac smallint,
    sponsor_risk_to_uac_sht_smmry character varying(32000),
    signature character varying(2000),
    signature_date timestamp without time zone,
    print_name character varying(2000),
    title character varying(2000),
    date_created timestamp without time zone,
    user_created character varying(112),
    uptime timestamp without time zone,
    upuser character varying(112),
    list_of_alergies character varying(32000),
    feel_unwell smallint,
    feel_unwell_symptoms character varying(32000),
    additional_info character varying(32000),
    previous_placment character varying(32000),
    journey_appre_add_info character varying(32000),
    additional_med_info character varying(32000),
    additional_crim_info character varying(32000),
    additional_sponsor_info character varying(32000),
    memory_shortterm smallint,
    memory_longterm smallint,
    memory_distractable smallint,
    care_plan_reunification character varying(32000),
    care_plan_legal character varying(32000),
    care_plan_mental character varying(32000),
    sponsor_disclosed_crime character varying(32000),
    someone_payed_for_pic smallint,
    isdeleted smallint DEFAULT 0,
    city_of_origin character varying(250),
    neighbor_of_origin character varying(250),
    child_mention_us_policy smallint,
    child_mention_us_eco smallint,
    the_date_left_home_country timestamp without time zone,
    the_length_of_the_trip character varying(2000),
    who_traveled_with_the_child character varying(2000),
    level_of_edu character varying(2000),
    lt_child_was_in_school_and_age character varying(250),
    ff_paid_for_this_trip smallint
);


--
-- Name: uac_case_review; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_case_review (
    uac_case_review_id numeric(38,0) NOT NULL,
    uac_program_id numeric(38,0) NOT NULL,
    reviewer_name character varying(2000),
    reviewer_title character varying(2000),
    reviewer_sign character varying(2000),
    reviewed_date timestamp without time zone,
    monthly_review smallint DEFAULT 1,
    discharge smallint DEFAULT 0,
    transfer smallint DEFAULT 0,
    current_mental_functioning character varying(32000),
    recommend_discharge smallint DEFAULT 0,
    recommend_sponsor character varying(2000),
    recommend_discharge_wpr smallint DEFAULT 0,
    recommend_home_study smallint DEFAULT 0,
    recommend_date_of_prref timestamp without time zone,
    recommend_reason_for_hs character varying(32000),
    date_created timestamp without time zone,
    user_created character varying(112),
    uptime timestamp without time zone,
    upuser character varying(112),
    case_mgt_name character varying(2000),
    clinician_name character varying(2000),
    religiuse_affiliation character varying(32000),
    comments_if_was_in_hospital character varying(32000),
    know_your_right_provided smallint,
    know_your_right_provided_when character varying(2000),
    legal_screening_completed smallint,
    legal_screening_completed_when character varying(2000),
    legal_relief_identified smallint,
    legal_relief_notes character varying(32000),
    felony_convictions character varying(32000),
    probation_parole character varying(32000),
    disclosed_criminal_activity character varying(32000),
    who_planned_journey character varying(32000),
    arangements_before_journey character varying(32000),
    arrangement_change smallint,
    arrangement_change_how character varying(32000),
    family_owe_money_for_journey smallint,
    owe_howmuch_money bigint,
    whom_themoney_owed character varying(32000),
    who_expected_topay character varying(32000),
    what_happens_ifnot_payed character varying(32000),
    uac_family_threatened smallint,
    reason_for_threaten character varying(32000),
    physically_harmed smallint,
    physically_harmed_remarks character varying(32000),
    someone_physically_harmed smallint,
    someone_whois_harmed character varying(32000),
    held_against_will smallint,
    where_held_against_will character varying(32000),
    anything_bad_happened smallint,
    who_anything_bad_happened character varying(32000),
    someone_controlled_document smallint,
    who_controlled_what character varying(32000),
    threaten_to_report smallint,
    who_threaten_to_report character varying(32000),
    worried_tobe_found smallint,
    worried_tobe_found_bywho character varying(32000),
    perform_anywork smallint,
    perform_anywork_where character varying(32000),
    who_arranged_thework character varying(32000),
    performed_work_type character varying(32000),
    sch_of_thework character varying(32000),
    work_condition_change character varying(32000),
    had_debt smallint,
    debt_amount_increase smallint,
    debt_amount_increase_by character varying(2000),
    debt_amount_increase_when character varying(2000),
    debt_amount_increase_why character varying(32000),
    thearetened_pay_forjourney smallint,
    thearetened_pay_forjrny_who character varying(32000),
    what_happens_if_leave_thejob character varying(32000),
    did_what_didnt_wantto smallint,
    received_payment_for_work character varying(32000),
    paid_whatwas_promised character varying(32000),
    expenses_takenof_thepay smallint,
    what_expenses_takenof_thepay character varying(32000),
    how_get_to_theworksite character varying(32000),
    location_while_working character varying(32000),
    asked_tobe_naked smallint,
    someone_payed_for smallint,
    asked_to_take_pics smallint,
    asked_sexual_acts smallint,
    promise_for_sexual_acts smallint,
    trafficking_concern smallint,
    trafficing_referal timestamp without time zone,
    substance_abuse_concerns smallint,
    substance_abuse_specify character varying(32000),
    domistic_violence_concerns smallint,
    domistic_violence_specify character varying(32000),
    child_abuse_concerns smallint,
    child_abuse_specify character varying(32000),
    mental_health_issues smallint,
    mental_health_specify character varying(32000),
    sponsor_family_support smallint,
    sponsor_family_support_specify character varying(32000),
    sponsor_identified_needs smallint,
    sponsor_identified_needs_expl character varying(32000),
    sponsor_financial_needs smallint,
    sponsor_financial_needs_expl character varying(32000),
    sponsor_hosing smallint,
    sponsor_hosing_expl character varying(32000),
    any_conserns_on_sponsor character varying(32000),
    sponsor_has_criminal_hist smallint,
    sponsor_felony_convictions character varying(32000),
    sponsor_misdemeanor_conviction character varying(32000),
    sponsor_probation_parole character varying(32000),
    parent_child_relational_issue smallint,
    parent_child_issue_expl character varying(32000),
    sponsor_order_of_removal smallint,
    spnsr_order_of_removal_date timestamp without time zone,
    other_uacs_sponsored smallint,
    trafficking_in_persons smallint,
    date_eligibility_letter_issued timestamp without time zone,
    child_disability_act smallint,
    specify_uac_disability character varying(32000),
    victim_of_physex_abuse smallint,
    victim_of_physex_abuse_summary character varying(32000),
    sponsor_risk_to_uac smallint,
    sponsor_risk_to_uac_sht_smmry character varying(32000),
    list_of_alergies character varying(32000),
    feel_unwell smallint,
    feel_unwell_symptoms character varying(32000),
    previous_placment character varying(32000),
    additional_med_info character varying(32000),
    additional_sponsor_info character varying(32000),
    care_plan_reunification character varying(32000),
    care_plan_legal character varying(32000),
    care_plan_mental character varying(32000),
    someone_payed_for_pic smallint,
    isdeleted smallint DEFAULT 0
);


--
-- Name: uac_children; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_children (
    uac_children_id numeric(38,0),
    uac_assessment_id numeric(38,0),
    child_name character varying(2000),
    age numeric(38,0),
    dob timestamp without time zone,
    current_location character varying(2000),
    father_mother_name character varying(2000)
);


--
-- Name: uac_cr_medical_history; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_cr_medical_history (
    medical_hist_id numeric(38,0) NOT NULL,
    uac_case_review_id bigint NOT NULL,
    mm_condition_id smallint NOT NULL,
    condition_yn smallint,
    clarification character varying(2000),
    date_created timestamp without time zone,
    user_created character varying(112)
);


--
-- Name: uac_cr_medication_history; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_cr_medication_history (
    medication_hist_id bigint NOT NULL,
    uac_case_review_id bigint NOT NULL,
    medication_name character varying(2000),
    dosage character varying(2000),
    timeframe character varying(2000),
    medical_condition character varying(32000),
    date_created timestamp without time zone,
    user_created character varying(112),
    uptime timestamp without time zone,
    upuser character varying(112)
);


--
-- Name: uac_criminal_history; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_criminal_history (
    criminal_history_id numeric(38,0) NOT NULL,
    uac_assessment_id numeric(38,0) NOT NULL,
    crime_discription character varying(2000),
    crime_date timestamp without time zone,
    length_of_sentence character varying(2000),
    location character varying(32000),
    date_created timestamp without time zone,
    user_created character varying(112),
    uptime timestamp without time zone,
    upuser character varying(112)
);


--
-- Name: uac_discharge_notification; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_discharge_notification (
    discharge_id bigint NOT NULL,
    uac_program_id bigint NOT NULL,
    date_of_discharge timestamp without time zone,
    type_of_discharge smallint,
    sponsor_id bigint,
    prove_of_relationship character varying(32000),
    program_uac_transfer_to smallint,
    dhs_family_shelter character varying(2000),
    law_enforcement_id smallint,
    address character varying(2000),
    city character varying(2000),
    state character(2),
    zip_code character varying(10),
    phone character varying(22),
    fax character varying(22),
    uac_legal_status_id smallint,
    date_created timestamp without time zone,
    user_created character varying(112),
    uptime timestamp without time zone,
    upuser character varying(112),
    orr_decision smallint,
    date_of_orr_decision timestamp without time zone,
    other_law_enforcement character varying(2000),
    isdeleted smallint DEFAULT 0
);


--
-- Name: uac_doctor_visit; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_doctor_visit (
    visit_id numeric(38,0) NOT NULL,
    uac_program_id numeric(38,0) NOT NULL,
    date_of_visit timestamp without time zone,
    visit_type_id smallint,
    visit_reason_id smallint,
    cpecify_if_other character varying(112),
    diagnosis_id smallint,
    summary_of_outcome character varying(4000),
    dose numeric(38,0),
    drug_use_direction character varying(4000),
    drug_date_started timestamp without time zone,
    psychotropic_med smallint,
    reason_for_drug character varying(4000),
    date_created timestamp without time zone,
    user_created character varying(112),
    uptime timestamp without time zone,
    upuser character varying(112),
    drug_name character varying(112)
);


--
-- Name: uac_documents; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_documents (
    doc_id bigint NOT NULL,
    uac_program_id bigint,
    file_name character varying(2000),
    file_type character varying(250),
    file_size bigint,
    file_content bytea,
    remarks character varying(32000),
    uploaded_by character varying(250),
    uptime timestamp without time zone,
    upuser character varying(112),
    isdeleted smallint DEFAULT 0,
    date_created timestamp without time zone,
    org_file_name character varying(250)
);


--
-- Name: uac_education_placement; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_education_placement (
    placement_id bigint NOT NULL,
    uac_program_id bigint NOT NULL,
    file_name character varying(2000),
    org_file_name character varying(2000),
    file_type character varying(250),
    file_size bigint,
    file_path character varying(112),
    placement_type smallint,
    report_type character varying(50),
    remarks character varying(32000),
    uploaded_by character varying(50),
    uptime timestamp without time zone,
    upuser character varying(112),
    isdeleted smallint DEFAULT 0
);


--
-- Name: uac_effort; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_effort (
    effort_id bigint NOT NULL,
    uac_program_id bigint NOT NULL,
    effort_type_id smallint NOT NULL,
    contact_location_id smallint,
    date_of_last_contact timestamp without time zone,
    date_of_contact timestamp without time zone,
    training_date timestamp without time zone,
    date_of_next_contact timestamp without time zone,
    recreation character varying(112),
    recreation_notes character varying(500),
    time_spent timestamp without time zone,
    legal_relief_provided bigint,
    rec_value bigint,
    date_created timestamp without time zone,
    user_created character varying(112),
    uptime timestamp without time zone,
    upuser character varying(112)
);


--
-- Name: uac_emotional_concerns; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_emotional_concerns (
    initial_intakes_id bigint NOT NULL,
    emotional_concern_id smallint NOT NULL,
    uac_emotional_concerns_id bigint,
    yes_no smallint,
    other_exp character varying(500)
);


--
-- Name: uac_family_info; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_family_info (
    rel_id numeric(38,0) NOT NULL,
    initial_intakes_id bigint NOT NULL,
    relative_name character varying(2000),
    relationship_id smallint,
    address character varying(2000),
    phone character varying(22),
    date_created timestamp without time zone,
    user_created character varying(112),
    uptime timestamp without time zone,
    upuser character varying(112)
);


--
-- Name: uac_family_relations; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_family_relations (
    uac_relationship_id numeric(38,0) NOT NULL,
    uac_assessment_id numeric(38,0) NOT NULL,
    relative_name character varying(2000),
    age numeric(38,0),
    dob timestamp without time zone,
    relationship_id smallint,
    relations_in_us smallint
);


--
-- Name: uac_fast; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_fast (
    fast_id numeric(38,0) NOT NULL,
    uac_id bigint NOT NULL,
    intake_staff_name character varying(112),
    fast_status character(1),
    fac_contactinfo character varying(250),
    uac_location_at_ref character varying(250),
    detention_facility_if_any character varying(112),
    unaccompanied_status character varying(50),
    uac_behaveior_hist character varying(2000),
    additional_info character varying(2000),
    placement_consultation character varying(250),
    intakes_indication smallint,
    care_provider_indication smallint,
    ffs_indication smallint,
    i_petty_offenses smallint,
    i_non_petty_offenses numeric(38,0),
    i_non_firearm_violence numeric(38,0),
    i_violent_offenses numeric(38,0),
    i_weapon1_violences numeric(38,0),
    i_weapon2_violences numeric(38,0),
    i_weapon3_violation smallint,
    i_voiw3_violence smallint,
    i_sexual_assault numeric(38,0),
    i_serious_violent_offenses smallint,
    i_comments character varying(2000),
    c_petty_offenses smallint,
    c_non_petty_offenses numeric(38,0),
    c_non_firearm_violence numeric(38,0),
    c_violent_offenses numeric(38,0),
    c_weapon1_violences numeric(38,0),
    c_weapon2_violences numeric(38,0),
    c_weapon3_violences smallint,
    c_voiw3_violences smallint,
    c_sexual_assault numeric(38,0),
    c_serious_violent_offenses smallint,
    c_comments character varying(2000),
    f_petty_offenses smallint,
    f_non_petty_offenses numeric(38,0),
    f_non_firearm_violence numeric(38,0),
    f_violent_offenses numeric(38,0),
    f_weapon1_violences numeric(38,0),
    f_weapon2_violences numeric(38,0),
    f_weapon3_violences smallint,
    f_voiw3_violences smallint,
    f_sexual_assault numeric(38,0),
    f_serious_violent_offenses smallint,
    f_comments character varying(2000),
    i_vt_gov_custody numeric(38,0),
    c_vt_gov_custody numeric(38,0),
    f_vt_gov_custody numeric(38,0),
    i_gang_violation numeric(38,0),
    c_gang_violation numeric(38,0),
    f_gang_violation numeric(38,0),
    i_comments_on_gang_violation character varying(2000),
    c_comments_on_gang_violation character varying(2000),
    f_comments_on_gang_violation character varying(2000),
    i_escapes_from_gov_custody numeric(38,0),
    c_escapes_from_gov_custody numeric(38,0),
    f_escapes_from_gov_custody numeric(38,0),
    i_other_rist_factor_score smallint,
    c_other_rist_factor_score smallint,
    f_other_rist_factor_score smallint,
    i_other_risk_comment character varying(2000),
    c_other_risk_comment character varying(2000),
    f_other_risk_comment character varying(2000),
    mental_helth_issue smallint,
    confirm_mental_helth_issue smallint,
    comment_if_yes_to_mental_issue character varying(2000),
    is_service_required smallint,
    comment_if_yes_to_service character varying(2000),
    comment_if_no_to_service character varying(2000),
    i_comment_on_mental_issue character varying(2000),
    c_comment_on_mental_issue character varying(2000),
    f_comment_on_mental_issue character varying(2000),
    c_therapeutic_need_identified smallint,
    f_therapeutic_need_identified smallint,
    c_ther_need_require_change smallint,
    f_ther_need_require_change smallint,
    i_comment_ther_need_identified character varying(2000),
    c_comment_ther_need_identified character varying(2000),
    f_comment_ther_need_identified character varying(2000),
    c_evidence_of_child_behavior smallint,
    f_evidence_of_child_behavior smallint,
    c_has_reason_in_legal_process smallint,
    f_has_reason_in_legal_process smallint,
    c_has_reason_in_reunification smallint,
    f_has_reason_in_reunification smallint,
    attoney_letter_provided smallint,
    attoney_name character varying(112),
    attoney_letter_id numeric(38,0),
    c_comments_uac_wc character varying(2000),
    f_comments_uac_wc character varying(2000),
    i_score numeric(38,0),
    i_recommented_prog_type character varying(112),
    did_intakes_override_placement smallint,
    i_is_fast_placement smallint,
    i_additional_service_required smallint,
    i_staff_name character varying(112),
    i_ducs_supervisor_name character varying(112),
    i_date_override_approved timestamp without time zone,
    i_time_override_approved timestamp without time zone,
    i_override_justification character varying(2000),
    c_staff_name character varying(112),
    c_score numeric(38,0),
    ffs_name character varying(112),
    ffs_score numeric(38,0),
    date_new_placement timestamp without time zone,
    program_id smallint,
    is_placement_different smallint,
    did_fss_override smallint,
    f_staff_name character varying(112),
    f_ducs_supervisor_name character varying(112),
    f_date_override_approved timestamp without time zone,
    f_time_override_approved timestamp without time zone,
    f_override_justification character varying(2000),
    self_sch_todo_list smallint,
    others_sch_todo_list smallint,
    alert_date timestamp without time zone,
    alert_type smallint,
    alert_notes character varying(2000),
    date_created timestamp without time zone,
    user_created character varying(112),
    uptime timestamp without time zone,
    upuser character varying(112),
    i_other_rist_factor smallint DEFAULT 0,
    c_other_rist_factor smallint DEFAULT 0,
    f_other_rist_factor smallint DEFAULT 0,
    i_alert_type smallint DEFAULT 0,
    re_apprehension smallint,
    is_override_of_plaement_matrix smallint,
    q1_int character varying(100),
    q1_fac character varying(100),
    q1_ffs character varying(100),
    q2_int character varying(100),
    q2_fac character varying(100),
    q2_ffs character varying(100),
    q3_int character varying(100),
    q3_fac character varying(100),
    q3_ffs character varying(100),
    q4_int character varying(100),
    q4_fac character varying(100),
    q4_ffs character varying(100),
    q5_int character varying(100),
    q5_fac character varying(100),
    q5_ffs character varying(100),
    i_other_rist_factors character varying(25),
    c_other_rist_factors character varying(25),
    f_other_rist_factors character varying(25),
    pm_therapeuticneed smallint,
    pm_childbehavior smallint,
    pm_legalprocess smallint,
    pm_familyreunion smallint,
    date_of_finalplacement timestamp without time zone,
    final_program_name character varying(250),
    final_program_type character varying(250),
    ipscore smallint,
    is_override_of_pm smallint
);


--
-- Name: uac_foster_care_travel_request; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_foster_care_travel_request (
    travel_request_id numeric(38,0),
    uac_program_id numeric(38,0),
    date_requested timestamp without time zone,
    requestor_name character varying(50),
    requestor_phone character varying(22),
    requestor_email character varying(100),
    travel_overview character varying(500),
    child_name character varying(50),
    child_alien_no character varying(10),
    date_travel_begin timestamp without time zone,
    date_travel_end timestamp without time zone,
    child_name_on_travel character varying(50),
    child_relationship character varying(50),
    contact_number character varying(22),
    address_child_stay character varying(250),
    transportation_mode_id smallint DEFAULT 1,
    transportation_info character varying(500),
    vehicle_make_id smallint,
    vehicle_model character varying(50),
    license_plate character varying(50),
    primary_drivers_name character varying(50),
    drivers_license_number character varying(50),
    drivers_license_state character varying(20),
    insurance_company character varying(100),
    policty_number character varying(20),
    travel_reason character varying(2000),
    travel_complies_state_rules smallint DEFAULT 0,
    noncompliance_explanation character varying(250),
    trip_summary character varying(100),
    child_supervision_plan character varying(250),
    travel_safety_concern smallint DEFAULT 0,
    safety_concern_explanation character varying(250),
    has_flight_risk smallint DEFAULT 0,
    flight_risk_explanation character varying(250),
    travel_comment character varying(500),
    date_comment timestamp without time zone DEFAULT ('now'::text)::timestamp without time zone,
    orr_official character varying(50),
    date_created timestamp without time zone,
    user_created character varying(112),
    uptime timestamp without time zone DEFAULT ('now'::text)::timestamp without time zone,
    upuser character varying(112),
    isdeleted smallint DEFAULT 0
);


--
-- Name: uac_gang_determination_by; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_gang_determination_by (
    uac_id bigint NOT NULL,
    determination_id smallint NOT NULL
);


--
-- Name: uac_hotline_alert; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_hotline_alert (
    hotline_alert_id bigint NOT NULL,
    date_of_call timestamp without time zone NOT NULL,
    phone_reporter character varying(50),
    language_reporter character varying(50),
    transcr_transl_needed smallint,
    first_name character varying(200),
    last_name character varying(200),
    type_of_reporter character varying(200),
    contact_email character varying(200),
    contact_phone character varying(50),
    incident_desc character varying(16000),
    incident_date timestamp without time zone,
    staff_present smallint,
    staff_present_info character varying(4000),
    incident_reported smallint,
    incident_reported_info character varying(4000),
    incident_reported_date timestamp without time zone,
    prog_id smallint,
    prog_city character varying(50),
    prog_state character(2),
    prog_desc character varying(4000),
    uac_id bigint,
    incident_type character varying(200),
    incident_allegation_type character varying(2000),
    incident_synopsis character varying(4000),
    reported_to_cps smallint,
    reported_to_law_enforcement smallint,
    hotline_rep_name character varying(200),
    hotline_rep_email character varying(200),
    hotline_rep_phone character varying(200),
    intakes_name character varying(200),
    intakes_email character varying(200),
    intakes_phone character varying(200),
    psa_name character varying(200),
    psa_email character varying(200),
    psa_phone character varying(200),
    not_enoughinfo_to_identify smallint,
    ffs_name character varying(200),
    ffs_email character varying(200),
    ffs_date timestamp without time zone,
    po_name character varying(200),
    po_email character varying(200),
    po_date timestamp without time zone,
    date_created timestamp without time zone,
    user_created character varying(128),
    date_updated timestamp without time zone,
    user_updated character varying(128),
    uac_a_number character varying(10),
    uac_firstname character varying(200),
    uac_lastname character varying(200),
    uac_gender character varying(20),
    uac_age bigint,
    uac_cob character varying(200),
    uac_otherdesc character varying(4000),
    uac_otherucinvolved smallint,
    uac_otherucinvolveddesc character varying(4000),
    date_reported_orr timestamp without time zone,
    comments character varying(16000),
    isdeleted smallint DEFAULT 0,
    senttoorr smallint,
    senttoorrdate timestamp without time zone,
    ffs_sup_name character varying(200),
    ffs_sup_email character varying(200),
    ffs_sup_date timestamp without time zone
);


--
-- Name: uac_hotline_reporting; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_hotline_reporting (
    hotline_alert_id bigint,
    state character(2),
    report_date timestamp without time zone,
    case_number character varying(200),
    officer_name character varying(2000),
    officer_badge_number character varying(2000),
    reported_to_law smallint,
    hotline_reporting_id double precision NOT NULL,
    date_created timestamp without time zone,
    date_updated timestamp without time zone,
    user_created character varying(200),
    user_updated character varying(200),
    isdeleted smallint DEFAULT 0
);


--
-- Name: uac_identity_info; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_identity_info (
    risk_assessment_id bigint,
    identity_id smallint,
    transgender_type smallint,
    transgender_type_other character varying(112),
    identity_other_exp character varying(112)
);


--
-- Name: uac_iia_summary; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_iia_summary (
    iia_summary_id bigint NOT NULL,
    initial_intakes_id bigint NOT NULL,
    summary_of_interviewer character varying(4000),
    action_taken character varying(4000)
);


--
-- Name: uac_images; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_images (
    image_id bigint NOT NULL,
    uac_program_id bigint NOT NULL,
    file_name character varying(250),
    image_path character varying(250),
    image_type character varying(250),
    image_size bigint,
    date_uploaded timestamp without time zone,
    user_uploaded character varying(112)
);


--
-- Name: uac_images_tmp; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_images_tmp (
    image_id bigint NOT NULL,
    uac_program_id bigint NOT NULL,
    file_name character varying(250),
    image_path character varying(250),
    image_type character varying(250),
    image_size bigint,
    date_uploaded timestamp without time zone,
    user_uploaded character varying(112)
);


--
-- Name: uac_immunization; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_immunization (
    immunization_id numeric(38,0) NOT NULL,
    uac_program_id numeric(38,0) NOT NULL,
    immune_type_id smallint NOT NULL,
    immune_date1 timestamp without time zone,
    immune_dose1 numeric(38,0),
    immune_date2 timestamp without time zone,
    immune_dose2 numeric(38,0),
    immune_date3 timestamp without time zone,
    immune_dose3 numeric(38,0),
    immune_date4 timestamp without time zone,
    immune_dose4 numeric(38,0),
    immune_date5 timestamp without time zone,
    immune_dose5 numeric(38,0),
    date_created timestamp without time zone,
    user_created character varying(112),
    uptime timestamp without time zone,
    upuser character varying(112)
);


--
-- Name: uac_individual_service_plan; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_individual_service_plan (
    service_plan_id bigint NOT NULL,
    uac_program_id bigint NOT NULL,
    case_manager character varying(2000),
    clinician_name character varying(2000),
    orientation_start_date timestamp without time zone,
    orientation_end_date timestamp without time zone,
    orientation_person character varying(2000),
    assessment_start_date timestamp without time zone,
    assessment_end_date timestamp without time zone,
    assessment_person character varying(2000),
    medical_start_date timestamp without time zone,
    medical_end_date timestamp without time zone,
    medical_person character varying(2000),
    ea_start_date timestamp without time zone,
    ea_end_date timestamp without time zone,
    ea_person character varying(2000),
    rl_start_date timestamp without time zone,
    rl_end_date timestamp without time zone,
    rl_person character varying(2000),
    ic_start_date timestamp without time zone,
    ic_end_date timestamp without time zone,
    ic_person character varying(2000),
    gc_start_date timestamp without time zone,
    gc_end_date timestamp without time zone,
    gc_person character varying(2000),
    ars_start_date timestamp without time zone,
    ars_end_date timestamp without time zone,
    ars_person character varying(2000),
    cm_start_date timestamp without time zone,
    cm_end_date timestamp without time zone,
    cm_person character varying(2000),
    lo_start_date timestamp without time zone,
    lo_end_date timestamp without time zone,
    lo_person character varying(2000),
    v_start_date timestamp without time zone,
    v_end_date timestamp without time zone,
    v_person character varying(2000),
    date_created timestamp without time zone,
    user_created character varying(112),
    uptime timestamp without time zone,
    upuser character varying(112),
    ep_start_date timestamp without time zone,
    ep_end_date timestamp without time zone,
    ep_person character varying(2000),
    ec_start_date timestamp without time zone,
    ec_end_date timestamp without time zone,
    ec_person character varying(2000),
    isdeleted smallint DEFAULT 0
);


--
-- Name: uac_info; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_info (
    uac_id bigint NOT NULL,
    alien_no character varying(10) NOT NULL,
    first_name character varying(2000) NOT NULL,
    last_name character varying(2000) NOT NULL,
    aka character varying(2000),
    dob timestamp without time zone,
    cob character varying(50),
    date_of_entry timestamp without time zone,
    manner_of_entry character varying(50) DEFAULT 'NULL'::character varying,
    city_of_entry character varying(50),
    specify_city_of_entry character varying(2000),
    state_of_entry character(2),
    date_of_apprehension timestamp without time zone,
    referring_office smallint,
    notification_city character varying(50),
    specify_not_city character varying(2000),
    notification_state character(2),
    date_orr_notified timestamp without time zone,
    time_orr_notified timestamp without time zone,
    date_orr_approved timestamp without time zone,
    time_orr_approved timestamp without time zone,
    pregnancy smallint,
    injury smallint,
    illness smallint,
    behavior_wo_medication smallint,
    behavior_w_medication smallint,
    note_bi_wo_medication character varying(32000),
    note_for_w_medication character varying(32000),
    immigration_status character varying(2000),
    referring_agency character varying(2000),
    orr_comments character varying(32000),
    uac_status character varying(50),
    date_created timestamp without time zone,
    user_created character varying(112),
    uptime timestamp without time zone,
    upuser character varying(112),
    gender character varying(6),
    uac_fast_status character(1),
    status_id smallint,
    agency_id smallint,
    middle_name character varying(2000),
    uac_health_concern smallint,
    uac_criminal_charge smallint,
    uac_additional_info character varying(250),
    hc_other smallint,
    hc_summary character varying(32000),
    hc_ergent_condition smallint,
    uac_flag character varying(30),
    processing_poc character varying(2000),
    processing_email character varying(2000),
    processing_phone character varying(20),
    referral_notes character varying(32000),
    justification_for_ss_placement character varying(32000),
    date_of_current_location timestamp without time zone,
    known_gang_affiliation smallint,
    name_of_gang character varying(500),
    city_of_apprehension character varying(50),
    state_of_apprehension character varying(50),
    city_of_current_location character varying(50),
    state_of_current_location character varying(50),
    gang_affiliation_summary character varying(32000),
    detention_type_of_facility smallint,
    facility_name character varying(250),
    facility_phone character varying(20),
    facility_poc character varying(500),
    facility_fax character varying(20),
    facility_admission_date timestamp without time zone,
    facility_discharged_date timestamp without time zone,
    incident_rpt_in_dc character varying(32000),
    sum_of_mm_health_condition character varying(32000),
    date_cancelled timestamp without time zone,
    cancelled_by character varying(112),
    referral_date timestamp without time zone,
    familygroup character varying(13),
    foot_guide smallint,
    reviewed_by_orr smallint,
    current_location_other character varying(500)
);


--
-- Name: COLUMN uac_info.cob; Type: COMMENT; Schema: uacportal; Owner: -
--

COMMENT ON COLUMN uac_info.cob IS 'Country of Birth';


--
-- Name: COLUMN uac_info.specify_city_of_entry; Type: COMMENT; Schema: uacportal; Owner: -
--

COMMENT ON COLUMN uac_info.specify_city_of_entry IS 'If City is other, then specify';


--
-- Name: COLUMN uac_info.referring_office; Type: COMMENT; Schema: uacportal; Owner: -
--

COMMENT ON COLUMN uac_info.referring_office IS 'Referring field office';


--
-- Name: COLUMN uac_info.notification_city; Type: COMMENT; Schema: uacportal; Owner: -
--

COMMENT ON COLUMN uac_info.notification_city IS 'Location of Minor in ';


--
-- Name: COLUMN uac_info.date_orr_notified; Type: COMMENT; Schema: uacportal; Owner: -
--

COMMENT ON COLUMN uac_info.date_orr_notified IS 'Date ORR/DUCS was notified';


--
-- Name: COLUMN uac_info.date_orr_approved; Type: COMMENT; Schema: uacportal; Owner: -
--

COMMENT ON COLUMN uac_info.date_orr_approved IS 'Date ORR/DUCS approved placement';


--
-- Name: COLUMN uac_info.uac_fast_status; Type: COMMENT; Schema: uacportal; Owner: -
--

COMMENT ON COLUMN uac_info.uac_fast_status IS 'F for FAST , N for Non-FAST, B for Both';


--
-- Name: COLUMN uac_info.middle_name; Type: COMMENT; Schema: uacportal; Owner: -
--

COMMENT ON COLUMN uac_info.middle_name IS 'MIDDLE NAME';


--
-- Name: COLUMN uac_info.uac_health_concern; Type: COMMENT; Schema: uacportal; Owner: -
--

COMMENT ON COLUMN uac_info.uac_health_concern IS 'Is there any Health Concern for the UAC?';


--
-- Name: COLUMN uac_info.uac_criminal_charge; Type: COMMENT; Schema: uacportal; Owner: -
--

COMMENT ON COLUMN uac_info.uac_criminal_charge IS 'Was there any criminal charge for the UAC?';


--
-- Name: COLUMN uac_info.uac_additional_info; Type: COMMENT; Schema: uacportal; Owner: -
--

COMMENT ON COLUMN uac_info.uac_additional_info IS 'UAC Additional APPREHENSION Information';


--
-- Name: COLUMN uac_info.hc_other; Type: COMMENT; Schema: uacportal; Owner: -
--

COMMENT ON COLUMN uac_info.hc_other IS 'Health Concern: Other';


--
-- Name: COLUMN uac_info.hc_summary; Type: COMMENT; Schema: uacportal; Owner: -
--

COMMENT ON COLUMN uac_info.hc_summary IS 'Health Concern: Summary  (List diagnosis, medications, observations, and number of months pregnant)';


--
-- Name: COLUMN uac_info.hc_ergent_condition; Type: COMMENT; Schema: uacportal; Owner: -
--

COMMENT ON COLUMN uac_info.hc_ergent_condition IS 'Health Concern: If UAC has urgent medical/mental health conditions, check here to indicate that the UAC has been seen.';


--
-- Name: COLUMN uac_info.uac_flag; Type: COMMENT; Schema: uacportal; Owner: -
--

COMMENT ON COLUMN uac_info.uac_flag IS 'UAC APPREHENSIONs: Relationship flags';


--
-- Name: COLUMN uac_info.processing_poc; Type: COMMENT; Schema: uacportal; Owner: -
--

COMMENT ON COLUMN uac_info.processing_poc IS 'UAC APPREHENSIONs and Transaction Information: Processing POC';


--
-- Name: COLUMN uac_info.processing_email; Type: COMMENT; Schema: uacportal; Owner: -
--

COMMENT ON COLUMN uac_info.processing_email IS 'UAC APPREHENSIONs and Transaction Information: Processing EMAIL';


--
-- Name: COLUMN uac_info.processing_phone; Type: COMMENT; Schema: uacportal; Owner: -
--

COMMENT ON COLUMN uac_info.processing_phone IS 'UAC APPREHENSIONs and Transaction Information: Processing PHONE';


--
-- Name: COLUMN uac_info.referral_notes; Type: COMMENT; Schema: uacportal; Owner: -
--

COMMENT ON COLUMN uac_info.referral_notes IS 'Referral Notes';


--
-- Name: COLUMN uac_info.justification_for_ss_placement; Type: COMMENT; Schema: uacportal; Owner: -
--

COMMENT ON COLUMN uac_info.justification_for_ss_placement IS 'Justification for Secure Placement';


--
-- Name: COLUMN uac_info.date_of_current_location; Type: COMMENT; Schema: uacportal; Owner: -
--

COMMENT ON COLUMN uac_info.date_of_current_location IS 'Date Time of Current Location';


--
-- Name: COLUMN uac_info.known_gang_affiliation; Type: COMMENT; Schema: uacportal; Owner: -
--

COMMENT ON COLUMN uac_info.known_gang_affiliation IS 'Any Known Gang affiliation';


--
-- Name: COLUMN uac_info.name_of_gang; Type: COMMENT; Schema: uacportal; Owner: -
--

COMMENT ON COLUMN uac_info.name_of_gang IS 'Name of Gang';


--
-- Name: COLUMN uac_info.city_of_apprehension; Type: COMMENT; Schema: uacportal; Owner: -
--

COMMENT ON COLUMN uac_info.city_of_apprehension IS 'The City of Apprehension';


--
-- Name: COLUMN uac_info.state_of_apprehension; Type: COMMENT; Schema: uacportal; Owner: -
--

COMMENT ON COLUMN uac_info.state_of_apprehension IS 'The STATE of Apprehension';


--
-- Name: COLUMN uac_info.city_of_current_location; Type: COMMENT; Schema: uacportal; Owner: -
--

COMMENT ON COLUMN uac_info.city_of_current_location IS 'The City of Current Location';


--
-- Name: COLUMN uac_info.state_of_current_location; Type: COMMENT; Schema: uacportal; Owner: -
--

COMMENT ON COLUMN uac_info.state_of_current_location IS 'The State of Current Location';


--
-- Name: COLUMN uac_info.gang_affiliation_summary; Type: COMMENT; Schema: uacportal; Owner: -
--

COMMENT ON COLUMN uac_info.gang_affiliation_summary IS 'Gang Affiliation Summary';


--
-- Name: COLUMN uac_info.detention_type_of_facility; Type: COMMENT; Schema: uacportal; Owner: -
--

COMMENT ON COLUMN uac_info.detention_type_of_facility IS 'Detention Type of Facility';


--
-- Name: COLUMN uac_info.facility_name; Type: COMMENT; Schema: uacportal; Owner: -
--

COMMENT ON COLUMN uac_info.facility_name IS 'Name of Facility';


--
-- Name: COLUMN uac_info.facility_phone; Type: COMMENT; Schema: uacportal; Owner: -
--

COMMENT ON COLUMN uac_info.facility_phone IS 'Phone of Facility';


--
-- Name: COLUMN uac_info.facility_poc; Type: COMMENT; Schema: uacportal; Owner: -
--

COMMENT ON COLUMN uac_info.facility_poc IS 'POC of Facility';


--
-- Name: COLUMN uac_info.facility_fax; Type: COMMENT; Schema: uacportal; Owner: -
--

COMMENT ON COLUMN uac_info.facility_fax IS 'Fax of Facility';


--
-- Name: COLUMN uac_info.facility_admission_date; Type: COMMENT; Schema: uacportal; Owner: -
--

COMMENT ON COLUMN uac_info.facility_admission_date IS 'Facility Admission Date';


--
-- Name: COLUMN uac_info.facility_discharged_date; Type: COMMENT; Schema: uacportal; Owner: -
--

COMMENT ON COLUMN uac_info.facility_discharged_date IS 'Facility Discharged Date';


--
-- Name: COLUMN uac_info.incident_rpt_in_dc; Type: COMMENT; Schema: uacportal; Owner: -
--

COMMENT ON COLUMN uac_info.incident_rpt_in_dc IS 'Summary of Known Incident Reports During Stay at Detention Center';


--
-- Name: COLUMN uac_info.sum_of_mm_health_condition; Type: COMMENT; Schema: uacportal; Owner: -
--

COMMENT ON COLUMN uac_info.sum_of_mm_health_condition IS 'Summary of known TB tests and medical/mental health condition';


--
-- Name: COLUMN uac_info.date_cancelled; Type: COMMENT; Schema: uacportal; Owner: -
--

COMMENT ON COLUMN uac_info.date_cancelled IS 'The Date UAC''s Status change to cancelled';


--
-- Name: COLUMN uac_info.cancelled_by; Type: COMMENT; Schema: uacportal; Owner: -
--

COMMENT ON COLUMN uac_info.cancelled_by IS 'The user who cancelled the UAC';


--
-- Name: uac_info_tmp; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_info_tmp (
    token character varying(500) NOT NULL,
    uac_id bigint NOT NULL,
    alien_no character varying(10) NOT NULL,
    first_name character varying(2000) NOT NULL,
    last_name character varying(2000) NOT NULL,
    middle_name character varying(2000),
    aka character varying(2000),
    dob timestamp without time zone,
    cob character varying(50),
    date_of_entry timestamp without time zone,
    manner_of_entry character varying(50) DEFAULT 'EWI'::character varying,
    city_of_entry character varying(50),
    specify_city_of_entry character varying(2000),
    state_of_entry character(2),
    date_of_apprehension timestamp without time zone,
    referring_office smallint,
    notification_city character varying(50),
    specify_not_city character varying(2000),
    notification_state character(2),
    date_orr_notified timestamp without time zone,
    time_orr_notified timestamp without time zone,
    date_orr_approved timestamp without time zone,
    time_orr_approved timestamp without time zone,
    pregnancy smallint,
    injury smallint,
    illness smallint,
    hc_other smallint,
    behavior_wo_medication smallint,
    behavior_w_medication smallint,
    note_bi_wo_medication character varying(32000),
    note_for_w_medication character varying(32000),
    immigration_status character varying(2000),
    referring_agency character varying(2000),
    orr_comments character varying(32000),
    uac_status character varying(50),
    date_created timestamp without time zone,
    user_created character varying(112),
    uptime timestamp without time zone,
    upuser character varying(112),
    gender character varying(6),
    uac_fast_status character(1),
    status_id smallint,
    agency_id smallint,
    hc_summary character varying(32000),
    hc_ergent_condition smallint,
    uac_flag character varying(30),
    processing_poc character varying(2000),
    processing_email character varying(2000),
    referral_notes character varying(32000),
    justification_for_ss_placement character varying(32000),
    known_gang_affiliation smallint,
    name_of_gang character varying(500),
    gang_affiliation_summary character varying(32000),
    detention_type_of_facility smallint,
    facility_name character varying(250),
    facility_phone character varying(20),
    facility_poc character varying(500),
    facility_fax character varying(20),
    facility_admission_date timestamp without time zone,
    facility_discharged_date timestamp without time zone,
    incident_rpt_in_dc character varying(32000),
    sum_of_mm_health_condition character varying(32000),
    date_of_current_location timestamp without time zone,
    uac_health_concern smallint,
    uac_criminal_charge smallint,
    uac_additional_info character varying(250),
    city_of_apprehension character varying(50),
    state_of_apprehension character varying(50),
    city_of_current_location character varying(50),
    state_of_current_location character varying(50),
    processing_phone character varying(20),
    date_cancelled timestamp without time zone,
    cancelled_by character varying(112),
    referral_date timestamp without time zone,
    familygroup character varying(13),
    foot_guide smallint,
    reviewed_by_orr smallint,
    current_location_other character varying(500)
);


--
-- Name: uac_info_tmp_fromxml; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_info_tmp_fromxml (
    transaction_id character varying(500),
    uac_id bigint,
    alien_no character varying(10),
    first_name character varying(2000),
    last_name character varying(2000),
    middle_name character varying(2000),
    aka character varying(2000),
    dob timestamp without time zone,
    cob character varying(50),
    date_of_entry timestamp without time zone,
    manner_of_entry character varying(50) DEFAULT 'EWI'::character varying,
    city_of_entry character varying(50),
    specify_city_of_entry character varying(2000),
    state_of_entry character(2),
    date_of_apprehension timestamp without time zone,
    referring_office smallint,
    notification_city character varying(50),
    specify_not_city character varying(2000),
    notification_state character(2),
    date_orr_notified timestamp without time zone,
    time_orr_notified timestamp without time zone,
    date_orr_approved timestamp without time zone,
    time_orr_approved timestamp without time zone,
    pregnancy smallint,
    injury smallint,
    illness smallint,
    hc_other smallint,
    behavior_wo_medication smallint,
    behavior_w_medication smallint,
    note_bi_wo_medication character varying(32000),
    note_for_w_medication character varying(32000),
    immigration_status character varying(2000),
    referring_agency character varying(2000),
    orr_comments character varying(32000),
    uac_status character varying(50),
    date_created timestamp without time zone,
    user_created character varying(112),
    uptime timestamp without time zone,
    upuser character varying(112),
    gender character varying(6),
    uac_fast_status character(1),
    status_id smallint,
    agency_id smallint,
    hc_summary character varying(32000),
    hc_ergent_condition smallint,
    uac_flag character varying(30),
    processing_poc character varying(2000),
    processing_email character varying(2000),
    referral_notes character varying(32000),
    justification_for_ss_placement character varying(32000),
    known_gang_affiliation smallint,
    name_of_gang character varying(500),
    gang_affiliation_summary character varying(32000),
    detention_type_of_facility smallint,
    facility_name character varying(250),
    facility_phone character varying(20),
    facility_poc character varying(500),
    facility_fax character varying(20),
    facility_admission_date timestamp without time zone,
    facility_discharged_date timestamp without time zone,
    incident_rpt_in_dc character varying(32000),
    sum_of_mm_health_condition character varying(32000),
    date_of_current_location timestamp without time zone,
    uac_health_concern smallint,
    uac_criminal_charge smallint,
    uac_additional_info character varying(250),
    city_of_apprehension character varying(50),
    state_of_apprehension character varying(50),
    city_of_current_location character varying(50),
    state_of_current_location character varying(50),
    processing_phone character varying(20),
    date_cancelled timestamp without time zone,
    cancelled_by character varying(112),
    referral_date timestamp without time zone,
    reffering_sector character varying(6),
    family_group character varying(13)
);


--
-- Name: uac_ini_documents; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_ini_documents (
    doc_id bigint NOT NULL,
    risk_assessment_id bigint NOT NULL,
    file_name character varying(500) NOT NULL,
    org_file_name character varying(500) NOT NULL,
    file_type character varying(250),
    file_size bigint,
    date_created timestamp without time zone,
    uploaded_by character varying(250),
    uptime timestamp without time zone,
    upuser character varying(112),
    isdeleted smallint DEFAULT 0,
    doc_type character varying(20) NOT NULL
);


--
-- Name: uac_initial_assessment; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_initial_assessment (
    initial_intakes_id bigint NOT NULL,
    uac_program_id bigint NOT NULL,
    uac_arrival_date character varying(112),
    uac_arrived_time timestamp without time zone,
    uac_primary_language character varying(2000),
    language_inkate_conducted character varying(2000),
    cor smallint,
    date_departure_cor timestamp without time zone,
    someone_uac_knows_to_contact character varying(2000),
    had_medical_issue_past30 smallint,
    medical_issue_past30_comment character varying(32000),
    had_medical_issue_ever smallint,
    medical_issue_ever_comment character varying(32000),
    has_allergy smallint,
    has_dietary_needs smallint,
    dietary_needs_comment character varying(32000),
    taking_medication smallint,
    reason_of_injuries character varying(32000),
    other_medical_concerns character varying(32000),
    doc_visit_or_stayedin_hosp smallint,
    reason_for_visit_or_stayin character varying(32000),
    has_tb_hist smallint,
    explain_if_had_tb character varying(32000),
    has_seizures_hist smallint,
    explain_if_had_seizures character varying(32000),
    have_scars_tattoos smallint,
    explain_if_have_scars character varying(32000),
    explain_any_mental_issues character varying(32000),
    having_thoughts_of_harming character varying(32000),
    feel_safe smallint,
    fear_someone smallint,
    explain_fear character varying(32000),
    need_anything_now character varying(32000),
    staff_signature character varying(2000),
    signature_date timestamp without time zone,
    staff_name character varying(2000),
    staff_title character varying(2000),
    translator_signature character varying(2000),
    sign_date_of_translator character varying(2000),
    translator_name character varying(2000),
    language character varying(2000),
    date_created timestamp without time zone,
    user_created character varying(112),
    uptime timestamp without time zone,
    upuser character varying(112),
    allergy_comment character varying(32000),
    isdeleted smallint DEFAULT 0,
    date_arrival_us timestamp without time zone,
    child_room_location smallint,
    uac_child_primary_language character varying(2000),
    roomassignmentsafe smallint,
    roomassignmentsafeexp character varying(2000),
    anyinappcomments smallint,
    anyinappcommentsexp character varying(2000),
    identifyas character varying(200),
    identifytransgendered character varying(200),
    identifyasother character varying(200),
    istransorintersex smallint,
    tellsexualpreference smallint,
    tellsexualpreferenceexp character varying(2000),
    isanythingthere smallint,
    isanythingthereexp character varying(2000),
    lotofcomments smallint,
    lotofcommentsexp character varying(2000),
    haseversexuallyactive smallint,
    haseversexuallyactiveyes character varying(200),
    haseversexuallyactiveboth smallint,
    haseversexuallyactivebothexp character varying(200),
    didperformsexualfavours smallint,
    didperformsexualfavoursexp character varying(2000),
    anytrouble smallint,
    anytroubleexp character varying(2000),
    hadanytalk smallint,
    hadanytalkexp character varying(2000),
    gendernonconfirming smallint,
    gendernonconfirmingexp character varying(2000),
    anycriminalcharges smallint,
    anycriminalchargesexp character varying(2000),
    anymentaldisability character varying(200),
    disabilitylist character varying(200),
    anymentaldisabilityexp character varying(2000),
    physicalsize character varying(200),
    otherspecificinfo smallint,
    otherspecificinfoexp character varying(2000),
    housingandother character varying(200),
    clinicianshared smallint,
    cliniciansharedexp character varying(2000),
    childoryouth smallint,
    childoryouthexp character varying(2000),
    howtoreportthreats smallint,
    howtoreportthreatsexp character varying(2000),
    movedtoprivateroom smallint,
    movedtoprivateroomexp character varying(2000),
    movedtoroomarea smallint,
    movedtoroomareaexp character varying(2000),
    alternativebathroom smallint,
    alternativebathroomexp character varying(2000),
    educationalgroup smallint,
    educationalgroupexp character varying(2000),
    developedsafetyplan smallint,
    developedsafetyplanexp character varying(2000),
    increasedclinicalsessions smallint,
    increasedclinicalsessionsexp character varying(2000),
    mentalhealthservices smallint,
    mentalhealthservicesexp character varying(2000),
    closerstaffsupervision smallint,
    closerstaffsupervisionexp character varying(2000),
    staffedwithffs smallint,
    staffedwithffsexp character varying(2000),
    otherhousing smallint,
    otherhousingexp character varying(2000),
    date_interviewed timestamp without time zone,
    feel_safe_exp character varying(4000),
    roomlocation_talk_exp character varying(4000)
);


--
-- Name: uac_intakes_doc_list; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_intakes_doc_list (
    doc_id bigint NOT NULL,
    uac_id bigint NOT NULL,
    file_name character varying(2000),
    file_type character varying(250),
    file_size bigint,
    file_content bytea,
    uploaded_by character varying(250),
    isdeleted smallint DEFAULT 0,
    uptime timestamp without time zone,
    upuser character varying(112),
    org_file_name character varying(250)
);


--
-- Name: uac_isp_certificate; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_isp_certificate (
    certificate_id bigint NOT NULL,
    service_plan_id bigint NOT NULL,
    upuser character varying(112),
    uptime timestamp without time zone
);


--
-- Name: uac_isp_sub; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_isp_sub (
    isp_id bigint NOT NULL,
    service_plan_id bigint NOT NULL,
    service character varying(2000),
    frequency character varying(2000),
    tasks character varying(2000),
    person_responsible character varying(2000),
    start_date timestamp without time zone,
    end_date timestamp without time zone,
    date_created timestamp without time zone,
    user_created character varying(112),
    uptime timestamp without time zone,
    upuser character varying(112)
);


--
-- Name: uac_jobs; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_jobs (
    job_name character varying(50) NOT NULL,
    description character varying(200),
    run_time character varying(20) NOT NULL,
    active_flag smallint NOT NULL,
    last_run timestamp without time zone NOT NULL,
    job_id bigint NOT NULL
);


--
-- Name: uac_level1_logging; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_level1_logging (
    logid bigint,
    userid character varying(100),
    login_time timestamp without time zone,
    logout_time timestamp without time zone,
    ip_address character varying(100),
    browser_name character varying(250),
    browser_type character varying(250),
    browser_version character varying(250),
    created_date timestamp without time zone,
    event_type character varying(250)
);


--
-- Name: uac_level2_logging; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_level2_logging (
    logid bigint,
    userid character varying(250),
    page_title character varying(250),
    page_request_type character varying(250),
    ip_address character varying(100),
    created_date timestamp without time zone,
    browser_name character varying(250),
    browser_type character varying(250),
    browser_version character varying(250)
);


--
-- Name: uac_level3_logging; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_level3_logging (
    logid bigint,
    userid character varying(250),
    created_date timestamp without time zone,
    object_name character varying(250),
    filter_criteria character varying(4000),
    action_type character varying(250)
);


--
-- Name: uac_list_sir_type; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_list_sir_type (
    sir_type_id bigint,
    category_id bigint,
    description character varying(250),
    isemergency character(1),
    date_created timestamp without time zone,
    user_created character varying(250),
    uptime timestamp without time zone,
    upuser character varying(112),
    isdeleted smallint DEFAULT 0
);


--
-- Name: uac_maintenance_event; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_maintenance_event (
    event_id smallint,
    event character varying(2000),
    isactive smallint DEFAULT 0,
    date_of_event timestamp without time zone,
    additional_note smallint DEFAULT 0
);


--
-- Name: uac_medical_concern; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_medical_concern (
    initial_intakes_id bigint NOT NULL,
    concern_id numeric(38,0) NOT NULL,
    medical_concern_id numeric(38,0) NOT NULL,
    yes_no smallint,
    other_exp character varying(500)
);


--
-- Name: uac_medical_history; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_medical_history (
    mm_condition_id smallint NOT NULL,
    uac_assessment_id bigint NOT NULL,
    clarification character varying(2000),
    date_created timestamp without time zone,
    user_created character varying(112),
    medical_hist_id numeric(38,0) NOT NULL,
    condition_yn smallint
);


--
-- Name: uac_medical_screening; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_medical_screening (
    screening_id numeric(38,0) NOT NULL,
    uac_program_id numeric(38,0) NOT NULL,
    medical_exam_date timestamp without time zone,
    pregnancy smallint,
    medical_examiner_name character varying(112),
    dental_exam_date timestamp without time zone,
    tst_date_applied timestamp without time zone,
    tst_result smallint,
    specity_if_nagative numeric(38,0),
    igra_date_drawn timestamp without time zone,
    igra_type character varying(6),
    igra_result smallint,
    date_xray timestamp without time zone,
    xray_findings smallint,
    xray_scpecify_if_abnormal character varying(112),
    suggestive_tb smallint,
    smears_result smallint,
    nucleicacid_result smallint,
    caltures_results smallint,
    drug_susceptibility_resutl smallint,
    suscep_cpecify_if_other character varying(112),
    communicable_disease_id smallint DEFAULT 8,
    comm_disease_cpecify_if_other character varying(112),
    intakes_interrupted smallint,
    release_delayed smallint,
    quarantine smallint,
    number_of_uac_quarantined numeric(38,0),
    ltbi_treatment_started smallint,
    "3months_rehinment" smallint,
    date_created timestamp without time zone,
    user_created character varying(112),
    uptime timestamp without time zone,
    upuser character varying(112),
    disease_classification_id smallint DEFAULT 0,
    isdeleted smallint DEFAULT 0
);


--
-- Name: uac_medical_screening_notes; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_medical_screening_notes (
    screeining_note_id bigint NOT NULL,
    uac_program_id bigint NOT NULL,
    comments character varying(500),
    attachement_file_name character varying(112),
    date_created timestamp without time zone,
    user_created character varying(112),
    uptime timestamp without time zone,
    upuser character varying(112)
);


--
-- Name: uac_medical_visit; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_medical_visit (
    visit_id bigint NOT NULL,
    uac_program_id bigint,
    date_of_visit timestamp without time zone,
    specify_other_reason character varying(250),
    specify_other_diagnosis character varying(250),
    summary_of_outcome character varying(500),
    date_created timestamp without time zone,
    user_created character varying(112),
    uptime timestamp without time zone,
    upuser character varying(112)
);


--
-- Name: uac_medical_visit_diagnosis; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_medical_visit_diagnosis (
    visit_id numeric(38,0),
    diagnosis_id smallint
);


--
-- Name: uac_medical_visit_reason; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_medical_visit_reason (
    visit_id numeric(38,0),
    visit_reason_id smallint
);


--
-- Name: uac_medical_visit_type; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_medical_visit_type (
    visit_id numeric(38,0),
    visit_type_id smallint
);


--
-- Name: uac_medication_history; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_medication_history (
    medication_hist_id bigint NOT NULL,
    uac_assessment_id bigint NOT NULL,
    medication_name character varying(2000),
    dosage character varying(2000),
    timeframe character varying(2000),
    medical_condition character varying(32000),
    date_created timestamp without time zone,
    user_created character varying(112)
);


--
-- Name: uac_medication_info; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_medication_info (
    uac_program_id bigint NOT NULL,
    medication_id numeric(38,0) NOT NULL,
    medication_name character varying(2000),
    dose character varying(2000),
    medication_purpose character varying(2000),
    is_psychotropic smallint,
    drug_direction character varying(32000),
    drug_date timestamp without time zone,
    date_created timestamp without time zone,
    user_created character varying(112),
    uptime timestamp without time zone,
    upuser character varying(112)
);


--
-- Name: uac_mental_issues; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_mental_issues (
    initial_intakes_id bigint NOT NULL,
    mental_issue_id smallint NOT NULL,
    uac_mental_issues_id numeric(38,0) NOT NULL
);


--
-- Name: uac_program_exit; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_program_exit (
    program_exit_id bigint NOT NULL,
    uac_program_id bigint,
    date_of_discharge timestamp without time zone,
    type_of_discharge smallint,
    date_created timestamp without time zone,
    user_created character varying(112),
    uptime timestamp without time zone,
    upuser character varying(112)
);


--
-- Name: uac_program_info; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_program_info (
    uac_program_id numeric(38,0) NOT NULL,
    uac_id numeric(38,0) NOT NULL,
    program_id smallint NOT NULL,
    date_referred timestamp without time zone,
    bio_verified smallint,
    date_admitted timestamp without time zone,
    current_status character varying(50),
    date_discharged timestamp without time zone,
    date_created timestamp without time zone,
    user_created character varying(112),
    upuser character varying(112),
    uptime timestamp without time zone
);


--
-- Name: uac_psychological_eval; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_psychological_eval (
    uac_psychological_eval_id numeric(38,0) NOT NULL,
    uac_case_review_id numeric(38,0) NOT NULL,
    date_of_eval timestamp without time zone,
    evaluator character varying(2000),
    axis1 character varying(2000),
    axis2 character varying(2000),
    axis3 character varying(2000),
    axis4 character varying(2000),
    axis5 character varying(2000),
    sum_of_recommend character varying(32000),
    date_created timestamp without time zone,
    user_created character varying(112),
    uptime timestamp without time zone,
    upuser character varying(112)
);


--
-- Name: uac_release_request; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_release_request (
    release_id bigint NOT NULL,
    uac_program_id bigint NOT NULL,
    requester_name character varying(2000),
    requester_title character varying(2000),
    requester_phone character varying(22),
    type_of_release smallint,
    sponsor_id bigint,
    sponsor_aka character varying(2000),
    specify_non_immigrant_visa character varying(32000),
    specify_other_immigrant_status character varying(32000),
    proof_of_relationship smallint,
    detail_of_proof character varying(32000),
    has_doc_to_prove_relationship smallint,
    program_name character varying(2000),
    program_address1 character varying(2000),
    program_address2 character varying(2000),
    program_city character varying(2000),
    program_state character(2),
    program_zipcode character varying(10),
    prog_primary_contact character varying(2000),
    prog_primary_phone character varying(22),
    prog_primary_email character varying(112),
    is_urm_program smallint,
    is_program_licensed smallint,
    type_of_license character varying(2000),
    prog_agreed_to_orr_spnsr_cond smallint,
    program_identification character varying(32000),
    case_worker_name character varying(2000),
    case_worker_comments character varying(32000),
    attorney_contacted smallint,
    case_worker_recommendation smallint,
    cw_recommendation_after_hs smallint,
    cw_cancellation_reason_id smallint,
    case_coordinator_name character varying(2000),
    case_coordinator_comments character varying(32000),
    cc_recommendation smallint,
    cc_recommendation_after_hs smallint,
    cc_cancellation_reason_id smallint,
    orr_decision smallint,
    orr_home_study_status smallint,
    orr_decision_after_hs smallint,
    release_approved_date timestamp without time zone,
    release_scheduled_date timestamp without time zone,
    release_approved_by character varying(2000),
    next_sch_court_appearance timestamp without time zone,
    date_sponsor_notified timestamp without time zone,
    reason_to_notify_ice_in24h character varying(32000),
    user_notes character varying(32000),
    date_created timestamp without time zone,
    user_created character varying(112),
    uptime timestamp without time zone,
    upuser character varying(112),
    program_type character varying(2000),
    orr_comments character varying(32000),
    isdeleted smallint DEFAULT 0,
    cw_uptime timestamp without time zone,
    cw_upuser character varying(112),
    cc_uptime timestamp without time zone,
    cc_upuser character varying(112),
    orr_uptime timestamp without time zone,
    orr_upuser character varying(112)
);


--
-- Name: COLUMN uac_release_request.type_of_release; Type: COMMENT; Schema: uacportal; Owner: -
--

COMMENT ON COLUMN uac_release_request.type_of_release IS '1: Release to Sponsor, 2: Release to Program';


--
-- Name: uac_risk_assessment; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_risk_assessment (
    risk_assessment_id bigint NOT NULL,
    uac_program_id bigint NOT NULL,
    uac_primary_language character varying(2000),
    language_inkate_conducted character varying(2000),
    roomassignmentsafe smallint,
    roomassignmentsafeexp character varying(2000),
    anyinappcomments smallint,
    anyinappcommentsexp character varying(2000),
    istransorintersex smallint,
    tellsexualpreference smallint,
    tellsexualpreferenceexp character varying(2000),
    isanythingthere smallint,
    isanythingthereexp character varying(2000),
    lotofcomments smallint,
    lotofcommentsexp character varying(2000),
    haseversexuallyactive smallint,
    sexualactivity_type smallint,
    sexualactivity_consensual smallint,
    sexualactivity_consensual_exp character varying(2000),
    didperformsexualfavours smallint,
    didperformsexualfavoursexp character varying(2000),
    hadanytalk smallint,
    hadanytalkexp character varying(2000),
    gendernonconfirming smallint,
    gendernonconfirmingexp character varying(2000),
    anycriminalcharges smallint,
    anycriminalchargesexp character varying(2000),
    anymentaldisability smallint,
    disability_mental smallint,
    anymentaldisabilityexp character varying(2000),
    physicalsize smallint,
    otherspecificinfo smallint,
    otherspecificinfoexp character varying(2000),
    housingandother character varying(2000),
    clinicianshared smallint,
    cliniciansharedexp character varying(2000),
    childoryouth smallint,
    childoryouthexp character varying(2000),
    howtoreportthreats smallint,
    howtoreportthreatsexp character varying(2000),
    movedtoprivateroom smallint,
    movedtoprivateroomexp character varying(2000),
    movedtoroomarea smallint,
    movedtoroomareaexp character varying(2000),
    alternativebathroom smallint,
    alternativebathroomexp character varying(2000),
    educationalgroup smallint,
    educationalgroupexp character varying(2000),
    developedsafetyplan smallint,
    developedsafetyplanexp character varying(2000),
    increasedclinicalsessions smallint,
    increasedclinicalsessionsexp character varying(2000),
    mentalhealthservices smallint,
    mentalhealthservicesexp character varying(2000),
    closerstaffsupervision smallint,
    closerstaffsupervisionexp character varying(2000),
    staffedwithffs smallint,
    staffedwithffsexp character varying(2000),
    otherhousing smallint,
    otherhousingexp character varying(2000),
    date_interviewed timestamp without time zone,
    feel_safe_exp character varying(4000),
    roomlocation_talk_exp character varying(4000),
    staff_signature character varying(2000),
    signature_date timestamp without time zone,
    staff_name character varying(2000),
    staff_title character varying(2000),
    translator_signature character varying(2000),
    sign_date_of_translator character varying(2000),
    translator_name character varying(2000),
    language character varying(2000),
    isdeleted smallint DEFAULT 1,
    date_created timestamp without time zone,
    user_created character varying(112),
    uptime timestamp without time zone,
    upuser character varying(112),
    if_identify_as_transgender smallint,
    like_to_live_with smallint,
    date_of_mental_health_service timestamp without time zone,
    medical_service smallint,
    date_of_medical_service timestamp without time zone,
    exp_medical_service character varying(2000),
    haseversexualactivity_exp character varying(2000),
    transgender_or_intersex smallint,
    disability_physical smallint,
    disability_developmental smallint,
    other_attachments smallint,
    mentaldisability_suspectedexp character varying(2000),
    sexualactivity_decline_exp character varying(2000),
    nospecificaction smallint,
    nospecificaction_exp character varying(2000)
);


--
-- Name: uac_secure_review; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_secure_review (
    secure_review_id bigint NOT NULL,
    uac_program_id numeric(38,0) NOT NULL,
    is_under_review smallint,
    reason_for_review character varying(32000) DEFAULT 'NULL'::character varying,
    ffs_secure_review character varying(2000),
    date_secure_review timestamp without time zone,
    isdeleted smallint DEFAULT 0,
    date_created timestamp without time zone,
    user_created character varying(112),
    uptime timestamp without time zone,
    upuser character varying(112)
);


--
-- Name: uac_sir; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_sir (
    sir_id numeric(38,0) NOT NULL,
    uac_program_id numeric(38,0) NOT NULL,
    date_of_incident timestamp without time zone,
    date_reported timestamp without time zone,
    location_of_incident character varying(32000),
    abuse_perpetrator_id smallint,
    runaway smallint,
    runaway_risk smallint,
    absense_of_uac smallint,
    synopsis_of_incident character varying(32000),
    witnesses character varying(32000),
    staff_responses character varying(32000),
    resolution character varying(32000),
    recommendations character varying(32000),
    info_released_to_media character varying(32000),
    jurisdiction_name character varying(2000),
    jurisdiction_title character varying(2000),
    jurisdiction_phone character varying(22),
    contact_name character varying(2000),
    contact_title character varying(2000),
    contact_phone character varying(22),
    filer_name character varying(2000),
    filer_title character varying(2000),
    filer_phone character varying(22),
    supervisor_name character varying(2000),
    supervisor_title character varying(2000),
    supervisor_phone character varying(22),
    supervisor_note character varying(32000),
    date_created timestamp without time zone,
    user_created character varying(112),
    uptime timestamp without time zone,
    upuser character varying(112),
    sir_addendum_note character varying(32000),
    isdeleted smallint DEFAULT 0
);


--
-- Name: uac_sir_category; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_sir_category (
    category_id bigint NOT NULL,
    description character varying(250),
    parent_id bigint,
    description_order bigint,
    date_created timestamp without time zone,
    user_created character varying(250),
    uptime timestamp without time zone,
    upuser character varying(112),
    isdeleted smallint DEFAULT 0,
    ui_column_order bigint
);


--
-- Name: uac_sir_category_map; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_sir_category_map (
    category_map_id bigint NOT NULL,
    sir_id bigint,
    category_id bigint,
    other_explain character varying(4000),
    date_created timestamp without time zone,
    user_created character varying(250),
    uptime timestamp without time zone,
    upuser character varying(112),
    isdeleted smallint DEFAULT 0,
    addendum_id integer
);


--
-- Name: uac_sir_documents; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_sir_documents (
    doc_id bigint NOT NULL,
    uac_sir_id bigint,
    sir_doc_type character varying(250),
    file_name character varying(500),
    org_file_name character varying(500),
    file_type character varying(250),
    file_size bigint,
    isdeleted smallint DEFAULT 0,
    addendum_id integer,
    sa_followup_rpt_id bigint,
    date_created timestamp without time zone,
    user_created character varying(112),
    uptime timestamp without time zone,
    upuser character varying(112),
    sir_followup_report_id bigint
);


--
-- Name: uac_sir_event; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_sir_event (
    event_id numeric(38,0),
    date_of_event timestamp without time zone,
    synopsis_of_event character varying(16000),
    date_created timestamp without time zone,
    user_created character varying(250),
    uptime timestamp without time zone,
    upuser character varying(112),
    isdeleted smallint DEFAULT 0,
    time_of_event character varying(50),
    program_id smallint
);


--
-- Name: uac_sir_fields_history; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_sir_fields_history (
    sir_id bigint NOT NULL,
    date_completed timestamp without time zone,
    staff character varying(200),
    description_of_incident character varying(2000),
    staff_response_intervention character varying(2000),
    sa_action_for_indinvolved character varying(2000),
    sa_action_for_victim character varying(2000),
    sa_action_for_allegedperp character varying(2000),
    updated_recommendations character varying(2000),
    progress_of_sl_investigation character varying(2000),
    results_of_sl_investigation character varying(2000),
    progress_of_le_investigation character varying(2000),
    results_of_le_investigation character varying(2000),
    follow_up_resolution character varying(2000),
    progress_of_cps_investigation character varying(2000),
    results_of_cps_investigation character varying(2000),
    history_id numeric(32,0) NOT NULL
);


--
-- Name: uac_sir_followup_rpt; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_sir_followup_rpt (
    sir_followup_report_id numeric(38,0) NOT NULL,
    uac_program_id numeric(38,0),
    event_id numeric(38,0),
    sa_type_of_incident character varying(250),
    sa_type_of_allegation character varying(250),
    sa_type_of_allegation_specify character varying(250),
    incident_at_another_facility character(1),
    care_provider_name character varying(250),
    care_provider_city character varying(250),
    care_provider_state character varying(250),
    date_of_incident timestamp without time zone,
    date_reported_to_care_provider timestamp without time zone,
    date_reported_to_orr timestamp without time zone,
    location_of_incident character varying(250),
    school_area character varying(250),
    location_of_incident_specify character varying(500),
    description_of_incident character varying(4000),
    uac_or_anyone_injured character(1),
    uac_or_anyone_injured_specify character varying(500),
    staff_response_intervention character varying(500),
    sa_action_for_victim character varying(500),
    sa_action_for_allegedperp character varying(500),
    sa_action_for_indinvolved character varying(500),
    updated_recommendations character varying(500),
    cps_different_from_state_lic character(1),
    reported_to_cps character(1),
    date_reported_to_cps timestamp without time zone,
    cps_case_confirmation_number character varying(250),
    was_cps_incident_investigated character(1),
    date_notify_cps_inc_invest timestamp without time zone,
    cps_incident_explain character varying(500),
    progress_of_cps_investigation character varying(500),
    results_of_cps_investigation character varying(500),
    reported_to_state_licensing character(1),
    date_of_state_lic_report timestamp without time zone,
    state_case_confirmation_number character varying(250),
    was_state_inc_investigated character(1),
    date_notify_state_inci_invest timestamp without time zone,
    state_incident_explain character varying(500),
    progress_of_sl_investigation character varying(500),
    results_of_sl_investigation character varying(500),
    reported_to_law_enforcement character(1),
    date_report_to_law_enforce timestamp without time zone,
    le_officers_name character varying(250),
    le_officers_badge_number character varying(250),
    le_case_confirmation_number character varying(250),
    was_le_inc_investigated character(1),
    date_notify_le_inc_invest timestamp without time zone,
    le_incident_explain character varying(500),
    progress_of_le_investigation character varying(500),
    results_of_le_investigation character varying(500),
    reported_to_doj character(1),
    date_reported_to_doj timestamp without time zone,
    reported_to_eousa character(1),
    date_reported_to_eousa timestamp without time zone,
    reported_to_fbi character(1),
    date_reported_to_fbi timestamp without time zone,
    was_doj_inc_investigated character(1),
    progress_of_doj_investigation character varying(500),
    results_of_doj_investigation character varying(500),
    doj_report_notes character varying(500),
    was_outside_counselor_offered character(1),
    was_child_advocate_recommended character(1),
    any_exchange_of_bodily_fluids character(1),
    taken_for_forensic_exam character(1),
    svcs_followup_vic_explain character varying(500),
    could_v_be_at_pregnancy_risk character(1),
    access_to_pregnancy_test character(1),
    pregnancy_test_date timestamp without time zone,
    pregnancy_test_explain character varying(500),
    access_to_er_contraception character(1),
    emergency_contraception_date timestamp without time zone,
    er_contraception_explain character varying(500),
    access_to_lawful_pregancy_svcs character(1),
    lawful_pregancy_svcs_date timestamp without time zone,
    lawful_pregancy_svcs_explain character varying(500),
    perpetrator_removed_duties character(1),
    perp_removed_duties_date timestamp without time zone,
    staff_member_terminated character(1),
    staff_member_terminated_date timestamp without time zone,
    staff_member_reinstated character(1),
    staff_member_reinstated_date timestamp without time zone,
    perpetrator_removed_explain character varying(500),
    perpetrator_health_findings character varying(500),
    perpetrator_discharge_plan character varying(500),
    perpetrator_additional_info character varying(500),
    issues_prior_to_incident character varying(500),
    issues_with_resp_to_inc character varying(500),
    issues_post_incident character varying(500),
    advisory_information character varying(500),
    were_correct_actions_issued character(1),
    correct_actions_issued_exp character varying(500),
    complaint_with_correct_actions character(1),
    complaint_correct_actions_date timestamp without time zone,
    completed_incident_review character(1),
    incident_review_follow character varying(500),
    final_cps_status character(1),
    final_cps_findings character varying(250),
    final_cps_findings_exp character varying(250),
    final_cps_charges_filed character(1),
    final_cps_charges_fileddate timestamp without time zone,
    final_cps_charges_minor character(1),
    final_cps_minorname character varying(250),
    final_cps_minoranum character varying(250),
    final_cps_staff character(1),
    final_cps_staffname character varying(250),
    final_cps_stafftitle character varying(250),
    final_cps_specify character(1),
    final_cps_other character varying(250),
    final_lle_status character(1),
    final_lle_charges_filed character(1),
    final_lle_charges_fileddate timestamp without time zone,
    final_lle_charges_minor character(1),
    final_lle_minorname character varying(250),
    final_lle_minoranum character varying(250),
    final_lle_staff character(1),
    final_lle_staffname character varying(250),
    final_lle_stafftitle character varying(250),
    final_lle_specify character(1),
    final_lle_other character varying(250),
    final_sl_status character(1),
    final_sl_substance_alleg character(1),
    final_sl_findings character varying(250),
    final_sl_findings_exp character varying(250),
    final_sl_charges_filed character(1),
    final_sl_charges_fileddate timestamp without time zone,
    final_sl_charges_minor character(1),
    final_sl_minorname character varying(250),
    final_sl_minoranum character varying(250),
    final_sl_staff character(1),
    final_sl_staffname character varying(250),
    final_sl_stafftitle character varying(250),
    final_sl_specify character(1),
    final_sl_other character varying(250),
    final_sl_were_findings character(1),
    final_sl_were_findingsdate timestamp without time zone,
    final_sl_status_explain character varying(250),
    final_doj_status character(1),
    final_doj_charges_filed character(1),
    final_doj_charges_fileddate timestamp without time zone,
    final_doj_charges_minor character(1),
    final_doj_minorname character varying(250),
    final_doj_minoranum character varying(250),
    final_ldoj_staff character(1),
    final_doj_staffname character varying(250),
    final_doj_stafftitle character varying(250),
    final_doj_specify character(1),
    final_doj_other character varying(250),
    case_dispo_convicted character(1),
    case_dispo_convicted_date timestamp without time zone,
    case_dispo_convicted_court character varying(250),
    case_dispo_convicted_convic character varying(250),
    case_dispo_convicted_sentence character varying(250),
    case_dispo_convicted_explain character varying(250),
    case_dispo_notconvicted character(1),
    case_dispo_chargesdrop character(1),
    case_dispo_convicted_other character(1),
    case_dispo_convicted_specify character varying(250),
    case_close_date timestamp without time zone,
    case_close_date_notes character varying(250),
    assigned_ffs character varying(250),
    assigned_po character varying(250),
    assigned_psa character varying(250),
    assigned_cfs character varying(250),
    date_created timestamp without time zone,
    user_created character varying(250),
    uptime timestamp without time zone,
    upuser character varying(112),
    isdeleted smallint DEFAULT 0
);


--
-- Name: uac_sir_media_contacts; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_sir_media_contacts (
    media_contact_id numeric(38,0),
    sir_id numeric(38,0),
    contact_name character varying(2000),
    agency character varying(2000),
    phone character varying(22),
    date_contact timestamp without time zone
);


--
-- Name: uac_sir_new; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_sir_new (
    sir_id numeric(38,0),
    uac_program_id numeric(38,0),
    event_id numeric(38,0),
    sir_type_id bigint,
    abuse_neglect_type character varying(250),
    alleged_perpetrator character varying(250),
    past_abuse_other_exp character varying(250),
    past_abuse_dhs_cust_other_exp character varying(250),
    past_abuse_mbi_other_exp character varying(250),
    past_abuse_iile_other_exp character varying(250),
    past_abuse_ch_other_exp character varying(250),
    other_threats_to_uc_other_exp character varying(250),
    er_death_in_care_provider character varying(250),
    er_immediate_hospitalization character(1),
    er_major_disturbance_other_exp character varying(250),
    er_natural_disaster_other_exp character varying(250),
    er_other_exp character varying(250),
    incident_at_another_facility character(1),
    care_provider_name character varying(250),
    care_provider_city character varying(250),
    care_provider_state character varying(250),
    date_reported_to_care_provider timestamp without time zone,
    date_reported_to_orr timestamp without time zone,
    location_of_incident character varying(250),
    description_of_incident character varying(16000),
    staff_response_intervention character varying(2000),
    follow_up_resolution character varying(2000),
    updated_recommendations character varying(2000),
    reported_to_state_licensing character(1),
    date_of_state_lic_report timestamp without time zone,
    state_case_confirmation_number character varying(250),
    was_state_inc_investigated character(1),
    date_notify_state_inci_invest timestamp without time zone,
    state_incident_explain character varying(2000),
    school_area character varying(250),
    dhs_facility character varying(250),
    location_of_incident_specify character varying(2000),
    uac_or_anyone_injured character(1),
    uac_or_anyone_injured_specify character varying(2000),
    cps_different_from_state_lic character(1),
    reported_to_cps character(1),
    date_reported_to_cps timestamp without time zone,
    cps_case_confirmation_number character varying(250),
    was_cps_incident_investigated character(1),
    date_notify_cps_inc_invest timestamp without time zone,
    cps_incident_explain character varying(2000),
    progress_of_cps_investigation character varying(2000),
    results_of_cps_investigation character varying(2000),
    reported_to_law_enforcement character(1),
    date_report_to_law_enforce timestamp without time zone,
    le_officers_name character varying(250),
    le_officers_badge_number character varying(250),
    le_case_confirmation_number character varying(250),
    was_le_inc_investigated character(1),
    date_notify_le_inc_invest timestamp without time zone,
    le_incident_explain character varying(2000),
    progress_of_le_investigation character varying(2000),
    results_of_le_investigation character varying(2000),
    reported_to_doj character(1),
    date_reported_to_doj timestamp without time zone,
    doj_report_notes character varying(2000),
    sa_type_of_incident character varying(250),
    sa_type_of_allegation character varying(250),
    sa_how_uac_involved character varying(250),
    sa_were_other_uac_involved character(1),
    sa_were_staff_present_at_inc character(1),
    major_incidents_threaten character(1),
    physical_aggression_to_others character(1),
    verbal_aggression_to_others character(1),
    possesion_of_weapon character(1),
    self_injury_behaviour character(1),
    suicidal_ideation character(1),
    suicide_attempt character(1),
    use_of_drugs_in_orr_custody character(1),
    runaway character(1),
    runaway_value character(1),
    attempted_runaway_value character(1),
    incidents_involve_le character(1),
    le_investigate_response character(1),
    le_arrest character(1),
    le_interview character(1),
    le_search character(1),
    le_other character(1),
    le_other_specify character varying(250),
    safety_measures character(1),
    one_on_one_supervision character(1),
    use_of_restraints character(1),
    patdown_other_searches character(1),
    criminal_history character(1),
    criminal_hist_in_homecountry character(1),
    criminal_history_in_us character(1),
    ch_other character(1),
    ch_other_specify character varying(250),
    other_type character(1),
    contact_or_threat_to_uc_in_orr character(1),
    other_type_specify character varying(250),
    date_created timestamp without time zone,
    user_created character varying(250),
    uptime timestamp without time zone,
    upuser character varying(112),
    isdeleted smallint DEFAULT 0,
    addendum_id integer,
    sa_action_for_victim character varying(2000),
    sa_action_for_allegedperp character varying(2000),
    sa_action_for_indinvolved character varying(2000),
    progress_of_sl_investigation character varying(2000),
    results_of_sl_investigation character varying(2000),
    sa_type_of_allegation_specify character varying(250),
    abuse_neglect_type_other character varying(250),
    alleged_perpetrator_other character varying(250),
    is_sir_for_runaway bigint,
    sa_how_uac_involved_specify character varying(250),
    dhs_facility_other character varying(250),
    uac_sir_id bigint NOT NULL,
    other_threats_to_uc character(1),
    other_threats_to_uc_other character(1),
    er_death_in_cp_other character varying(250),
    pregnancy_termination_exp character varying(4000)
);


--
-- Name: uac_sir_notification_list; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_sir_notification_list (
    notification_list_id bigint NOT NULL,
    uac_sir_id bigint,
    notification_list_type character varying(250),
    notification_list_type_sub character varying(250),
    name character varying(250),
    agency_title character varying(250),
    date_notified timestamp without time zone,
    email character varying(250),
    phone character varying(250),
    method_of_notification character varying(250),
    display_order bigint,
    date_created timestamp without time zone,
    user_created character varying(250),
    uptime timestamp without time zone,
    upuser character varying(112),
    isdeleted smallint DEFAULT 0,
    addendum_id integer,
    sa_followup_rpt_id bigint,
    other_explain character varying(250)
);


--
-- Name: uac_sir_uacinvolved_list; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_sir_uacinvolved_list (
    uacinvolved_list_id bigint NOT NULL,
    uac_sir_id bigint,
    sir_type_id bigint,
    uac_name character varying(250),
    anumber character varying(250),
    uac_role character varying(250),
    uac_title character varying(250),
    date_created timestamp without time zone,
    user_created character varying(250),
    uptime timestamp without time zone,
    upuser character varying(112),
    isdeleted smallint DEFAULT 0
);


--
-- Name: uac_sir_ucinvolved_list; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_sir_ucinvolved_list (
    ucinvolved_list_id bigint,
    uac_sir_id bigint,
    ucinvolved_list_type character varying(250),
    uc_name character varying(250),
    anumber character varying(250),
    uc_role character varying(250),
    uc_title character varying(250),
    date_created timestamp without time zone,
    user_created character varying(250),
    uptime timestamp without time zone,
    upuser character varying(112),
    isdeleted smallint DEFAULT 0,
    addendum_id integer,
    sa_followup_rpt_id bigint,
    other_explain character varying(250)
);


--
-- Name: uac_sponsor_list; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_sponsor_list (
    uac_id bigint NOT NULL,
    sponsor_id bigint NOT NULL,
    current_sponsor smallint,
    sponsor_address character varying(2000),
    sponsor_city character varying(2000),
    sponsor_state character(2),
    sponsor_zipcode character varying(10),
    sponsor_home_phone character varying(22),
    sponsor_work_phone character varying(22),
    sponsor_fax character varying(22),
    sponsor_email character varying(112),
    sponsor_relationship_to_uac smallint,
    uac_relationship_to_sponsor smallint,
    comments character varying(32000),
    date_created timestamp without time zone,
    user_created character varying(112),
    uptime timestamp without time zone,
    upuser character varying(112)
);


--
-- Name: uac_sponsor_sponsored_uacs; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_sponsor_sponsored_uacs (
    sponsored_id bigint NOT NULL,
    uac_id bigint NOT NULL,
    sponsor_id bigint NOT NULL,
    uac_anumber character varying(10),
    relationship_id smallint,
    facilityid_sponsored_from smallint,
    date_created timestamp without time zone,
    user_created character varying(112)
);


--
-- Name: uac_substance_use_history; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_substance_use_history (
    substance_hist_id bigint NOT NULL,
    substance_id numeric(38,0) NOT NULL,
    uac_assessment_id numeric(38,0) NOT NULL,
    frequency_of_use character varying(2000),
    date_of_last_use timestamp without time zone,
    date_created timestamp without time zone,
    user_created character varying(112),
    yes_no smallint
);


--
-- Name: uac_transfer_request; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE uac_transfer_request (
    transfer_request_id bigint NOT NULL,
    uac_program_id bigint NOT NULL,
    height character varying(6),
    weight real,
    eye_color character varying(2000),
    identifying_marks character varying(32000),
    requested_program_type smallint,
    date_requested timestamp without time zone,
    requesting_party character varying(2000),
    requestor_name character varying(2000),
    requestor_title character varying(2000),
    requestor_phone character varying(22),
    concur_with_requesting_party smallint,
    concur_note character varying(32000),
    recommended_program_type smallint,
    date_recommended timestamp without time zone,
    case_coordinator_name character varying(2000),
    standard_placement smallint,
    convicted_as_adult smallint,
    adjudicated_delinquent smallint,
    criminal_charges smallint,
    chargeable smallint,
    provide_less_restrictive smallint,
    provide_more_restrictive smallint,
    minor_medical_health smallint,
    minor_mental_health smallint,
    violent_behavior smallint,
    disruptive_behavior smallint,
    minors_safety smallint,
    flight_risk smallint,
    emergency_influx smallint,
    minor_attorney_contacted smallint,
    attorney_of_record character varying(2000),
    attorney_phone character varying(22),
    pregnancy smallint,
    injury smallint,
    illness smallint,
    nondiagnosed_illness_wo_drug smallint,
    nondiagnosed_illness_with_drug smallint,
    diagnosed_illness_wo_drug smallint,
    diagnosed_illness_with_drug smallint,
    non_violent_conviction smallint,
    non_violent_charge smallint,
    charges_dropped smallint,
    medical_mental_health_summary character varying(32000),
    behavior_summary character varying(32000),
    family_reunification_status character varying(32000),
    immigration_court_status character varying(32000),
    case_worker character varying(2000),
    case_worker_comments character varying(32000),
    case_worker_suggests_trnsf smallint,
    tms_historical_trnsf_request smallint,
    tms_histcl_proposed_program smallint,
    tms_hstcl_proposed_progtype_id smallint,
    proposed_program_id smallint,
    date_cw_comments timestamp without time zone,
    orr_ducs_comments character varying(32000),
    orr_decision character varying(2000),
    date_of_decision timestamp without time zone,
    orr_decision_maker_name character varying(2000),
    packet_completed smallint,
    uac_belongings character varying(32000),
    request_type smallint,
    trnsf_sch_date timestamp without time zone,
    next_schdate_court_appearance timestamp without time zone,
    reason_to_notice_ice character varying(32000),
    orr_decided_relocate smallint,
    uac_has_special_needs smallint,
    specify_special_needs character varying(32000),
    other_orr smallint,
    other_orr_specify character varying(32000),
    departure_date timestamp without time zone,
    departure_time timestamp without time zone,
    trnsp_staff_name character varying(2000),
    trnsf_staff_title character varying(2000),
    trnsp_staff_comments character varying(32000),
    arrival_date timestamp without time zone,
    arrival_time timestamp without time zone,
    receiving_staff_name character varying(2000),
    receiving_staff_title character varying(2000),
    receiving_staff_comments character varying(32000),
    date_created timestamp without time zone,
    user_created character varying(112),
    uptime timestamp without time zone,
    upuser character varying(112),
    isdeleted smallint DEFAULT 0
);


--
-- Name: v_cr_medical_history; Type: VIEW; Schema: uacportal; Owner: -
--

CREATE VIEW v_cr_medical_history AS
 SELECT a.medical_hist_id,
    a.uac_case_review_id,
    a.mm_condition_id,
    a.condition_yn,
    a.clarification,
    a.date_created,
    a.user_created,
    b.uac_program_id
   FROM (uac_cr_medical_history a
     JOIN uac_case_review b ON (((a.uac_case_review_id)::numeric = b.uac_case_review_id)));


--
-- Name: v_cr_medication_history; Type: VIEW; Schema: uacportal; Owner: -
--

CREATE VIEW v_cr_medication_history AS
 SELECT a.medication_hist_id,
    a.uac_case_review_id,
    a.medication_name,
    a.dosage,
    a.timeframe,
    a.medical_condition,
    a.date_created,
    a.user_created,
    a.uptime,
    a.upuser,
    b.uac_program_id
   FROM (uac_cr_medication_history a
     JOIN uac_case_review b ON (((a.uac_case_review_id)::numeric = b.uac_case_review_id)));


--
-- Name: v_pc_underwriters; Type: VIEW; Schema: uacportal; Owner: -
--

CREATE VIEW v_pc_underwriters AS
 SELECT DISTINCT 'DIHORR'::text AS group_,
    ui.alien_no AS cardholderid,
    '01'::text AS personcode,
    upi.date_admitted AS effectivedate,
    upi.date_discharged AS termdate,
    ''::text AS filler1,
    ui.dob,
    ui.gender,
    ui.last_name AS lastname,
    ui.first_name AS firstname,
    "substring"((ui.middle_name)::text, 0, 1) AS mi,
    ''::text AS cardholderssn,
    ''::text AS coveragecode,
    ''::text AS locationcode,
    ''::text AS filler2,
    lp.program_name AS programname,
    lp.address AS address1,
    ''::text AS address2,
    lp.city,
    lp.state,
    lp.zipcode AS zip,
    ''::text AS homephone,
    ''::text AS workphone,
    ''::text AS dependentssn,
    ''::text AS medicarehicn,
    upi.current_status AS currentstatus
   FROM ((uac_program_info upi
     JOIN uac_info ui ON ((upi.uac_id = (ui.uac_id)::numeric)))
     LEFT JOIN list_programs lp ON ((upi.program_id = lp.program_id)))
  WHERE ((upper((ui.first_name)::text) !~~ '%FAKE%'::text) AND (upper((ui.last_name)::text) !~~ '%FAKE%'::text) AND (((upi.current_status)::text = ANY ((ARRAY['ADMITTED'::character varying, 'IN-TRANSFER'::character varying, 'ENROUTE'::character varying])::text[])) OR (((upi.current_status)::text = 'DISCHARGED'::text) AND (upi.date_discharged > to_date('10/01/2014'::text, 'mm/dd/yyyy'::text)))));


--
-- Name: v_sir_rpt; Type: VIEW; Schema: uacportal; Owner: -
--

CREATE VIEW v_sir_rpt AS
 SELECT a.sir_id,
    a.uac_program_id,
    a.date_of_incident,
    a.date_reported,
    a.abuse_perpetrator_id,
    a.runaway,
    a.runaway_risk,
    a.absense_of_uac,
    a.date_created,
    a.user_created,
    b.date_referred,
    b.bio_verified,
    b.date_admitted,
    b.current_status,
    b.date_discharged,
    c.uac_id,
    c.alien_no,
    c.first_name,
    c.last_name,
    c.aka,
    c.dob,
    c.cob,
    c.date_of_entry,
    c.manner_of_entry,
    c.date_of_apprehension,
    c.pregnancy,
    c.injury,
    c.illness,
    c.behavior_wo_medication,
    c.behavior_w_medication,
    c.note_bi_wo_medication,
    c.note_for_w_medication,
    c.uac_status,
    c.gender,
    d.program_name,
    e.program_type,
    f.abuse_type_id,
    g.medical_mental_issue_id,
    h.incident_type_id,
    i.behavior_id
   FROM ((((((((uac_sir a
     LEFT JOIN uac_program_info b ON ((a.uac_program_id = b.uac_program_id)))
     LEFT JOIN uac_info c ON ((b.uac_id = (c.uac_id)::numeric)))
     LEFT JOIN list_programs d ON ((b.program_id = d.program_id)))
     LEFT JOIN list_program_type e ON ((e.program_type_id = d.program_type_id)))
     LEFT JOIN sir_abuse_allegations f ON ((f.sir_id = a.sir_id)))
     LEFT JOIN sir_medical_mental_issues g ON ((g.sir_id = a.sir_id)))
     LEFT JOIN sir_other_incident_types h ON ((h.sir_id = a.sir_id)))
     LEFT JOIN sir_uac_behavior i ON ((i.sir_id = a.sir_id)))
  WHERE ((a.isdeleted = 0) AND (d.isactive = 1));


--
-- Name: v_sir_rpt_synop; Type: VIEW; Schema: uacportal; Owner: -
--

CREATE VIEW v_sir_rpt_synop AS
 SELECT a.sir_id,
    a.uac_program_id,
    a.date_of_incident,
    to_char(a.date_reported, 'MM/DD/YYY'::text) AS date_reported,
    a.abuse_perpetrator_id,
    a.runaway,
    a.runaway_risk,
    a.absense_of_uac,
    a.synopsis_of_incident,
    a.sir_addendum_note,
    to_char(a.date_created, 'MM/DD/YYY'::text) AS date_created,
    a.user_created,
    to_char(b.date_referred, 'MM/DD/YYY'::text) AS date_referred,
    b.bio_verified,
    to_char(b.date_admitted, 'MM/DD/YYY'::text) AS date_admitted,
    b.current_status,
    to_char(b.date_discharged, 'MM/DD/YYY'::text) AS date_discharged,
    c.uac_id,
    c.alien_no,
    c.first_name,
    c.last_name,
    c.aka,
    to_char(c.dob, 'MM/DD/YYY'::text) AS dob,
    c.cob,
    to_char(c.date_of_entry, 'MM/DD/YYY'::text) AS date_of_entry,
    c.manner_of_entry,
    to_char(c.date_of_apprehension, 'MM/DD/YYY'::text) AS date_of_apprehension,
    c.pregnancy,
    c.injury,
    c.illness,
    c.behavior_wo_medication,
    c.behavior_w_medication,
    c.note_bi_wo_medication,
    c.note_for_w_medication,
    c.uac_status,
    c.gender,
    d.program_name,
    d.program_id,
    e.program_type,
    f.abuse_type_id,
    g.abuse_type,
    h.medical_mental_issue_id,
    i.medical_mental_issue,
    j.incident_type_id,
    k.incident_type,
    l.behavior_id,
    m.behavior
   FROM ((((((((((((uac_sir a
     LEFT JOIN uac_program_info b ON ((a.uac_program_id = b.uac_program_id)))
     LEFT JOIN uac_info c ON ((b.uac_id = (c.uac_id)::numeric)))
     LEFT JOIN list_programs d ON ((b.program_id = d.program_id)))
     LEFT JOIN list_program_type e ON ((e.program_type_id = d.program_type_id)))
     LEFT JOIN sir_abuse_allegations f ON ((f.sir_id = a.sir_id)))
     LEFT JOIN list_abuse_allegations g ON ((g.abuse_type_id = f.abuse_type_id)))
     LEFT JOIN sir_medical_mental_issues h ON ((h.sir_id = a.sir_id)))
     LEFT JOIN list_sir_mm_issues i ON ((i.medical_mental_issue_id = h.medical_mental_issue_id)))
     LEFT JOIN sir_other_incident_types j ON ((j.sir_id = a.sir_id)))
     LEFT JOIN list_other_incident_types k ON ((k.incident_type_id = j.incident_type_id)))
     LEFT JOIN sir_uac_behavior l ON ((l.sir_id = a.sir_id)))
     LEFT JOIN list_uac_behavior m ON ((m.behavior_id = l.behavior_id)))
  WHERE ((a.isdeleted = 0) AND (d.isactive = 1));


--
-- Name: v_sponsor_sponsored_uacs; Type: VIEW; Schema: uacportal; Owner: -
--

CREATE VIEW v_sponsor_sponsored_uacs AS
 SELECT ss.sponsored_id,
    ss.sponsor_id,
    ss.uac_id,
    ss.uac_anumber,
    ss.facilityid_sponsored_from,
    concat(ui.first_name, ui.last_name) AS uac_name,
    lr.relationship
   FROM ((uac_sponsor_sponsored_uacs ss
     JOIN uac_info ui ON ((ss.uac_id = ui.uac_id)))
     LEFT JOIN list_relationship lr ON ((lr.relationship_id = ss.relationship_id)));


--
-- Name: v_uac_enrollment_rpt; Type: VIEW; Schema: uacportal; Owner: -
--

CREATE VIEW v_uac_enrollment_rpt AS
 SELECT a.uac_id,
    a.alien_no,
    a.first_name,
    a.last_name,
    a.aka,
    a.dob,
    a.cob,
    a.date_of_entry,
    a.manner_of_entry,
    a.city_of_entry,
    a.specify_city_of_entry,
    a.state_of_entry,
    a.date_of_apprehension,
    a.referring_office,
    a.notification_city,
    a.specify_not_city,
    a.notification_state,
    a.date_orr_notified,
    a.time_orr_notified,
    a.date_orr_approved,
    a.time_orr_approved,
    a.pregnancy,
    a.injury,
    a.illness,
    a.behavior_wo_medication,
    a.behavior_w_medication,
    a.note_bi_wo_medication,
    a.note_for_w_medication,
    a.immigration_status,
    a.referring_agency,
    a.orr_comments,
    a.uac_status,
    a.gender,
    a.uac_fast_status,
    b.uac_program_id,
    b.program_id,
    b.date_referred,
    b.bio_verified,
    b.date_admitted,
    b.current_status,
    b.date_discharged,
    d.first_name AS sponsor_first_name,
    d.last_name AS sponsor_last_name,
    d.gender AS sponsor_gender,
    c.sponsor_address,
    c.sponsor_city,
    c.sponsor_state,
    c.sponsor_zipcode,
    d.home_phone AS sponsor_phone,
    e.relationship AS uac_relationship_to_sponsor
   FROM ((((uac_info a
     LEFT JOIN uac_program_info b ON (((a.uac_id)::numeric = b.uac_id)))
     LEFT JOIN uac_sponsor_list c ON ((a.uac_id = c.uac_id)))
     LEFT JOIN sponsor_info d ON ((c.sponsor_id = d.sponsor_id)))
     LEFT JOIN list_relationship e ON ((c.uac_relationship_to_sponsor = e.relationship_id)));


--
-- Name: v_uac_prog_info; Type: VIEW; Schema: uacportal; Owner: -
--

CREATE VIEW v_uac_prog_info AS
 SELECT DISTINCT upi.uac_program_id,
    upi.program_id,
    upi.date_admitted,
    ui.alien_no,
    ui.first_name,
    ui.last_name,
    ui.dob,
    ui.cob,
    uf.fast_status,
    ui.date_of_entry,
    upi.current_status AS uac_status,
    d.uptime AS uac_assess_date,
        CASE
            WHEN (ui.uac_fast_status = 'F'::bpchar) THEN 'Fast'::text
            ELSE ''::text
        END AS fast,
        CASE
            WHEN (ui.uac_fast_status = 'N'::bpchar) THEN 'Non-Fast'::text
            ELSE ''::text
        END AS nonfast
   FROM (((uac_program_info upi
     JOIN uac_info ui ON ((upi.uac_id = (ui.uac_id)::numeric)))
     LEFT JOIN uac_fast uf ON ((ui.uac_id = uf.uac_id)))
     LEFT JOIN ( SELECT uac_assessment.uac_program_id,
            max(uac_assessment.uptime) AS uptime
           FROM uac_assessment
          GROUP BY uac_assessment.uac_program_id) d ON ((upi.uac_program_id = d.uac_program_id)));


--
-- Name: v_uac_sponsor_household; Type: VIEW; Schema: uacportal; Owner: -
--

CREATE VIEW v_uac_sponsor_household AS
 SELECT a.occupant_id,
    a.sponsor_id,
    a.uac_id,
    a.first_name AS hhfirst_name,
    a.last_name AS hhlast_name,
    b.first_name AS sfirst_name,
    b.last_name AS slast_name,
    c.first_name AS ufirst_name,
    c.last_name AS ulast_name,
    c.uac_status,
    e.uac_program_id,
    g.sponsor_category,
    b.address,
    b.city,
    b.state,
    g.relationship AS uacrelationship,
    h.relationship AS hhrelationship
   FROM ((((((sponsor_household_occupants a
     JOIN sponsor_info b ON ((a.sponsor_id = b.sponsor_id)))
     JOIN uac_info c ON ((c.uac_id = a.uac_id)))
     LEFT JOIN uac_program_info e ON (((c.uac_id)::numeric = e.uac_id)))
     LEFT JOIN uac_sponsor_list f ON (((a.uac_id = f.uac_id) AND (a.sponsor_id = f.sponsor_id))))
     LEFT JOIN list_relationship g ON ((f.sponsor_relationship_to_uac = g.relationship_id)))
     LEFT JOIN list_relationship h ON ((a.relationship_to_sponsor = h.relationship_id)));


--
-- Name: v_uac_sponsor_info; Type: VIEW; Schema: uacportal; Owner: -
--

CREATE VIEW v_uac_sponsor_info AS
 SELECT a.uac_id,
    a.current_sponsor,
    b.sponsor_id,
    b.first_name,
    b.last_name,
    b.ssn,
    b.alien_no,
    a.sponsor_address AS address,
    a.sponsor_city AS city,
    a.sponsor_state AS state,
    a.sponsor_zipcode AS zip_code,
    b.dob,
    trunc(((months_between(('now'::text)::timestamp without time zone, b.dob) / 12))::double precision) AS age,
    b.cob,
    b.cor,
    b.marriage_status,
    a.sponsor_home_phone AS home_phone,
    a.sponsor_work_phone AS work_phone,
    a.sponsor_fax AS fax,
    a.sponsor_email AS email,
    b.gender,
    b.legal_status_id,
    a.sponsor_relationship_to_uac,
    b.household_has_disease,
    b.household_has_criminal_hist,
    COALESCE(a.comments, b.notes) AS notes,
    b.sponsorthip_status,
    b.p_counter,
    b.a_counter,
    b.date_created,
    b.user_created,
    b.uptime,
    b.upuser,
    d.legal_status,
    e.relationship,
    b.flag,
    b.flag_note,
    b.flag_address,
    b.flag_address_note,
    e.sponsor_category
   FROM (((uac_sponsor_list a
     JOIN sponsor_info b ON ((a.sponsor_id = b.sponsor_id)))
     LEFT JOIN list_legal_status d ON ((b.legal_status_id = d.legal_status_id)))
     LEFT JOIN list_relationship e ON ((a.sponsor_relationship_to_uac = e.relationship_id)));


--
-- Name: v_va_transfer; Type: VIEW; Schema: uacportal; Owner: -
--

CREATE VIEW v_va_transfer AS
 SELECT DISTINCT lp.program_name AS location,
    ui.first_name AS firstname,
    ui.last_name AS lastname,
    ui.alien_no AS aliennumber,
    ui.dob,
    ui.gender,
    ui.cob AS origin,
    upi.date_admitted AS startdate,
    upi.date_discharged AS enddate,
    'No'::text AS verified,
    'Transfer'::text AS disposition
   FROM ((uac_program_info upi
     JOIN uac_info ui ON ((upi.uac_id = (ui.uac_id)::numeric)))
     LEFT JOIN list_programs lp ON ((upi.program_id = lp.program_id)))
  WHERE ((upper((upi.current_status)::text) = 'ADMITTED'::text) AND (upper((ui.first_name)::text) !~~ '%FAKE%'::text) AND (upper((ui.last_name)::text) !~~ '%FAKE%'::text));


--
-- Name: ventry_states; Type: VIEW; Schema: uacportal; Owner: -
--

CREATE VIEW ventry_states AS
 SELECT list_entry_locations.state AS statename,
    list_states.state
   FROM (list_entry_locations
     JOIN list_states ON ((upper((list_entry_locations.state)::text) = upper((list_states.statename)::text))));


--
-- Name: vsponsor_household_occupants; Type: VIEW; Schema: uacportal; Owner: -
--

CREATE VIEW vsponsor_household_occupants AS
 SELECT a.occupant_id,
    a.sponsor_id,
    a.uac_id,
    a.first_name,
    a.last_name,
    a.gender,
    a.age,
    a.uptime,
    a.dob,
        CASE
            WHEN (a.dependent_of_sponsor = 1) THEN 'Yes'::text
            WHEN (a.dependent_of_sponsor = 0) THEN 'No'::text
            WHEN (a.dependent_of_sponsor = 2) THEN 'Partial'::text
            ELSE NULL::text
        END AS dependency,
    ( SELECT list_relationship.relationship
           FROM list_relationship
          WHERE (list_relationship.relationship_id = a.relationship_to_sponsor)) AS relationshiptosponsor,
    ( SELECT list_relationship.relationship
           FROM list_relationship
          WHERE (list_relationship.relationship_id = a.relationship_to_minor)) AS relationshiptouac
   FROM sponsor_household_occupants a;


--
-- Name: xmljob_activity_logs; Type: TABLE; Schema: uacportal; Owner: -
--

CREATE TABLE xmljob_activity_logs (
    activity_id numeric(38,0),
    new_filename character varying(512),
    status character varying(112) DEFAULT 'NULL'::character varying,
    uac_id numeric(38,0),
    transaction_id character varying(512),
    datetime_started timestamp without time zone,
    datetime_completed timestamp without time zone,
    process_info character varying(32000)
);


SET search_path = uac_health, pg_catalog;



ALTER TABLE ONLY health_abnormal_cxr
    ADD CONSTRAINT health_abnormal_cxr_pkey PRIMARY KEY (abnormal_cxr_id);


--
-- Name: health_assessment_pkey; Type: CONSTRAINT; Schema: uac_health; Owner: -
--

ALTER TABLE ONLY health_assessment
    ADD CONSTRAINT health_assessment_pkey PRIMARY KEY (health_assessment_id);


--
-- Name: health_contact_investigation_pkey; Type: CONSTRAINT; Schema: uac_health; Owner: -
--

ALTER TABLE ONLY health_contact_investigation
    ADD CONSTRAINT health_contact_investigation_pkey PRIMARY KEY (contact_investigation_id);


--
-- Name: health_files_uploaded_pkey; Type: CONSTRAINT; Schema: uac_health; Owner: -
--

ALTER TABLE ONLY health_files_uploaded
    ADD CONSTRAINT health_files_uploaded_pkey PRIMARY KEY (doc_id);


--
-- Name: health_general_info_pkey; Type: CONSTRAINT; Schema: uac_health; Owner: -
--

ALTER TABLE ONLY health_general_info
    ADD CONSTRAINT health_general_info_pkey PRIMARY KEY (general_info_id);


--
-- Name: health_hst_physical_assessment_pkey; Type: CONSTRAINT; Schema: uac_health; Owner: -
--

ALTER TABLE ONLY health_hst_physical_assessment
    ADD CONSTRAINT health_hst_physical_assessment_pkey PRIMARY KEY (hst_physical_assessment_id);


--
-- Name: health_illness_of_phc_pkey; Type: CONSTRAINT; Schema: uac_health; Owner: -
--

ALTER TABLE ONLY health_illness_of_phc
    ADD CONSTRAINT health_illness_of_phc_pkey PRIMARY KEY (phc_id);


--
-- Name: health_lab_test_pkey; Type: CONSTRAINT; Schema: uac_health; Owner: -
--

ALTER TABLE ONLY health_lab_test
    ADD CONSTRAINT health_lab_test_pkey PRIMARY KEY (health_lab_test_id);


--
-- Name: health_medical_case_wrapup_pkey; Type: CONSTRAINT; Schema: uac_health; Owner: -
--

ALTER TABLE ONLY health_medical_case_wrapup
    ADD CONSTRAINT health_medical_case_wrapup_pkey PRIMARY KEY (case_wrapup_id);


--
-- Name: health_prid_labtesting_pkey; Type: CONSTRAINT; Schema: uac_health; Owner: -
--

ALTER TABLE ONLY health_prid_labtesting
    ADD CONSTRAINT health_prid_labtesting_pkey PRIMARY KEY (prid_labtesting_id);


--
-- Name: health_psycosociall_risk_pkey; Type: CONSTRAINT; Schema: uac_health; Owner: -
--

ALTER TABLE ONLY health_psycosociall_risk
    ADD CONSTRAINT health_psycosociall_risk_pkey PRIMARY KEY (health_psycosocial_risk_id);


--
-- Name: health_review_symptoms_pkey; Type: CONSTRAINT; Schema: uac_health; Owner: -
--

ALTER TABLE ONLY health_review_symptoms
    ADD CONSTRAINT health_review_symptoms_pkey PRIMARY KEY (review_symptoms_id);


--
-- Name: health_sa_labtesting_pkey; Type: CONSTRAINT; Schema: uac_health; Owner: -
--

ALTER TABLE ONLY health_sa_labtesting
    ADD CONSTRAINT health_sa_labtesting_pkey PRIMARY KEY (sa_labtesting_id);


--
-- Name: health_tb_screening_pkey; Type: CONSTRAINT; Schema: uac_health; Owner: -
--

ALTER TABLE ONLY health_tb_screening
    ADD CONSTRAINT health_tb_screening_pkey PRIMARY KEY (health_tb_screening_id);


--
-- Name: list_health_file_type_pkey; Type: CONSTRAINT; Schema: uac_health; Owner: -
--

ALTER TABLE ONLY list_health_file_type
    ADD CONSTRAINT list_health_file_type_pkey PRIMARY KEY (health_file_type_id);


--
-- Name: list_health_immunization_pkey; Type: CONSTRAINT; Schema: uac_health; Owner: -
--

ALTER TABLE ONLY list_health_immunization
    ADD CONSTRAINT list_health_immunization_pkey PRIMARY KEY (immunization_id);


--
-- Name: list_location_child_got_care_pkey; Type: CONSTRAINT; Schema: uac_health; Owner: -
--

ALTER TABLE ONLY list_location_child_got_care
    ADD CONSTRAINT list_location_child_got_care_pkey PRIMARY KEY (location_id);


--
-- Name: list_psycosocial_risk_pkey; Type: CONSTRAINT; Schema: uac_health; Owner: -
--

ALTER TABLE ONLY list_psycosocial_risk
    ADD CONSTRAINT list_psycosocial_risk_pkey PRIMARY KEY (psycosocial_risk_id);


--
-- Name: list_source_pkey; Type: CONSTRAINT; Schema: uac_health; Owner: -
--

ALTER TABLE ONLY list_source
    ADD CONSTRAINT list_source_pkey PRIMARY KEY (source_id);


--
-- Name: list_specimen_type_pkey; Type: CONSTRAINT; Schema: uac_health; Owner: -
--

ALTER TABLE ONLY list_specimen_type
    ADD CONSTRAINT list_specimen_type_pkey PRIMARY KEY (specimen_type_id);


--
-- Name: list_suggestive_active_tb_pkey; Type: CONSTRAINT; Schema: uac_health; Owner: -
--

ALTER TABLE ONLY list_suggestive_active_tb
    ADD CONSTRAINT list_suggestive_active_tb_pkey PRIMARY KEY (stb_id);


--
-- Name: list_symptoms_exams_pkey; Type: CONSTRAINT; Schema: uac_health; Owner: -
--

ALTER TABLE ONLY list_symptoms_exams
    ADD CONSTRAINT list_symptoms_exams_pkey PRIMARY KEY (symptom_id);


--
-- Name: list_tb_screening_location_pkey; Type: CONSTRAINT; Schema: uac_health; Owner: -
--

ALTER TABLE ONLY list_tb_screening_location
    ADD CONSTRAINT list_tb_screening_location_pkey PRIMARY KEY (location_id);


--
-- Name: list_tblt_result_pkey; Type: CONSTRAINT; Schema: uac_health; Owner: -
--

ALTER TABLE ONLY list_tblt_result
    ADD CONSTRAINT list_tblt_result_pkey PRIMARY KEY (result_id);


--
-- Name: list_test_result_pkey; Type: CONSTRAINT; Schema: uac_health; Owner: -
--

ALTER TABLE ONLY list_test_result
    ADD CONSTRAINT list_test_result_pkey PRIMARY KEY (result_id);


--
-- Name: list_test_type_pkey; Type: CONSTRAINT; Schema: uac_health; Owner: -
--

ALTER TABLE ONLY list_test_type
    ADD CONSTRAINT list_test_type_pkey PRIMARY KEY (test_id);


--
-- Name: list_wd_category_pkey; Type: CONSTRAINT; Schema: uac_health; Owner: -
--

ALTER TABLE ONLY list_wd_category
    ADD CONSTRAINT list_wd_category_pkey PRIMARY KEY (wd_category_id);


--
-- Name: list_working_diagnosis_pkey; Type: CONSTRAINT; Schema: uac_health; Owner: -
--

ALTER TABLE ONLY list_working_diagnosis
    ADD CONSTRAINT list_working_diagnosis_pkey PRIMARY KEY (working_diagnosis_id);


--
-- Name: uac_abnormal_cxr_pkey; Type: CONSTRAINT; Schema: uac_health; Owner: -
--

ALTER TABLE ONLY uac_abnormal_cxr
    ADD CONSTRAINT uac_abnormal_cxr_pkey PRIMARY KEY (uac_abnormal_cxr_id);


--
-- Name: uac_health_cxr_pkey; Type: CONSTRAINT; Schema: uac_health; Owner: -
--

ALTER TABLE ONLY uac_health_cxr
    ADD CONSTRAINT uac_health_cxr_pkey PRIMARY KEY (health_cxr_id);


--
-- Name: uac_health_igra_pkey; Type: CONSTRAINT; Schema: uac_health; Owner: -
--

ALTER TABLE ONLY uac_health_igra
    ADD CONSTRAINT uac_health_igra_pkey PRIMARY KEY (health_igra_id);


--
-- Name: uac_health_immunization_pkey; Type: CONSTRAINT; Schema: uac_health; Owner: -
--

ALTER TABLE ONLY uac_health_immunization
    ADD CONSTRAINT uac_health_immunization_pkey PRIMARY KEY (assessment_immunization_id);


--
-- Name: uac_health_medication_pkey; Type: CONSTRAINT; Schema: uac_health; Owner: -
--

ALTER TABLE ONLY uac_health_medication
    ADD CONSTRAINT uac_health_medication_pkey PRIMARY KEY (assessment_medication_id);


--
-- Name: uac_health_tblabtesting_pkey; Type: CONSTRAINT; Schema: uac_health; Owner: -
--

ALTER TABLE ONLY uac_health_tblabtesting
    ADD CONSTRAINT uac_health_tblabtesting_pkey PRIMARY KEY (health_tbt_id);


--
-- Name: uac_health_tst_pkey; Type: CONSTRAINT; Schema: uac_health; Owner: -
--

ALTER TABLE ONLY uac_health_tst
    ADD CONSTRAINT uac_health_tst_pkey PRIMARY KEY (health_tst_id);


--
-- Name: uac_phc_cluster_info_pkey; Type: CONSTRAINT; Schema: uac_health; Owner: -
--

ALTER TABLE ONLY uac_phc_cluster_info
    ADD CONSTRAINT uac_phc_cluster_info_pkey PRIMARY KEY (cluster_id);


--
-- Name: uac_phc_exposures_pkey; Type: CONSTRAINT; Schema: uac_health; Owner: -
--

ALTER TABLE ONLY uac_phc_exposures
    ADD CONSTRAINT uac_phc_exposures_pkey PRIMARY KEY (phc_exposure_id);


--
-- Name: uac_psycosocial_risk_pkey; Type: CONSTRAINT; Schema: uac_health; Owner: -
--

ALTER TABLE ONLY uac_psycosocial_risk
    ADD CONSTRAINT uac_psycosocial_risk_pkey PRIMARY KEY (uac_psycosocial_risk_id);


--
-- Name: uac_sa_labtesting_pkey; Type: CONSTRAINT; Schema: uac_health; Owner: -
--

ALTER TABLE ONLY uac_sa_labtesting
    ADD CONSTRAINT uac_sa_labtesting_pkey PRIMARY KEY (uac_sa_lab_testing_id);


SET search_path = uacportal, pg_catalog;

--
-- Name: facility_info_arc_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY facility_info_arc
    ADD CONSTRAINT facility_info_arc_pkey PRIMARY KEY (arc_time, facility_id);


--
-- Name: facility_info_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY facility_info
    ADD CONSTRAINT facility_info_pkey PRIMARY KEY (facility_id);


--
-- Name: list_abuse_allegations_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY list_abuse_allegations
    ADD CONSTRAINT list_abuse_allegations_pkey PRIMARY KEY (abuse_type_id);


--
-- Name: list_abuse_perpetrator_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY list_abuse_perpetrator
    ADD CONSTRAINT list_abuse_perpetrator_pkey PRIMARY KEY (perpetrator_type_id);


--
-- Name: list_bg_check_result_type_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY list_bg_check_result_type
    ADD CONSTRAINT list_bg_check_result_type_pkey PRIMARY KEY (result_id);


--
-- Name: list_comm_diseases_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY list_comm_diseases
    ADD CONSTRAINT list_comm_diseases_pkey PRIMARY KEY (disease_id);


--
-- Name: list_countries_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY list_countries
    ADD CONSTRAINT list_countries_pkey PRIMARY KEY (country_id);


--
-- Name: list_doc_diagnosis_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY list_doc_diagnosis
    ADD CONSTRAINT list_doc_diagnosis_pkey PRIMARY KEY (diagnosis_id);


--
-- Name: list_doc_visit_reason_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY list_doc_visit_reason
    ADD CONSTRAINT list_doc_visit_reason_pkey PRIMARY KEY (visit_reason_id);


--
-- Name: list_doc_visit_type_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY list_doc_visit_type
    ADD CONSTRAINT list_doc_visit_type_pkey PRIMARY KEY (visit_type_id);


--
-- Name: list_effort_type_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY list_effort_type
    ADD CONSTRAINT list_effort_type_pkey PRIMARY KEY (effort_type_id);


--
-- Name: list_emotional_concerns_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY list_emotional_concerns
    ADD CONSTRAINT list_emotional_concerns_pkey PRIMARY KEY (emotional_concern_id);


--
-- Name: list_entry_locations_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY list_entry_locations
    ADD CONSTRAINT list_entry_locations_pkey PRIMARY KEY (location_id);


--
-- Name: list_facility_beds_in_reserve_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY list_facility_beds_in_reserve
    ADD CONSTRAINT list_facility_beds_in_reserve_pkey PRIMARY KEY (facility_id);


--
-- Name: list_html_color_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY list_html_color
    ADD CONSTRAINT list_html_color_pkey PRIMARY KEY (color_name);


--
-- Name: list_ice_cbp_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY list_ice_cbp
    ADD CONSTRAINT list_ice_cbp_pkey PRIMARY KEY (ice_cbp_id);


--
-- Name: list_immgrtn_status_at_referal_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY list_immgrtn_status_at_referal
    ADD CONSTRAINT list_immgrtn_status_at_referal_pkey PRIMARY KEY (status_id);


--
-- Name: list_immunizations_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY list_immunizations
    ADD CONSTRAINT list_immunizations_pkey PRIMARY KEY (immune_id);


--
-- Name: list_legal_status_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY list_legal_status
    ADD CONSTRAINT list_legal_status_pkey PRIMARY KEY (legal_status_id);


--
-- Name: list_manner_of_entry_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY list_manner_of_entry
    ADD CONSTRAINT list_manner_of_entry_pkey PRIMARY KEY (me_id);


--
-- Name: list_medical_concern_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY list_medical_concern
    ADD CONSTRAINT list_medical_concern_pkey PRIMARY KEY (concern_id);


--
-- Name: list_medical_mental_condition_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY list_medical_mental_condition
    ADD CONSTRAINT list_medical_mental_condition_pkey PRIMARY KEY (mm_condition_id);


--
-- Name: list_medical_screening_type_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY list_medical_screening_type
    ADD CONSTRAINT list_medical_screening_type_pkey PRIMARY KEY (screening_type_id);


--
-- Name: list_mental_issues_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY list_mental_issues
    ADD CONSTRAINT list_mental_issues_pkey PRIMARY KEY (mental_issue_id);


--
-- Name: list_other_escape_risk_factors_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY list_other_escape_risk_factors
    ADD CONSTRAINT list_other_escape_risk_factors_pkey PRIMARY KEY (factor_id);


--
-- Name: list_other_incident_types_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY list_other_incident_types
    ADD CONSTRAINT list_other_incident_types_pkey PRIMARY KEY (incident_type_id);


--
-- Name: list_pef_gov_custody_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY list_pef_gov_custody
    ADD CONSTRAINT list_pef_gov_custody_pkey PRIMARY KEY (factor_id);


--
-- Name: list_program_type_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY list_program_type
    ADD CONSTRAINT list_program_type_pkey PRIMARY KEY (program_type_id);


--
-- Name: list_programs_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY list_programs
    ADD CONSTRAINT list_programs_pkey PRIMARY KEY (program_id);


--
-- Name: list_reason_typeoffacility_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY list_reason_typeoffacility
    ADD CONSTRAINT list_reason_typeoffacility_pkey PRIMARY KEY (type_id);


--
-- Name: list_referring_agency_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY list_referring_agency
    ADD CONSTRAINT list_referring_agency_pkey PRIMARY KEY (agency_id);


--
-- Name: list_referring_field_offices_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY list_referring_field_offices
    ADD CONSTRAINT list_referring_field_offices_pkey PRIMARY KEY (office_id);


--
-- Name: list_relationship_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY list_relationship
    ADD CONSTRAINT list_relationship_pkey PRIMARY KEY (relationship_id);


--
-- Name: list_release_deny_reasons_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY list_release_deny_reasons
    ADD CONSTRAINT list_release_deny_reasons_pkey PRIMARY KEY (reason_id);


--
-- Name: list_sir_mm_issues_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY list_sir_mm_issues
    ADD CONSTRAINT list_sir_mm_issues_pkey PRIMARY KEY (medical_mental_issue_id);


--
-- Name: list_sir_notified_entities_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY list_sir_notified_entities
    ADD CONSTRAINT list_sir_notified_entities_pkey PRIMARY KEY (contact_id);


--
-- Name: list_sites_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY list_sites
    ADD CONSTRAINT list_sites_pkey PRIMARY KEY (site_id);


--
-- Name: list_sites_site_name_key; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY list_sites
    ADD CONSTRAINT list_sites_site_name_key UNIQUE (site_name);


--
-- Name: list_smsgateway_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY list_smsgateway
    ADD CONSTRAINT list_smsgateway_pkey PRIMARY KEY (smsgateway_id);


--
-- Name: list_states_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY list_states
    ADD CONSTRAINT list_states_pkey PRIMARY KEY (state);


--
-- Name: list_substances_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY list_substances
    ADD CONSTRAINT list_substances_pkey PRIMARY KEY (substance_id);


--
-- Name: list_uac_behavior_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY list_uac_behavior
    ADD CONSTRAINT list_uac_behavior_pkey PRIMARY KEY (behavior_id);


--
-- Name: reason_for_typeoffacility_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY reason_for_typeoffacility
    ADD CONSTRAINT reason_for_typeoffacility_pkey PRIMARY KEY (uac_program_id, reason_type_id);


--
-- Name: sir_abuse_allegations_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY sir_abuse_allegations
    ADD CONSTRAINT sir_abuse_allegations_pkey PRIMARY KEY (sir_id, abuse_type_id);


--
-- Name: sir_medical_mental_issues_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY sir_medical_mental_issues
    ADD CONSTRAINT sir_medical_mental_issues_pkey PRIMARY KEY (sir_id, medical_mental_issue_id);


--
-- Name: sir_other_incident_types_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY sir_other_incident_types
    ADD CONSTRAINT sir_other_incident_types_pkey PRIMARY KEY (sir_id, incident_type_id);


--
-- Name: sir_uac_behavior_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY sir_uac_behavior
    ADD CONSTRAINT sir_uac_behavior_pkey PRIMARY KEY (sir_id, behavior_id);


--
-- Name: sponsor_affidavits_support_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY sponsor_affidavits_support
    ADD CONSTRAINT sponsor_affidavits_support_pkey PRIMARY KEY (affidavit_id);


--
-- Name: sponsor_background_check_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY sponsor_background_check
    ADD CONSTRAINT sponsor_background_check_pkey PRIMARY KEY (background_check_id);


--
-- Name: sponsor_criminal_history_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY sponsor_criminal_history
    ADD CONSTRAINT sponsor_criminal_history_pkey PRIMARY KEY (criminal_history_id);


--
-- Name: sponsor_household_occupants_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY sponsor_household_occupants
    ADD CONSTRAINT sponsor_household_occupants_pkey PRIMARY KEY (occupant_id);


--
-- Name: sponsor_info_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY sponsor_info
    ADD CONSTRAINT sponsor_info_pkey PRIMARY KEY (sponsor_id);


--
-- Name: treeview_doc_list_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY treeview_doc_list
    ADD CONSTRAINT treeview_doc_list_pkey PRIMARY KEY (node_id);


--
-- Name: uac_apprehension_info_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY uac_apprehension_info
    ADD CONSTRAINT uac_apprehension_info_pkey PRIMARY KEY (apprehension_id, uac_id);


--
-- Name: uac_ar_notification_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY uac_ar_notification
    ADD CONSTRAINT uac_ar_notification_pkey PRIMARY KEY (ar_notification_id);


--
-- Name: uac_assessment_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY uac_assessment
    ADD CONSTRAINT uac_assessment_pkey PRIMARY KEY (uac_assessment_id);


--
-- Name: uac_case_review_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY uac_case_review
    ADD CONSTRAINT uac_case_review_pkey PRIMARY KEY (uac_case_review_id);


--
-- Name: uac_cr_medical_history_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY uac_cr_medical_history
    ADD CONSTRAINT uac_cr_medical_history_pkey PRIMARY KEY (medical_hist_id);


--
-- Name: uac_cr_medication_history_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY uac_cr_medication_history
    ADD CONSTRAINT uac_cr_medication_history_pkey PRIMARY KEY (medication_hist_id);


--
-- Name: uac_criminal_history_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY uac_criminal_history
    ADD CONSTRAINT uac_criminal_history_pkey PRIMARY KEY (criminal_history_id);


--
-- Name: uac_discharge_notification_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY uac_discharge_notification
    ADD CONSTRAINT uac_discharge_notification_pkey PRIMARY KEY (discharge_id);


--
-- Name: uac_doctor_visit_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY uac_doctor_visit
    ADD CONSTRAINT uac_doctor_visit_pkey PRIMARY KEY (visit_id);


--
-- Name: uac_documents_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY uac_documents
    ADD CONSTRAINT uac_documents_pkey PRIMARY KEY (doc_id);


--
-- Name: uac_education_placement_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY uac_education_placement
    ADD CONSTRAINT uac_education_placement_pkey PRIMARY KEY (placement_id);


--
-- Name: uac_effort_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY uac_effort
    ADD CONSTRAINT uac_effort_pkey PRIMARY KEY (effort_id);


--
-- Name: uac_emotional_concerns_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY uac_emotional_concerns
    ADD CONSTRAINT uac_emotional_concerns_pkey PRIMARY KEY (initial_intakes_id, emotional_concern_id);


--
-- Name: uac_family_info_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY uac_family_info
    ADD CONSTRAINT uac_family_info_pkey PRIMARY KEY (rel_id);


--
-- Name: uac_family_relations_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY uac_family_relations
    ADD CONSTRAINT uac_family_relations_pkey PRIMARY KEY (uac_relationship_id);


--
-- Name: uac_fast_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY uac_fast
    ADD CONSTRAINT uac_fast_pkey PRIMARY KEY (fast_id);


--
-- Name: uac_gang_determination_by_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY uac_gang_determination_by
    ADD CONSTRAINT uac_gang_determination_by_pkey PRIMARY KEY (determination_id, uac_id);


--
-- Name: uac_hotline_alert_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY uac_hotline_alert
    ADD CONSTRAINT uac_hotline_alert_pkey PRIMARY KEY (hotline_alert_id);


--
-- Name: uac_hotline_reporting_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY uac_hotline_reporting
    ADD CONSTRAINT uac_hotline_reporting_pkey PRIMARY KEY (hotline_reporting_id);


--
-- Name: uac_iia_summary_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY uac_iia_summary
    ADD CONSTRAINT uac_iia_summary_pkey PRIMARY KEY (iia_summary_id);


--
-- Name: uac_images_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY uac_images
    ADD CONSTRAINT uac_images_pkey PRIMARY KEY (image_id);


--
-- Name: uac_immunization_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY uac_immunization
    ADD CONSTRAINT uac_immunization_pkey PRIMARY KEY (immunization_id);


--
-- Name: uac_individual_service_plan_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY uac_individual_service_plan
    ADD CONSTRAINT uac_individual_service_plan_pkey PRIMARY KEY (service_plan_id);


--
-- Name: uac_info_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY uac_info
    ADD CONSTRAINT uac_info_pkey PRIMARY KEY (uac_id);


--
-- Name: uac_ini_documents_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY uac_ini_documents
    ADD CONSTRAINT uac_ini_documents_pkey PRIMARY KEY (doc_id);


--
-- Name: uac_initial_assessment_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY uac_initial_assessment
    ADD CONSTRAINT uac_initial_assessment_pkey PRIMARY KEY (initial_intakes_id);


--
-- Name: uac_intakes_doc_list_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY uac_intakes_doc_list
    ADD CONSTRAINT uac_intakes_doc_list_pkey PRIMARY KEY (doc_id);


--
-- Name: uac_isp_certificate_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY uac_isp_certificate
    ADD CONSTRAINT uac_isp_certificate_pkey PRIMARY KEY (certificate_id);


--
-- Name: uac_isp_sub_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY uac_isp_sub
    ADD CONSTRAINT uac_isp_sub_pkey PRIMARY KEY (isp_id);


--
-- Name: uac_jobs_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY uac_jobs
    ADD CONSTRAINT uac_jobs_pkey PRIMARY KEY (job_id);


--
-- Name: uac_medical_concern_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY uac_medical_concern
    ADD CONSTRAINT uac_medical_concern_pkey PRIMARY KEY (medical_concern_id);


--
-- Name: uac_medical_history_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY uac_medical_history
    ADD CONSTRAINT uac_medical_history_pkey PRIMARY KEY (mm_condition_id, uac_assessment_id);


--
-- Name: uac_medical_screening_notes_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY uac_medical_screening_notes
    ADD CONSTRAINT uac_medical_screening_notes_pkey PRIMARY KEY (screeining_note_id);


--
-- Name: uac_medical_screening_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY uac_medical_screening
    ADD CONSTRAINT uac_medical_screening_pkey PRIMARY KEY (screening_id);


--
-- Name: uac_medical_visit_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY uac_medical_visit
    ADD CONSTRAINT uac_medical_visit_pkey PRIMARY KEY (visit_id);


--
-- Name: uac_medication_history_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY uac_medication_history
    ADD CONSTRAINT uac_medication_history_pkey PRIMARY KEY (medication_hist_id);


--
-- Name: uac_medication_info_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY uac_medication_info
    ADD CONSTRAINT uac_medication_info_pkey PRIMARY KEY (medication_id);


--
-- Name: uac_mental_issues_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY uac_mental_issues
    ADD CONSTRAINT uac_mental_issues_pkey PRIMARY KEY (uac_mental_issues_id);


--
-- Name: uac_program_exit_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY uac_program_exit
    ADD CONSTRAINT uac_program_exit_pkey PRIMARY KEY (program_exit_id);


--
-- Name: uac_program_info_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY uac_program_info
    ADD CONSTRAINT uac_program_info_pkey PRIMARY KEY (uac_program_id);


--
-- Name: uac_psychological_eval_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY uac_psychological_eval
    ADD CONSTRAINT uac_psychological_eval_pkey PRIMARY KEY (uac_psychological_eval_id);


--
-- Name: uac_release_request_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY uac_release_request
    ADD CONSTRAINT uac_release_request_pkey PRIMARY KEY (release_id);


--
-- Name: uac_risk_assessment_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY uac_risk_assessment
    ADD CONSTRAINT uac_risk_assessment_pkey PRIMARY KEY (risk_assessment_id);


--
-- Name: uac_secure_review_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY uac_secure_review
    ADD CONSTRAINT uac_secure_review_pkey PRIMARY KEY (secure_review_id);


--
-- Name: uac_sir_category_map_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY uac_sir_category_map
    ADD CONSTRAINT uac_sir_category_map_pkey PRIMARY KEY (category_map_id);


--
-- Name: uac_sir_category_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY uac_sir_category
    ADD CONSTRAINT uac_sir_category_pkey PRIMARY KEY (category_id);


--
-- Name: uac_sir_documents_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY uac_sir_documents
    ADD CONSTRAINT uac_sir_documents_pkey PRIMARY KEY (doc_id);


--
-- Name: uac_sir_fields_history_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY uac_sir_fields_history
    ADD CONSTRAINT uac_sir_fields_history_pkey PRIMARY KEY (history_id);


--
-- Name: uac_sir_followup_rpt_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY uac_sir_followup_rpt
    ADD CONSTRAINT uac_sir_followup_rpt_pkey PRIMARY KEY (sir_followup_report_id);


--
-- Name: uac_sir_new_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY uac_sir_new
    ADD CONSTRAINT uac_sir_new_pkey PRIMARY KEY (uac_sir_id);


--
-- Name: uac_sir_notification_list_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY uac_sir_notification_list
    ADD CONSTRAINT uac_sir_notification_list_pkey PRIMARY KEY (notification_list_id);


--
-- Name: uac_sir_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY uac_sir
    ADD CONSTRAINT uac_sir_pkey PRIMARY KEY (sir_id);


--
-- Name: uac_sir_uacinvolved_list_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY uac_sir_uacinvolved_list
    ADD CONSTRAINT uac_sir_uacinvolved_list_pkey PRIMARY KEY (uacinvolved_list_id);


--
-- Name: uac_sponsor_list_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY uac_sponsor_list
    ADD CONSTRAINT uac_sponsor_list_pkey PRIMARY KEY (uac_id, sponsor_id);


--
-- Name: uac_sponsor_sponsored_uacs_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY uac_sponsor_sponsored_uacs
    ADD CONSTRAINT uac_sponsor_sponsored_uacs_pkey PRIMARY KEY (sponsored_id);


--
-- Name: uac_substance_use_history_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY uac_substance_use_history
    ADD CONSTRAINT uac_substance_use_history_pkey PRIMARY KEY (substance_hist_id);


--
-- Name: uac_transfer_request_pkey; Type: CONSTRAINT; Schema: uacportal; Owner: -
--

ALTER TABLE ONLY uac_transfer_request
    ADD CONSTRAINT uac_transfer_request_pkey PRIMARY KEY (transfer_request_id);


SET search_path = uac_health, pg_catalog;

--
-- Name: health_assessment_giid__idx; Type: INDEX; Schema: uac_health; Owner: -
--

CREATE INDEX health_assessment_giid__idx ON health_assessment USING btree (general_info_id);


--
-- Name: health_docs_giid__idx; Type: INDEX; Schema: uac_health; Owner: -
--

CREATE INDEX health_docs_giid__idx ON health_files_uploaded USING btree (general_info_id);


--
-- Name: health_docs_type_id__idx; Type: INDEX; Schema: uac_health; Owner: -
--

CREATE INDEX health_docs_type_id__idx ON health_files_uploaded USING btree (health_file_type_id);


--
-- Name: health_general_info_uk1; Type: INDEX; Schema: uac_health; Owner: -
--

CREATE INDEX health_general_info_uk1 ON health_general_info USING btree (uac_id, program_id, initial_exam);


--
-- Name: health_hst_phy_giid__idx; Type: INDEX; Schema: uac_health; Owner: -
--

CREATE INDEX health_hst_phy_giid__idx ON health_hst_physical_assessment USING btree (general_info_id);


--
-- Name: health_lab_test_giid__idx; Type: INDEX; Schema: uac_health; Owner: -
--

CREATE INDEX health_lab_test_giid__idx ON health_lab_test USING btree (general_info_id);


--
-- Name: health_lab_test_id__idx; Type: INDEX; Schema: uac_health; Owner: -
--

CREATE INDEX health_lab_test_id__idx ON health_lab_test USING btree (test_id);


--
-- Name: health_lab_test_result__idx; Type: INDEX; Schema: uac_health; Owner: -
--

CREATE INDEX health_lab_test_result__idx ON health_lab_test USING btree (test_result_id);


--
-- Name: health_pr_giid__idx; Type: INDEX; Schema: uac_health; Owner: -
--

CREATE INDEX health_pr_giid__idx ON health_psycosociall_risk USING btree (general_info_id);


--
-- Name: health_prid_diseaseid__idx; Type: INDEX; Schema: uac_health; Owner: -
--

CREATE INDEX health_prid_diseaseid__idx ON health_prid_labtesting USING btree (disease_id);


--
-- Name: health_prid_giid__idx; Type: INDEX; Schema: uac_health; Owner: -
--

CREATE INDEX health_prid_giid__idx ON health_prid_labtesting USING btree (general_info_id);


--
-- Name: health_prid_result__idx; Type: INDEX; Schema: uac_health; Owner: -
--

CREATE INDEX health_prid_result__idx ON health_prid_labtesting USING btree (test_result_id);


--
-- Name: health_prid_testid__idx; Type: INDEX; Schema: uac_health; Owner: -
--

CREATE INDEX health_prid_testid__idx ON health_prid_labtesting USING btree (test_id);


--
-- Name: health_rs_giid__idx; Type: INDEX; Schema: uac_health; Owner: -
--

CREATE INDEX health_rs_giid__idx ON health_review_symptoms USING btree (general_info_id);


--
-- Name: health_rs_symptomsid__idx; Type: INDEX; Schema: uac_health; Owner: -
--

CREATE INDEX health_rs_symptomsid__idx ON health_review_symptoms USING btree (symptom_id);


--
-- Name: health_sa_labtesting__idxv1; Type: INDEX; Schema: uac_health; Owner: -
--

CREATE INDEX health_sa_labtesting__idxv1 ON health_sa_labtesting USING btree (general_info_id);


--
-- Name: health_tb_sc_giid__idx; Type: INDEX; Schema: uac_health; Owner: -
--

CREATE INDEX health_tb_sc_giid__idx ON health_tb_screening USING btree (general_info_id);


--
-- Name: health_tb_sc_locationid__idx; Type: INDEX; Schema: uac_health; Owner: -
--

CREATE INDEX health_tb_sc_locationid__idx ON health_tb_screening USING btree (tb_screen_location_id);


--
-- Name: hgi_location_crc__idx; Type: INDEX; Schema: uac_health; Owner: -
--

CREATE INDEX hgi_location_crc__idx ON health_general_info USING btree (location_child_received_care);


--
-- Name: hm_case_wrapup_guid__idx; Type: INDEX; Schema: uac_health; Owner: -
--

CREATE INDEX hm_case_wrapup_guid__idx ON health_medical_case_wrapup USING btree (general_info_id);


--
-- Name: uac_abn_cxr_tbscreen__idx; Type: INDEX; Schema: uac_health; Owner: -
--

CREATE INDEX uac_abn_cxr_tbscreen__idx ON health_abnormal_cxr USING btree (health_tb_screening_id);


--
-- Name: uac_health_tblabtesting__idxv1; Type: INDEX; Schema: uac_health; Owner: -
--

CREATE INDEX uac_health_tblabtesting__idxv1 ON uac_health_tblabtesting USING btree (speciment_type);


--
-- Name: uac_health_tblabtestingid__idx; Type: INDEX; Schema: uac_health; Owner: -
--

CREATE INDEX uac_health_tblabtestingid__idx ON uac_health_tblabtesting USING btree (test_id);


--
-- Name: uac_health_tst_result__idx; Type: INDEX; Schema: uac_health; Owner: -
--

CREATE INDEX uac_health_tst_result__idx ON uac_health_tst USING btree (result);


--
-- Name: uac_health_tst_tbscreenid__idx; Type: INDEX; Schema: uac_health; Owner: -
--

CREATE INDEX uac_health_tst_tbscreenid__idx ON uac_health_tst USING btree (health_tb_screening_id);


--
-- Name: uac_hm_assessmentid__idx; Type: INDEX; Schema: uac_health; Owner: -
--

CREATE INDEX uac_hm_assessmentid__idx ON uac_health_immunization USING btree (health_assessment_id);


--
-- Name: uac_hm_sourceid__idx; Type: INDEX; Schema: uac_health; Owner: -
--

CREATE INDEX uac_hm_sourceid__idx ON uac_health_immunization USING btree (source_id);


--
-- Name: uac_hm_vaccineid__idx; Type: INDEX; Schema: uac_health; Owner: -
--

CREATE INDEX uac_hm_vaccineid__idx ON uac_health_immunization USING btree (vaccine_id);


--
-- Name: uac_hmed_assessment__idx; Type: INDEX; Schema: uac_health; Owner: -
--

CREATE INDEX uac_hmed_assessment__idx ON uac_health_medication USING btree (health_assessment_id);


--
-- Name: uac_hmed_sourceid__idx; Type: INDEX; Schema: uac_health; Owner: -
--

CREATE INDEX uac_hmed_sourceid__idx ON uac_health_medication USING btree (source_id);


--
-- Name: uac_igra_result__idx; Type: INDEX; Schema: uac_health; Owner: -
--

CREATE INDEX uac_igra_result__idx ON uac_health_igra USING btree (result);


--
-- Name: uac_igra_tbscreen__idx; Type: INDEX; Schema: uac_health; Owner: -
--

CREATE INDEX uac_igra_tbscreen__idx ON uac_health_igra USING btree (health_tb_screening_id);


--
-- Name: uac_igra_testid__idx; Type: INDEX; Schema: uac_health; Owner: -
--

CREATE INDEX uac_igra_testid__idx ON uac_health_igra USING btree (test_id);


--
-- Name: uac_phc_claster_info__idxv1; Type: INDEX; Schema: uac_health; Owner: -
--

CREATE INDEX uac_phc_claster_info__idxv1 ON uac_phc_cluster_info USING btree (phc_id);


--
-- Name: uac_phc_exposures__idx; Type: INDEX; Schema: uac_health; Owner: -
--

CREATE INDEX uac_phc_exposures__idx ON uac_phc_exposures USING btree (phc_id, anumber);


--
-- Name: uac_phc_exposures_phc_id_idx; Type: INDEX; Schema: uac_health; Owner: -
--

CREATE INDEX uac_phc_exposures_phc_id_idx ON uac_phc_exposures USING btree (phc_id);


--
-- Name: uac_psycosocial_risk_id__idx; Type: INDEX; Schema: uac_health; Owner: -
--

CREATE INDEX uac_psycosocial_risk_id__idx ON uac_psycosocial_risk USING btree (psycosocial_risk_id);


--
-- Name: uac_sa_labtesting__idxv1; Type: INDEX; Schema: uac_health; Owner: -
--

CREATE INDEX uac_sa_labtesting__idxv1 ON uac_sa_labtesting USING btree (sa_labtesting_id);


--
-- Name: uac_sa_labtesting__idxv2; Type: INDEX; Schema: uac_health; Owner: -
--

CREATE INDEX uac_sa_labtesting__idxv2 ON uac_sa_labtesting USING btree (test_name);


--
-- Name: uac_sa_labtesting__idxv3; Type: INDEX; Schema: uac_health; Owner: -
--

CREATE INDEX uac_sa_labtesting__idxv3 ON uac_sa_labtesting USING btree (test_result_id);


--
-- Name: uac_tb_cxt_creen__idx; Type: INDEX; Schema: uac_health; Owner: -
--

CREATE INDEX uac_tb_cxt_creen__idx ON uac_health_cxr USING btree (health_tb_screening_id);


--
-- Name: uac_tblabtest_result__idx; Type: INDEX; Schema: uac_health; Owner: -
--

CREATE INDEX uac_tblabtest_result__idx ON uac_health_tblabtesting USING btree (result);


--
-- Name: uac_tbscreening__idx; Type: INDEX; Schema: uac_health; Owner: -
--

CREATE INDEX uac_tbscreening__idx ON uac_health_tblabtesting USING btree (health_tb_screening_id);


--
-- Name: uac_working_diagnosis__idx; Type: INDEX; Schema: uac_health; Owner: -
--

CREATE INDEX uac_working_diagnosis__idx ON uac_working_diagnosis USING btree (working_diagnosis_id);


--
-- Name: uac_working_diagnosis__idxv1; Type: INDEX; Schema: uac_health; Owner: -
--

CREATE INDEX uac_working_diagnosis__idxv1 ON uac_working_diagnosis USING btree (health_assessment_id);


--
-- Name: uac_working_diagnosis__idxv2; Type: INDEX; Schema: uac_health; Owner: -
--

CREATE INDEX uac_working_diagnosis__idxv2 ON uac_working_diagnosis USING btree (disease_id);


SET search_path = uacportal, pg_catalog;

--
-- Name: index_sponsor_info; Type: INDEX; Schema: uacportal; Owner: -
--

CREATE INDEX index_sponsor_info ON sponsor_info USING btree (first_name, last_name, state, ssn, alien_no, address);


--
-- Name: index_uac_info; Type: INDEX; Schema: uacportal; Owner: -
--

CREATE INDEX index_uac_info ON uac_info USING btree (alien_no, first_name, last_name, dob);


--
-- Name: list_program_type_un; Type: INDEX; Schema: uacportal; Owner: -
--

CREATE UNIQUE INDEX list_program_type_un ON list_program_type USING btree (program_type);


--
-- Name: uac_level1_logging_pk; Type: INDEX; Schema: uacportal; Owner: -
--

CREATE UNIQUE INDEX uac_level1_logging_pk ON uac_level1_logging USING btree (logid);


--
-- Name: uac_level2_logging_pk; Type: INDEX; Schema: uacportal; Owner: -
--

CREATE UNIQUE INDEX uac_level2_logging_pk ON uac_level2_logging USING btree (logid);


--
-- Name: uac_medical_concer_pk; Type: INDEX; Schema: uacportal; Owner: -
--

CREATE UNIQUE INDEX uac_medical_concer_pk ON uac_medical_concern USING btree (initial_intakes_id, concern_id);


--
-- Name: uac_mental_issues_pk; Type: INDEX; Schema: uacportal; Owner: -
--

CREATE UNIQUE INDEX uac_mental_issues_pk ON uac_mental_issues USING btree (initial_intakes_id, mental_issue_id);


--
-- Name: uac_sir_fields_history_index1; Type: INDEX; Schema: uacportal; Owner: -
--

CREATE INDEX uac_sir_fields_history_index1 ON uac_sir_fields_history USING btree (sir_id);


--
-- Name: uac_sir_media_contacts_pk; Type: INDEX; Schema: uacportal; Owner: -
--

CREATE UNIQUE INDEX uac_sir_media_contacts_pk ON uac_sir_media_contacts USING btree (media_contact_id);


SET search_path = uac_health, pg_catalog;

--
-- Name: tt_contact_investigation; Type: TRIGGER; Schema: uac_health; Owner: -
--

CREATE TRIGGER tt_contact_investigation BEFORE INSERT ON health_contact_investigation FOR EACH ROW WHEN ((new.contact_investigation_id IS NULL)) EXECUTE PROCEDURE trigger_fct_tt_contact_investigation();


--
-- Name: tt_documents; Type: TRIGGER; Schema: uac_health; Owner: -
--

CREATE TRIGGER tt_documents BEFORE INSERT ON health_files_uploaded FOR EACH ROW WHEN ((new.doc_id IS NULL)) EXECUTE PROCEDURE trigger_fct_tt_documents();


--
-- Name: tt_general_info; Type: TRIGGER; Schema: uac_health; Owner: -
--

CREATE TRIGGER tt_general_info BEFORE INSERT ON health_general_info FOR EACH ROW WHEN ((new.general_info_id IS NULL)) EXECUTE PROCEDURE trigger_fct_tt_general_info();


--
-- Name: tt_health_abnormal_cxr; Type: TRIGGER; Schema: uac_health; Owner: -
--

CREATE TRIGGER tt_health_abnormal_cxr BEFORE INSERT ON health_abnormal_cxr FOR EACH ROW WHEN ((new.abnormal_cxr_id IS NULL)) EXECUTE PROCEDURE trigger_fct_tt_health_abnormal_cxr();


--
-- Name: tt_health_assessment; Type: TRIGGER; Schema: uac_health; Owner: -
--

CREATE TRIGGER tt_health_assessment BEFORE INSERT ON health_assessment FOR EACH ROW EXECUTE PROCEDURE trigger_fct_tt_health_assessment();


--
-- Name: tt_health_illness_of_phc; Type: TRIGGER; Schema: uac_health; Owner: -
--

CREATE TRIGGER tt_health_illness_of_phc BEFORE INSERT ON health_illness_of_phc FOR EACH ROW WHEN ((new.phc_id IS NULL)) EXECUTE PROCEDURE trigger_fct_tt_health_illness_of_phc();


--
-- Name: tt_health_sa_labtesting; Type: TRIGGER; Schema: uac_health; Owner: -
--

CREATE TRIGGER tt_health_sa_labtesting BEFORE INSERT ON health_sa_labtesting FOR EACH ROW WHEN ((new.sa_labtesting_id IS NULL)) EXECUTE PROCEDURE trigger_fct_tt_health_sa_labtesting();


--
-- Name: tt_health_tb_screening; Type: TRIGGER; Schema: uac_health; Owner: -
--

CREATE TRIGGER tt_health_tb_screening BEFORE INSERT ON health_tb_screening FOR EACH ROW WHEN ((new.health_tb_screening_id IS NULL)) EXECUTE PROCEDURE trigger_fct_tt_health_tb_screening();


--
-- Name: tt_lab_test; Type: TRIGGER; Schema: uac_health; Owner: -
--

CREATE TRIGGER tt_lab_test BEFORE INSERT ON health_lab_test FOR EACH ROW WHEN ((new.health_lab_test_id IS NULL)) EXECUTE PROCEDURE trigger_fct_tt_lab_test();


--
-- Name: tt_physical_assessment; Type: TRIGGER; Schema: uac_health; Owner: -
--

CREATE TRIGGER tt_physical_assessment BEFORE INSERT ON health_hst_physical_assessment FOR EACH ROW WHEN ((new.hst_physical_assessment_id IS NULL)) EXECUTE PROCEDURE trigger_fct_tt_physical_assessment();


--
-- Name: tt_prid_labtesting; Type: TRIGGER; Schema: uac_health; Owner: -
--

CREATE TRIGGER tt_prid_labtesting BEFORE INSERT ON health_prid_labtesting FOR EACH ROW WHEN ((new.prid_labtesting_id IS NULL)) EXECUTE PROCEDURE trigger_fct_tt_prid_labtesting();


--
-- Name: tt_psycosocial_risk; Type: TRIGGER; Schema: uac_health; Owner: -
--

CREATE TRIGGER tt_psycosocial_risk BEFORE INSERT ON health_psycosociall_risk FOR EACH ROW WHEN ((new.health_psycosocial_risk_id IS NULL)) EXECUTE PROCEDURE trigger_fct_tt_psycosocial_risk();


--
-- Name: tt_review_symptoms; Type: TRIGGER; Schema: uac_health; Owner: -
--

CREATE TRIGGER tt_review_symptoms BEFORE INSERT ON health_review_symptoms FOR EACH ROW WHEN ((new.review_symptoms_id IS NULL)) EXECUTE PROCEDURE trigger_fct_tt_review_symptoms();


--
-- Name: tt_uac_abnormal_cxr; Type: TRIGGER; Schema: uac_health; Owner: -
--

CREATE TRIGGER tt_uac_abnormal_cxr BEFORE INSERT ON uac_abnormal_cxr FOR EACH ROW WHEN ((new.uac_abnormal_cxr_id IS NULL)) EXECUTE PROCEDURE trigger_fct_tt_uac_abnormal_cxr();


--
-- Name: tt_uac_health_cxr; Type: TRIGGER; Schema: uac_health; Owner: -
--

CREATE TRIGGER tt_uac_health_cxr BEFORE INSERT ON uac_health_cxr FOR EACH ROW WHEN ((new.health_cxr_id IS NULL)) EXECUTE PROCEDURE trigger_fct_tt_uac_health_cxr();


--
-- Name: tt_uac_health_igra; Type: TRIGGER; Schema: uac_health; Owner: -
--

CREATE TRIGGER tt_uac_health_igra BEFORE INSERT ON uac_health_igra FOR EACH ROW WHEN ((new.health_igra_id IS NULL)) EXECUTE PROCEDURE trigger_fct_tt_uac_health_igra();


--
-- Name: tt_uac_health_immunization; Type: TRIGGER; Schema: uac_health; Owner: -
--

CREATE TRIGGER tt_uac_health_immunization BEFORE INSERT ON uac_health_immunization FOR EACH ROW EXECUTE PROCEDURE trigger_fct_tt_uac_health_immunization();


--
-- Name: tt_uac_health_medication; Type: TRIGGER; Schema: uac_health; Owner: -
--

CREATE TRIGGER tt_uac_health_medication BEFORE INSERT ON uac_health_medication FOR EACH ROW EXECUTE PROCEDURE trigger_fct_tt_uac_health_medication();


--
-- Name: tt_uac_health_tblabtesting; Type: TRIGGER; Schema: uac_health; Owner: -
--

CREATE TRIGGER tt_uac_health_tblabtesting BEFORE INSERT ON uac_health_tblabtesting FOR EACH ROW WHEN ((new.health_tbt_id IS NULL)) EXECUTE PROCEDURE trigger_fct_tt_uac_health_tblabtesting();


--
-- Name: tt_uac_health_tst; Type: TRIGGER; Schema: uac_health; Owner: -
--

CREATE TRIGGER tt_uac_health_tst BEFORE INSERT ON uac_health_tst FOR EACH ROW WHEN ((new.health_tst_id IS NULL)) EXECUTE PROCEDURE trigger_fct_tt_uac_health_tst();


--
-- Name: tt_uac_phc_cluster_info; Type: TRIGGER; Schema: uac_health; Owner: -
--

CREATE TRIGGER tt_uac_phc_cluster_info BEFORE INSERT ON uac_phc_cluster_info FOR EACH ROW WHEN ((new.cluster_id IS NULL)) EXECUTE PROCEDURE trigger_fct_tt_uac_phc_cluster_info();


--
-- Name: tt_uac_phc_exposures; Type: TRIGGER; Schema: uac_health; Owner: -
--

CREATE TRIGGER tt_uac_phc_exposures BEFORE INSERT ON uac_phc_exposures FOR EACH ROW WHEN ((new.phc_exposure_id IS NULL)) EXECUTE PROCEDURE trigger_fct_tt_uac_phc_exposures();


--
-- Name: tt_uac_psycosocial_risk; Type: TRIGGER; Schema: uac_health; Owner: -
--

CREATE TRIGGER tt_uac_psycosocial_risk BEFORE INSERT ON uac_psycosocial_risk FOR EACH ROW WHEN ((new.uac_psycosocial_risk_id IS NULL)) EXECUTE PROCEDURE trigger_fct_tt_uac_psycosocial_risk();


--
-- Name: tt_uac_sa_labtesting; Type: TRIGGER; Schema: uac_health; Owner: -
--

CREATE TRIGGER tt_uac_sa_labtesting BEFORE INSERT ON uac_sa_labtesting FOR EACH ROW WHEN ((new.uac_sa_lab_testing_id IS NULL)) EXECUTE PROCEDURE trigger_fct_tt_uac_sa_labtesting();


--
-- Name: tt_uac_working_diagnosis; Type: TRIGGER; Schema: uac_health; Owner: -
--

CREATE TRIGGER tt_uac_working_diagnosis BEFORE INSERT ON uac_working_diagnosis FOR EACH ROW EXECUTE PROCEDURE trigger_fct_tt_uac_working_diagnosis();

