class SessionController < ApplicationController
  def create
    user = User.find_by(username: params[:username])
    if user.authenticate(params[:password]) && !!user
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      flash[:errors] = ["Incorrect Username and/or Password"]
      redirect_to login_path
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end
end
