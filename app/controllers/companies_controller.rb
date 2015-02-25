class CompaniesController < ApplicationController
  def index
  	@companies = Company.page(params[:page]).per(5)
  end

  def show
  	@company = Company.find(params[:id])
  end

end
