class ComicsController < ApplicationController

	def index
		@comics = Comic.all
	end

	def show
		@comics = Comic.find( params[:id] )
	end

	def new
		@user = User.find( params[:id] )
		@comic = @user.comics.new
	end

	def create
		# @found_company = Company.all(:select => "DISTINCT(params[:name])")
		@user = @current_user
		@company = Company.find_by(name: params[:comic][:company])
		# @comic = @user.comics.new(comic_params, company: @found_company, company_id: @found_company.id)
		@comic = @company.comics.new(comic_params)
		@comic.user = @user

		# if @comic.save
		# 	redirect_to
		# else
		# 	render :new
		# end
	end


	private
		def comic_params
			params.require(:comic).permit(
				:name,
				:writer,
				:artist,
				:year,
				:img_url
				)
		end

end
