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
    if !!request.env['omniauth.auth']
      user = user_from_google
      redirect_to user_path(user)
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end

  private
    def user_from_google
      user = User.find_or_create_by(email: request.env['omniauth.auth']["info"]["email"]) do |user|
        user.username = "#{request.env['omniauth.auth']["info"]["first_name"]}-#{SecureRandom.hex(3)}"
        user.name = request.env['omniauth.auth']["info"]["name"]
        user.email = request.env['omniauth.auth']["info"]["unverified_email"]
        user.password = request.env['omniauth.auth']["info"]["unverified_email"]
        user.img = request.env['omniauth.auth']["info"]["image"]
        user.oauth = request.env['omniauth.auth']["uid"]
      end
    user.valid? ? session[:user_id] = user.id : user_from_google
    user
    end
end
