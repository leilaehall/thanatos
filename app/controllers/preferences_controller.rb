class PreferencesController < ApplicationController
  def basics
  end

  def funeral
    if current_user.funeral_preferences
      @preference = current_user.funeral_preferences.first
    else
      @preference = FuneralPreference.new
    end
  end
end
