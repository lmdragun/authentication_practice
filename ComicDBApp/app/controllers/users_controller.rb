class UsersController < ApplicationController
	# before_action :require_signin, except: [:new, :create]

	def index
		@users = User.all
	end

	def show
		@user = User.find( params[:id] )
		@comics = @user.comics.all
		@companies = Company.all
		@comic = @user.comics.new
	end

	def new
			@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			sign_in @user
			redirect_to @user
		else
			render :new
		end
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private
		def user_params
			params.require(:user).permit(
				:name,
				:email,
				:password,
				:password_confirmation
				)
		end

end
