class PreferencesController < ApplicationController
  before_action :set_preference

  def basics

  end

  def funeral

  end

  private

  def set_preference
    @preference = current_user.funeral_preferences
    if @preference.empty?
      @preference = FuneralPreference.new
    else
      @preference = @preference.first
    end
  end
end
