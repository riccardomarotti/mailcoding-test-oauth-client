require File.expand_path('lib/omniauth/strategies/mailcoding', Rails.root)

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :mailcoding, '2df1bafb55b49976ea2cf7d1268a028c519e06c34e09cb2f3375da6065ae6616', '2080a57d0de0cd2acc3d3f78dce4d305251f8ec736efb44ab9e081b9245e4c56'
end

OmniAuth.config.on_failure = Proc.new do |env|
  ApplicationController.action(:auth_failure).call(env)
end
