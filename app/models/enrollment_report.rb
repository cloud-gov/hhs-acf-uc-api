require 'model_helper'

class EnrollmentReportProxy < GeneralProxy

  PATH = '/v_uac_enrollment_rpt'
  SOURCE_TABLE_NAME = 'v_uac_enrollment_rpt'
  PK_COLUMN_NAME = 'uac_id'
  GET_URL = '/enrollment_report'

  get GET_URL do
    url transform_url_to(@url, "/v_uac_enrollment_rpt")
    response = passthrough
    translate(response) do |body|
      body['v_uac_enrollment_rpt']
    end
  end

  private

end

class EnrollmentReport < GeneralBase
  verbose true
  proxy EnrollmentReportProxy


  get :all, "/enrollment_report"
  get :find, "/enrollment_report/:id/"
end
