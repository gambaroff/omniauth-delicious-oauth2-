require 'omniauth/strategies/oauth2'

module OmniAuth
  module Strategies
    class DeliciousOauth2 < OmniAuth::Strategies::OAuth2
      BASE_SCOPE_URL = "https://delicious.com/settings/developer"
      BASE_SCOPES = %w[profile email openid]
      DEFAULT_SCOPE = "email,profile"

      option :client_options, {
        :site          => 'https://accounts.delicious.com',
        :authorize_url => '/o/oauth2/auth',
        :token_url     => '/o/oauth2/token'
      }

      def authorize_params
        super.tap do |params|
          options[:authorize_options].each do |k|
            params[k] = request.params[k.to_s] unless [nil, ''].include?(request.params[k.to_s])
          end

          raw_scope = params[:scope] || DEFAULT_SCOPE
          scope_list = raw_scope.split(" ").map {|item| item.split(",")}.flatten
          scope_list.map! { |s| s =~ /^https?:\/\// || BASE_SCOPES.include?(s) ? s : "#{BASE_SCOPE_URL}#{s}" }
          params[:scope] = scope_list.join(" ")
          params[:access_type] = 'offline' if params[:access_type].nil?

          session['omniauth.state'] = params[:state] if params['state']
        end
      end
    end
  end
end
