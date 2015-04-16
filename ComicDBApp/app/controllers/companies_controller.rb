class CompaniesController < ApplicationController

  def index
    @companies = Company.all
  end

  def show
    @company = Company.find( params[:id] )
		@comics = @company.comics.all
  end

  def new
    @company = Company.new
  end

end
