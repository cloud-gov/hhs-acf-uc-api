require 'pry'

class EnrollmentProxy < ActiveRestClient::ProxyBase
  ID_PATTERN = /\/(\d+)\//
  get "/enrollment" do
    if url =~ ID_PATTERN
      match = url.match ID_PATTERN
      url "uac_info?uac_id=#{match[1]}/:json"
    else
      url "uac_info/%3Ajson"
    end
    response = passthrough
    translate(response) do |body|
      body['uac_info']
    end
  end
end

class Enrollment < ActiveRestClient::Base
  verbose true
  proxy EnrollmentProxy
  base_url Rails.application.config.htsql_server_url

  get :all, "/enrollment"
  get :find, "/enrollment/:id/"

  after_request :unnest

  private

  def unnest(name, response)
    response.response_headers["content-type"] = "application/json"
    # HTSQL returns it as "application/javascript",
    # but ActiveRestClient throws ResponseParseException for that
  end
end
