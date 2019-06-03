class SocialPlatformsController < ApplicationController
  def index
    @social_platform = SocialPlatform.new
  end

  def create
    @social_platform = SocialPlatform.new(social_platform_params)
    @social_platform.user = current_user

    if @social_platform.save
      flash[:notice] = "Your preference have been saved."
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
    params.require(:social_platform).permit(:username, :name, :choice)
  end
end
