class CompaniesController < ApplicationController
  def index
  	@companies = Company.page(params[:page]).per(5)
  end
end
