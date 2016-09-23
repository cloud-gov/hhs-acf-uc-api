class AuthenticationStrategy
  def self.authenticate?(request)
    if request.headers['Authorization'].nil?
      raise AuthenticationError.new("No authorization header")
    end

    begin
      public_key = OpenSSL::PKey::RSA.new(File.read("keys/public.key"))
      raw_token = request.headers["Authorization"].split(" ").last
      token = JWT.decode(raw_token, public_key, true, { :algorithm => "RS512" })
      if token.length > 0
        if Date.parse(token[0]["expires"]).past?
          raise Exception.new('Token is expired')
        end
      end
      true
    rescue Exception => error
      raise AuthenticationError.new(error.message)
    end
  end

  class AuthenticationError < ArgumentError
  end
end
