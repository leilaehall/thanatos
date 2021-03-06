class CompaniesController < ApplicationController
  def index
    if params[:query].present?
      sql_query = "name ILIKE :query OR category ILIKE :query OR address ILIKE :query"
      @companies = Company.where(sql_query, query: "%#{params[:query]}%")
    else
      @companies = Company.all
    end

    @markers = @companies.map do |company|
      {
        lat: company.latitude,
        lng: company.longitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { company: company })
      }
    end
  end

  def show
    @company = Company.find(params[:id])
    @company_preference = CompanyPreference.new
    @set_company_preference = current_user.company_preferences.find_by_company_id(@company.id)

  end
end
