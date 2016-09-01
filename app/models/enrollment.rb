require 'pry'
require 'uri'

class EnrollmentProxy < Flexirest::ProxyBase

  get "/enrollment" do
    url transform_url_to(@url, "/uac_info%7B*,/uac_program_info,/uac_sponsor_list%7D")
    response = passthrough
    translate(response) do |body|
      result = body['uac_info']
      result.each do |enrollment|
        enrollment['programs'] = enrollment.delete 'uac_program_info'
        enrollment['sponsors'] = enrollment.delete 'uac_sponsor_list'
      end
      result
    end
  end

  private

  # TODO: Pull these out into a helper mixin?  An ActiveSupport::Concern?

  PK_COLUMN_NAME = 'uac_id'
  def self.transform_url_to(old_url, target)
    pieces = URI.parse old_url
    pieces = self.move_id_to_query pieces
    pieces = self.remove_unwanted_query_parts pieces
    sep = pieces.query.empty? ? "" : "?"
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

class Enrollment < Flexirest::Base
  verbose true
  proxy EnrollmentProxy
  base_url Rails.application.config.htsql_server_url

  get :all, "/enrollment"
  get :find, "/enrollment/:id/"

  before_request do |name, request|
    # here is where request.get_params contains params
  end

  after_request :fix_names

  private


  def fix_names(name, response)
    # HTSQL returns it as "application/javascript",
    # but Flexirest throws ResponseParseException for that
    response.response_headers["content-type"] = "application/json"
  end
end
