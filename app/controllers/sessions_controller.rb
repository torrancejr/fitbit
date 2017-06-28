class SessionsController < ApplicationController

  def create
    user = User.find_or_create_from_omniauth(ENV["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to activities_new_path
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
