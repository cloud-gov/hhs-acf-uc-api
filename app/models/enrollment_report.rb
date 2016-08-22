require 'pry'

class EnrollmentReportProxy < ActiveRestClient::ProxyBase
  get "/enrollment_report" do
    url "v_uac_enrollment_rpt/%3Ajson"
    response = passthrough
    translate(response) do |body|
      body['v_uac_enrollment_rpt']
    end
  end
end

class EnrollmentReport < ActiveRestClient::Base
  verbose true
  proxy EnrollmentReportProxy
  base_url Rails.application.config.htsql_server_url

  get :all, "/enrollment_report"

  after_request :unnest

  private

  def unnest(name, response)
    response.response_headers["content-type"] = "application/json"
    # HTSQL returns it as "application/javascript",
    # but ActiveRestClient throws ResponseParseException for that
  end
end
