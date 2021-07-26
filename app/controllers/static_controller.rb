class StaticController < ApplicationController
  
  def home
  end

  def login
    if logged_in?
      flash[:errors] = "You are already logged in!"
      redirect_to root_path
    end
  end


end
