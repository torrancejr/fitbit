class ProfilesController < ApplicationController
  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    @profile.user = current_user
    @profile.save
    redirect_to '/activites/index'
  end

  private

  def profile_params
    params.require(:profile).permit(:provider, :access_token, :refresh_token, :timezone, :expires_at)
  end
end
