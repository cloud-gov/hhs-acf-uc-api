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
          begin
            public_key = OpenSSL::PKey::RSA.new(File.read('keys/public.key'))
            auth_header = request.headers['Authorization'] and
              token = auth_header.split(' ').last and
                ::JWT.decode(token, public_key, true, { :algorithm => 'RS512' })[0]
          rescue
            nil
          end
        else
          nil
        end
      end
    end
  end
end
