require 'pry'

class EnrollmentReportProxy < Flexirest::ProxyBase
  get "/enrollment_report" do
    url "v_uac_enrollment_rpt/%3Ajson"
    response = passthrough
    translate(response) do |body|
      body['v_uac_enrollment_rpt']
    end
  end

  private

  # TODO: Pull these out into a helper mixin?  An ActiveSupport::Concern?

  def self.transform_url_to(old_url, target)
    pieces = URI.parse old_url
    pieces = self.move_id_to_query pieces
    pieces = self.remove_unwanted_query_parts pieces
    sep = "" if pieces.query.empty? else "?"
    "#{target}#{sep}#{pieces.query}/:json"
  end

  ID_PATTERN = /\/(\d+)\//
  def self.move_id_to_query(pieces)
    match = ID_PATTERN.match pieces.path
    if match
      if pieces.query
        pieces.query += "&#{PK_COLUMN_NAME}=#{match[1]}"
      else
        pieces.query = "#{PK_COLUMN_NAME}=#{match[1]}"
      end
    end
    pieces
  end

  UNWANTED_QUERY_PARTS = ['action', 'controller']
  def self.remove_unwanted_query_parts(pieces)
    query_items = pieces.query.split '&'
    query_items = query_items.select do | qi |
      not UNWANTED_QUERY_PARTS.include? (qi.split '=')[0]
    end
    pieces.query = query_items.join '&'
    pieces
  end

end

class EnrollmentReport < Flexirest::Base
  verbose true
  proxy EnrollmentReportProxy
  base_url Rails.application.config.htsql_server_url

  get :all, "/enrollment_report"

  after_request :unnest

  private

  def unnest(name, response)
    response.response_headers["content-type"] = "application/json"
    # HTSQL returns it as "application/javascript",
    # but Flexirest throws ResponseParseException for that
  end
end
