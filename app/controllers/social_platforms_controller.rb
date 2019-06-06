class SocialPlatformsController < ApplicationController
  def index
    @social_platform = SocialPlatform.new
    @social_platforms = SocialPlatform.where(user: current_user)
  end

  def create
    @social_platform = SocialPlatform.new(social_platform_params)
    @social_platform.user = current_user

    if @social_platform.save
      flash[:notice] = "Your preferences have been saved."
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def update
  end

  def destroy
  end

  private

  def social_platform_params
    params.require(:social_platform).permit(:username, :name, :choice, :channel)
  end
end
