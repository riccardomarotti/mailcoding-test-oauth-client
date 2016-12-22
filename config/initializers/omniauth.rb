require File.expand_path('lib/omniauth/strategies/mailcoding', Rails.root)

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :mailcoding, 'e67752a4f3193b63a54282dcfd3703a034680d764f011ee41f2a08b64bb08e4f', '5746747c58ec54028ec1956c0d4301c980c565df5ea744d9aad0d053ea3bb416'
end
