class AuthenticationStrategy
  def self.authenticate?(request)
    if request.headers['Authorization'].nil?
      raise AuthenticationError.new("No authorization header")
    end

    begin
      hmac_secret = ENV["AUTH_HMAC_SECRET"]
      raw_token = request.headers["Authorization"].split(" ").last
      token = JWT.decode(raw_token, hmac_secret, true, { :algorithm => "HS512" })
      true
    rescue Exception => error
      raise AuthenticationError.new(error.message)
    end
  end

  class AuthenticationError < ArgumentError
  end
end
