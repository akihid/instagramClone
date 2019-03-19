class ProfilesController < ApplicationController
  def new
    @profile = Profile.new
  end
  def create
    @profile = Profile.new(set_profile_param)
    @profile.user_id = current_user.id
    if @profile.save
      redirect_to profile_path(@profile.id)
    else
      render 'new'
    end
  end
  def edit
    @profile = Profile.find_by(user_id:current_user.id)
  end
  def update
    @profile = Profile.find_by(user_id:current_user.id)
    if @profile.update(set_profile_param)
      redirect_to profile_path(@profile.id)
    else
      render 'edit'
    end
  end

  def show
    @profile = Profile.find_by(user_id:current_user.id)
  end
  def destroy
  end

  private

  def set_profile_param
    params.require(:profile).permit(:content , :gender , :age , :picture , :picture_cache)
  end

end
