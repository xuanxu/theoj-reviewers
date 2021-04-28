class ProfilesController < ApplicationController
  before_action :require_user
  before_action :set_current_user

  def show
  end

  def update
    if @user.update(profile_params)
      redirect_to profile_path, notice: 'Your profile was successfully updated.'
    else
      render :show
    end
  end

  def orcid
    current_user.update(orcid: request.env["omniauth.auth"].uid)
    redirect_to profile_path, notice: 'Your ORCID was successfully updated.'
  end


  private

  def set_current_user
    @user = current_user
  end

  def profile_params
    params.require(:user).permit(:first_name, :last_name, :email, :url, :affiliation, :twitter, :description)
  end
end
