require 'JWT'
require 'openssl'

module Devise
  module Strategies
    class JWTStrategy < Base
      def valid?
        !request.headers['Authorization'].nil?
      end

      def authenticate!
        if claims
          success!(User.new(claims))
        else
          fail!('Could not get claim')
        end
      end

      private

      def claims
        if File.exist?('keys/public.key')
          public_key = OpenSSL::PKey::RSA.new(File.read('keys/public.key'))
          #private_key = OpenSSL::PKey::RSA.new(File.read('keys/private.key'))
          #thang = JWT.encode({:role => 'admin', :expires => 24.hours.from_now}, private_key, 'RS512');
          #p thang

          auth_header = request.headers['Authorization'] and
            token = auth_header.split(' ').last and
              ::JWT.decode(token, public_key, true, { :algorithm => 'RS512' })[0]
        else
          nil
        end
      end
    end
  end
end
