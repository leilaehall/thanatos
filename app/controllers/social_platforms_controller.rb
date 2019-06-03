class SocialPlatformsController < ApplicationController
  def index
    @social_platform = SocialPlatform.new
  end

  def create
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
