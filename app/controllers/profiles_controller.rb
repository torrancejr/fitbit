class ProfilesController < ApplicationController
  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    @profile.user = current_user
    @profile.save
    redirect_to '/activities/show'
  end

  private

  def profile_params
    params.require(:profile).permit(:provider, :uid, :name, :email, :user_id)
  end
end
