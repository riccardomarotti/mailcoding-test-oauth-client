Rails.application.routes.draw do
  root to: redirect('/auth/mailcoding')

  get '/auth/:provider/callback' => 'application#authentication_callback'
end
