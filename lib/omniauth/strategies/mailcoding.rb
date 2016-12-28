require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Mailcoding < OmniAuth::Strategies::OAuth2
      option :name, 'mailcoding'

      option :client_options, {
        site: "https://staging.mailcoding.eu",
        authorize_path: "/oauth/authorize"
      }

      uid do
        raw_info["id"]
      end

      info do
        {
          email: raw_info['email'],
          name: "#{raw_info['name']} #{raw_info['surname']}"
        }
      end

      extra do
        { raw_info: raw_info }
      end

      def raw_info
        @raw_info ||= access_token.get('/api/v3/user').parsed
      end
    end
  end
end
