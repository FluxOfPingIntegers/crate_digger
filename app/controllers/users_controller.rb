class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token, only: :facebook

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

  def facebook
    user = User.find_by(oauth: auth['uid'])
    if !!user
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      user = User.create(oath: auth['uid']) do |u|
        u.username = auth['info']['name']
        u.name = auth['info']['name']
        u.email = auth['info']['email']
        u.img = auth['info']['image']
      end
      session[:user_id] = user.id
      redirect_to user_path(user)
    end
  end


  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
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
