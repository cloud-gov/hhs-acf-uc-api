require "rails_helper"

RSpec.describe EnrollmentSerializer do
  let(:sponsor_attributes) {
    {
      "sponsor_id"=>501197,
      "first_name"=>"Olga de Jesus",
      "last_name"=>"Fake", "ssn"=>nil,
      "alien_no"=>nil,
      "address"=>"11763 Lower Azusa Road",
      "city"=>"El Monte", "state"=>"CA",
      "zip_code"=>"91732",
      "dob"=> Time.parse('Tue, 01 Mar 1983 00:00:00 UTC +00:00'),
      "cob"=>"El Salvador", "cor"=>"United States of America",
      "marriage_status"=>"Single",
      "home_phone"=>"0000000000", "work_phone"=>"0000000000",
      "fax"=>nil, "email"=>"test@yahoo.com",
      "gender"=>"F", "legal_status_id"=>2,
      "sponsor_relationship_to_uac"=>16,
      "uac_relationship_to_sponsor"=>22,
      "household_has_disease"=>0, "household_has_criminal_hist"=>0,
      "notes"=>nil, "sponsorthip_status"=>nil,
      "p_counter"=>nil, "a_counter"=>nil,
      "date_created"=> Time.parse('Fri, 24 Jan 2014 17:56:14 UTC +00:00'),
      "user_created"=>"abigail.buchheit",
      "uptime"=>Time.parse('Fri, 24 Jan 2014 17:56:14 UTC +00:00'),
      "upuser"=>"abigail.buchheit",
      "flag"=>nil, "flag_note"=>nil, "flag_address"=>nil,
      "flag_address_note"=>nil, "sponsor_token"=>nil
    }
  }

  let(:enrollement_sponsor_attributes) {
    {
      "uac_id"=>68426,
      "sponsor_id"=>501197,
      "current_sponsor"=>1,
      "sponsor_address"=>nil,
      "sponsor_city"=>nil,
      "sponsor_state"=>nil,
      "sponsor_zipcode"=>nil,
      "sponsor_home_phone"=>nil,
      "sponsor_work_phone"=>nil,
      "sponsor_fax"=>nil,
      "sponsor_email"=>nil,
      "sponsor_relationship_to_uac"=>nil,
      "uac_relationship_to_sponsor"=>nil,
      "comments"=>nil, "date_created"=>nil,
      "user_created"=>nil, "uptime"=>nil,
      "upuser"=>nil
    }
  }

  let(:enrollment_attributes) {
    {
      "uac_id"=>68426,
      "alien_no"=>"806386857",
      "first_name"=>"Cristian Josue", "last_name"=>"Fake",
      "aka"=>nil, "dob"=>Time.parse('Sat, 29 Jan 2000 00:00:00 UTC +00:00'),
      "cob"=>"El Salvador", "date_of_entry"=>nil, "manner_of_entry"=>"1",
      "city_of_entry"=>nil, "specify_city_of_entry"=>nil, "state_of_entry"=>nil,
      "date_of_apprehension"=>nil, "referring_office"=>nil, "notification_city"=>nil,
      "specify_not_city"=>nil, "notification_state"=>nil, "date_orr_notified"=>nil,
      "time_orr_notified"=>nil, "date_orr_approved"=>nil, "time_orr_approved"=>nil,
      "pregnancy"=>nil, "injury"=>nil, "illness"=>nil, "behavior_wo_medication"=>nil,
      "behavior_w_medication"=>nil, "note_bi_wo_medication"=>nil,
      "note_for_w_medication"=>nil, "immigration_status"=>nil,
      "referring_agency"=>nil, "orr_comments"=>nil, "uac_status"=>"ADMITTED",
      "date_created"=>nil, "user_created"=>nil, "uptime"=>nil, "upuser"=>nil,
      "gender"=>"M", "uac_fast_status"=>nil, "status_id"=>nil, "agency_id"=>nil,
      "middle_name"=>nil, "uac_health_concern"=>nil, "uac_criminal_charge"=>nil,
      "uac_additional_info"=>nil, "hc_other"=>nil, "hc_summary"=>nil,
      "hc_ergent_condition"=>nil, "uac_flag"=>nil, "processing_poc"=>nil,
      "processing_email"=>nil, "processing_phone"=>nil, "referral_notes"=>nil,
      "justification_for_ss_placement"=>nil, "date_of_current_location"=>nil,
      "known_gang_affiliation"=>nil, "name_of_gang"=>nil,
      "city_of_apprehension"=>nil, "state_of_apprehension"=>nil,
      "city_of_current_location"=>nil, "state_of_current_location"=>nil,
      "gang_affiliation_summary"=>nil, "detention_type_of_facility"=>nil,
      "facility_name"=>nil, "facility_phone"=>nil, "facility_poc"=>nil,
      "facility_fax"=>nil, "facility_admission_date"=>nil,
      "facility_discharged_date"=>nil, "incident_rpt_in_dc"=>nil,
      "sum_of_mm_health_condition"=>nil, "date_cancelled"=>nil, "cancelled_by"=>nil,
      "referral_date"=>nil, "familygroup"=>nil, "foot_guide"=>nil,
      "reviewed_by_orr"=>nil, "current_location_other"=>nil
    }
  }

  describe "when there is a sponsor" do
    let(:record)     { Enrollment.where(uac_id: enrollment_attributes['uac_id']).first }
    let(:serializer) { EnrollmentSerializer.new(record) }
    let(:json)       { serializer.as_json }

    before do
      Sponsor.create(sponsor_attributes)
      EnrollmentSponsor.create(enrollement_sponsor_attributes)
      Enrollment.create(enrollment_attributes)
    end

    it "gets and renames basic enrollment information" do
      expect(json[:id]).to eq(enrollment_attributes['uac_id'])
    end
  end
end

# 363884
# 366638
#
# 2754
