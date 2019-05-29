class CompaniesController < ApplicationController
  def index
    if params[:query].present?
      sql_query = "name ILIKE :query OR category ILIKE :query OR address ILIKE :query"
      @companies = Company.where(sql_query, query: "%#{params[:query]}%")
    else
      @companies = Company.all
    end
  end
end
