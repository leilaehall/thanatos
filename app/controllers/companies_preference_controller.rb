class CompaniesPreferenceController < ApplicationController
  def create
    user_funeral_preference = current_user.funeral_preferences.first
    selected_company = Company.find(params[:companies_preference][:company_id])

    if !selected_company.nil?
      company_preference = CompanyPreference.create(funeral_preference: user_funeral_preference, company: selected_company)
      if company_preference.save
        redirect_to companies_path
      else
        redirect_to company_path(company)
      end
    end
  end

  def destroy
    @company_preference = CompanyPreference.find(params[:id])
    @company_preference.destroy

    redirect_to companies_path
  end
end
