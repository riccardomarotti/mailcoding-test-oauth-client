class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def authentication_callback
    auth = request.env['omniauth.auth']
    render json: auth.to_json
  end

  def auth_failure
    puts "Authentication failed"
    render text: "Oauth authentication failed", layout: false
  end
end
