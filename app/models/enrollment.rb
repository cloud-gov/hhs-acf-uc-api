require 'model_helper'
require 'pry'
require 'date'

class EnrollmentProxy < GeneralProxy

  SOURCE_TABLE_NAME = 'uac_info'
  PK_COLUMN_NAME = 'uac_id'
  GET_URL = '/enrollment'

  get GET_URL do
    if get_params.has_key? "as_of"
      @@date = Date.parse get_params['as_of']
      # alas simply deleting from get_params does not work
      url url.gsub(/as_of=[\d\-]+&?/,"")
    else
      @@date = Date.today
    end
    path = "/uac_info%7B*,/uac_program_info,/uac_sponsor_list%7D"
    url transform_url_to(@url, path)
    response = passthrough
    translate(response) do |body|
      result = body[SOURCE_TABLE_NAME]
      result.each do |record|
        self.post_process record
      end
      result
    end
  end

  def self.post_process(record)
    record['programs'] = record.delete 'uac_program_info'
    record['sponsors'] = record.delete 'uac_sponsor_list'
    record['referred_today'] = record['referral_date'] == @@date
    record['placed_today'] = record['date_orr_approved'] == @@date
    record['discharged_today'] = record['facility_discharged_date'] == @@date
  end

  private

end

class Enrollment < GeneralBase
  verbose true
  proxy EnrollmentProxy

  get :all, "/enrollment"
  get :find, "/enrollment/:id/"
end
