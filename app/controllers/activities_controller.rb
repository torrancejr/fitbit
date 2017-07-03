require 'rest-client'
require 'base64'

class ActivitiesController < ApplicationController
  



  # private
  #
  # def fit_data(date: Date.today)
  #   binding.pry
  #   string = "Bearer #{current_user.access_token}"
  #   response = RestClient.get "https://api.fitbit.com/1/user/#{current_user.uid}/profile.json", {Authorization: string, Host: "api.fitbit.com", X-Target-URI: "https://api.fitbit.com", Connection: "Keep-Alive"}
  #   binding.pry
  #   output = JSON.parse(response)
  # end


end

# curl -i -X GET \
#    -H "Authorization:Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiI1U1ZDRzQiLCJhdWQiOiIyMjhUTVAiLCJpc3MiOiJGaXRiaXQiLCJ0eXAiOiJhY2Nlc3NfdG9rZW4iLCJzY29wZXMiOiJ3aHIgd251dCB3cHJvIHdzbGUgd3dlaSB3c29jIHdhY3Qgd3NldCB3bG9jIiwiZXhwIjoxNDk4OTM4MTQ0LCJpYXQiOjE0OTg5MDkzNDR9.HAkgT8Litl4qL6i9eoMx4yOpsC0gY4w3hcJT4Czo_kY" \
#    -H "Host:api.fitbit.com" \
#    -H "X-Target-URI:https://api.fitbit.com" \
#    -H "Connection:Keep-Alive" \
#  'https://api.fitbit.com/1/user/-/profile.json'
