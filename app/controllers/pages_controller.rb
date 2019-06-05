class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :scroll]

  def home
  end

  def scroll
  end
end
