class DashboardController < ApplicationController
# change after coding done : remove SKIP!
   skip_before_action :authenticate_user!
  def index
    get_progress
  end

  def get_progress
    @progress = '10%'
  end
end
