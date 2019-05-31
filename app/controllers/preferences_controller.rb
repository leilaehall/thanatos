class PreferencesController < ApplicationController
  before_action :set_preference, only: [:basics, :funeral]

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
      :embalming,
      :process,
      :display
    )
  end
end
