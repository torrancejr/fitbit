require 'rest-client'

class FitbitdatumController < ApplicationController

def index
end

def show
  @user_friends = friend_data
  @user_challenge = leaderboard_data
end


private
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
