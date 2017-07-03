class Api::V1::FitDataController < ApplicationController
  def index
    render json: { fitdata: FitData.all }
  end
end
