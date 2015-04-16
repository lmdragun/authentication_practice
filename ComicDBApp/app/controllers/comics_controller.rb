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
		@user = User.find( params[:id] )
		@comic = @user.comics.new(comic_params)
		@comic.user = @user

		if @comic.save
			redirect_to @comic
		else
			render :new
		end
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
