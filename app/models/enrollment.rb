require 'model_helper'

class EnrollmentProxy < GeneralProxy

  PATH = "/uac_info%7B*,/uac_program_info,/uac_sponsor_list%7D"
  SOURCE_TABLE_NAME = 'uac_info'
  PK_COLUMN_NAME = 'uac_id'
  GET_URL = '/enrollment'

  get GET_URL do
    url transform_url_to(@url, PATH)
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
  end
end

class Enrollment < GeneralBase
  verbose true
  proxy EnrollmentProxy

  get :all, "/enrollment"
  get :find, "/enrollment/:id/"
end
