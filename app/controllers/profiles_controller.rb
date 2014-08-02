class ProfilesController < ApplicationController
  def show
    @profile = Profile.find_by user_id: current_user.id
  end

  def edit
    @profile = Profile.find_by user_id: current_user.id
  end

  def update
    @profile= Profile.find_by user_id: current_user.id
    @profile.update(profile_params)

  end

  private
    def profile_params
      params.require(:profile).permit(:your_name,:location)
    end

end
