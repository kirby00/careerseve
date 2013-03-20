class UsersController < ApplicationController
  
  def index 
  	@users = User.all
    @users_count = User.count  	  
  end

  def new
  	@user = User.new(params[:user])
  end

  def create
  	@user = User.new(params[:user])
  	if @user.save
  		redirect_to @user
  	end
  end

  def show
    @user = User.find_by_id(params[:id])
  end

  def edit
  	@user = User.find_by_id(params[:id])
  end

end
