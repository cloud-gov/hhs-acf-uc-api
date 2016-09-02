require 'uri'

class GeneralProxy < Flexirest::ProxyBase

  def post_process(record)
  end

  private

  PK_COLUMN_NAME = 'uac_id'
  def self.transform_url_to(old_url, target)
    pieces = URI.parse old_url
    pieces.query ||= ""
    pieces = self.move_id_to_query pieces
    pieces = self.remove_unwanted_query_parts pieces
    sep = pieces.query.empty? ? "" : "?"
    "#{target}#{sep}#{pieces.query}/:json"
  end

  ID_PATTERN = /\/(\d+)\//
  def self.move_id_to_query(pieces)
    match = ID_PATTERN.match pieces.path
    if match
      sep = pieces.query.empty? ? "" : "&"
      pieces.query = "#{sep}#{PK_COLUMN_NAME}=#{match[1]}"
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

class GeneralBase < Flexirest::Base
  verbose true
  base_url Rails.application.config.htsql_server_url
  after_request :fix_names

  private

  def fix_names(name, response)
    # HTSQL returns it as "application/javascript",
    # but Flexirest throws ResponseParseException for that
    response.response_headers["content-type"] = "application/json"
  end
end
