class UsersController < ApplicationController
	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(:firstname=>params[:user][:firstname], :lastname=>params[:user][:lastname], :designation=>params[:user][:designation], :origin=>params[:user][:origin])
		#binding.pry
		if @user.valid?
		@user.save
		redirect_to user_path(@user)
	else
		render'new'
end
end
def show
	#binding.pry
	@user = User.find(params[:id])
end
	
end
