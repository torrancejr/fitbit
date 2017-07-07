require 'rest-client'
require 'base64'

class FitbitdatumController < ApplicationController

  def index
    @user_data = fit_data
    @user_sleep = sleep_data
    @user_heart = heart_data
    @user_weight = weight_data
  end

  def new
    @user_friends = friend_data
    @user_challenge = leaderboard_data
  end

private
  def fit_data(date: Date.today)
    @user_id = "#{current_user.uid}"
    string = "Bearer #{current_user.access_token}"
    response = RestClient.get "https://api.fitbit.com/1/user/#{@user_id}/profile.json", {Authorization: string, Host: "api.fitbit.com", Connection: "Keep-Alive"}
    output = JSON.parse(response)
  end

  def sleep_data(date: Date.today)
    @user_id = "#{current_user.uid}"
    string = "Bearer #{current_user.access_token}"
    response = RestClient.get "https://api.fitbit.com/1/user/#{@user_id}/sleep/date/#{date}.json", {Authorization: string, Host: "api.fitbit.com", Connection: "Keep-Alive"}
    output = JSON.parse(response)
  end

  def heart_data(date: Date.today)
    @user_id = "#{current_user.uid}"
    string = "Bearer #{current_user.access_token}"
    response = RestClient.get "https://api.fitbit.com/1/user/#{@user_id}/heart/date/#{date}.json", {Authorization: string, Host: "api.fitbit.com", Connection: "Keep-Alive"}
    output = JSON.parse(response)
  end

  def weight_data(date: Date.today)
    @user_id = "#{current_user.uid}"
    string = "Bearer #{current_user.access_token}"
    response = RestClient.get "https://api.fitbit.com/1/user/#{@user_id}/body/log/weight/date/#{date}.json", {Authorization: string, Host: "api.fitbit.com", Connection: "Keep-Alive"}
    output = JSON.parse(response)
  end

  def friend_data(date: Date.today)
    @user_id = "#{current_user.uid}"
    string = "Bearer #{current_user.access_token}"
    response = RestClient.get "https://api.fitbit.com/1/user/#{@user_id}/friends.json", {Authorization: string, Host: "api.fitbit.com", Connection: "Keep-Alive"}
    output = JSON.parse(response)
  end

  def leaderboard_data(date: Date.today)
    @user_id = "#{current_user.uid}"
    string = "Bearer #{current_user.access_token}"
    response = RestClient.get "https://api.fitbit.com/1/user/#{@user_id}/friends/leaderboard.json", {Authorization: string, Host: "api.fitbit.com", Connection: "Keep-Alive"}
    output = JSON.parse(response)
  end

end
