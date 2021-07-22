class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      flash[:errors] = @user.errors.full_messages
      render :new
    end
  end

  def show

  end

  def edit

  end

  def update
  end

  def destroy
  end

  private
  
  def user_params
    params.require(:user).permit(:username, :email, :name, :password, :password_confirmation)
  end

  def auth
    request.env['omniauth.auth']
  end


end
