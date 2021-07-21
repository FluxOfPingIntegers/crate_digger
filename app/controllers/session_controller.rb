class SessionController < ApplicationController
  def create
    user = User.find_by(username: params[:username])
    if !!user
      if user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to user_path(user)
      else
        flash[:errors] = ["Incorrect Username and/or Password"]
        redirect_to login_path
      end
    else
      flash[:errors] = ["Incorrect Username and/or Password"]
      redirect_to login_path
    end
  end

  
  def google
    byebug
  end

  def destroy
    session.clear
    redirect_to root_path
  end
end
