class AuthController < ApplicationController
  def login
    account = Account.get(provider: auth.provider, uid: auth.uid)    
    session[:current_profile_id] = account.profile.id
    redirect_to root_url
  end

  def logout
    reset_session
    redirect_to root_url
  end

  def auth
    env['omniauth.auth']
  end
end
