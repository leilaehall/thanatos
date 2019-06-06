
class DashboardController < ApplicationController
# change after coding done : remove SKIP!
  skip_before_action :authenticate_user!
  def index
    get_progress
  end

  def summary
    #@user = User.find(params[:id])
    @delegates = Delegate.where(user: current_user)
    @preference = current_user.funeral_preferences
    @messages = Message.where(user: current_user)
    @social_platforms = SocialPlatform.where(user: current_user)


    @companies = []

    current_user.company_preferences.each do |p|
      @companies << Company.where(id: p.company_id).first if Company.where(id: p.company_id)
    end

    respond_to do |format|
      format.html { render :summary }

    end
  end

  def get_progress
    @progress = 0
    if current_user.delegates_complete? == true
      @progress += 10
    end
    if current_user.basics_complete? == true
      @progress += 10
    end
    if current_user.ceremony_complete? == true
      @progress += 10
    end
    if current_user.business_selection_complete? == true
      @progress += 10
    end
    if current_user.messages_complete? == true
      @progress += 10
    end
    if current_user.social_media_complete? == true
      @progress += 10
    end
    if current_user.banking_complete? == true
      @progress += 10
    end
    if current_user.insurance_complete? == true
      @progress += 10
    end
    if current_user.subscriptions_complete? == true
      @progress += 10
    end
    if current_user.my_will_complete? == true
      @progress += 10
    end
  end


end
