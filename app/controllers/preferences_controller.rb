class PreferencesController < ApplicationController
  def basics
  end

  def funeral
    if !current_user.funeral_preferences.empty?
      @preference = current_user.funeral_preferences.first
    else
      @preference = FuneralPreference.new
    end
  end

  def create
    @preference = FuneralPreference.new(preference_params)
    @preference.user = current_user

    if @preference.save
      flash[:notice] = "Your preference have been saved."
      redirect_to dashboard_path
    else
      render :new
    end
  end

  private

  def preference_params
    params.require(:funeral_preference).permit(
      :address,
      :guest_list,
      :music,
      :card,
      :speaker,
      :reading,
      :charity,
      :dress,
      :hairstyle,
      :make_up,
      :embalming
    )
  end
end
