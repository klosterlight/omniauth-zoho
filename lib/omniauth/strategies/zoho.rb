require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Zoho < OmniAuth::Strategies::OAuth2
      option :name, :zoho

      option :client_options, {
        site: "https://accounts.zoho.com/oauth/v2/auth",
        client_id: ENV["ZOHO_CLIENT_ID"],
        client_secret: ENV["ZOHO_CLIENT_SECRET"],
        access_type: "online",
        redirect_uri: "https://app.npotencia.com/auth/zoho/callback",
        response_type: "code"
      }

      uid { raw_info['code'] }

      info do
        {
          code: raw_info["code"],
          location: raw_info["location"],
          "accounts-server" => raw_info["accounts-server"]
        }
      end

      extra do
        {
          raw_info: raw_info
        }
      end

      def raw_info
        @raw_info ||= access_token.get('/me').parsed
      end
    end
  end
end

