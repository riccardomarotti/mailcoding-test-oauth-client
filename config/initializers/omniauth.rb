require File.expand_path('lib/omniauth/strategies/mailcoding', Rails.root)

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :mailcoding, 'f7daf227566a00f2d04227b3916eef38eb8c7492fb1f1a172253dcf92e95783b', 'ac0e17f076aba4c7018846943cedfaa8bb1816e8429a6804b7df77ebb1120254'
end

OmniAuth.config.on_failure = Proc.new do |env|
  ApplicationController.action(:auth_failure).call(env)
end
