require 'rest-client'
require 'base64'

class ActivitiesController < ApplicationController

  def index
    @user_data = fit_data
  end

  def show
    @user_data = fit_data
  end

  private

  def fit_data(date: Date.today)
    @user_id = "#{current_user.uid}"
    string = "Bearer #{current_user.access_token}"
    response = RestClient.get "https://api.fitbit.com/1/user/#{@user_id}/profile.json", {Authorization: string, Host: "api.fitbit.com", Connection: "Keep-Alive"}
    output = JSON.parse(response)
  end




end
