class SessionsController < ApplicationController
  def new
  end


  def create
    binding.pry
    auth_hash = request.env['omniauth.auth']

    render :text => auth_hash.inspect
  end


  def failure
  end
end
