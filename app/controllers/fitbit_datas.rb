require 'rest-client'

class FitbitDatasController < ApplicationController
  def index
  render :file => "#{Rails.root}/app/assets/javascripts/data.json",
    :content_type => 'application/json',
    :layout => false
  end
end
