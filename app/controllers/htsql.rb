require 'json'
require 'pry'

class Htsql
  include HTTParty
  base_uri Rails.application.config.htsql_server_url

  # def initialize(u, p)
  #   @auth = {username: u, password: p}
  # end
  #

  # which can be :friends, :user or :public
  # options[:query] can be things like since, since_id, count, etc.

  def enrollments(query = {})
    # query.merge!({basic_auth: @auth})
    path = "/uac_info%7B*,/uac_program_info,/uac_sponsor_list%7D"
    headers = { Accept: 'x-htsql/json' }
    result = self.class.get(path, { query: query, headers: headers })
    (JSON.parse result)['uac_info']
  end
end
