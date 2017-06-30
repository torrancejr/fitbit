require 'rest-client'

class FitbitApiController < ApplicationController

    def fit_data
      response = RestClient.get "https://api.fitbit.com/1/user/#{user_id}/profile.json"
      output = JSON.parse(response)
    end


    # def fit_datas(user_id: '-')
    #   return gets("https://api.fitbit.com/1/user/#{user_id}/profile.json")
    # end
  end

#   GET /1/user/-/activities/date/2015-03-01.json HTTP/1.1
# Authorization:
# Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiI1U1ZDRzQiLCJhdWQiOiIyMjhUTVAiLCJpc3MiOiJGaXRiaXQiLCJ0eXAiOiJhY2Nlc3NfdG9rZW4iLCJzY29wZXMiOiJ3aHIgd251dCB3cHJvIHdzbGUgd3dlaSB3c29jIHdhY3Qgd3NldCB3bG9jIiwiZXhwIjoxNDk4ODE3ODk5LCJpYXQiOjE0OTg3ODkwOTl9.dsfIjh4d19lVVuZTF9VUv_cjMUP5scojKNjxYKMSAnI
# Host:
# api.fitbit.com
# X-Target-URI:
# https://api.fitbit.com
# Connection:
# Keep-Alive
