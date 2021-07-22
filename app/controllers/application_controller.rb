class ApplicationController < ActionController::Base

    helper_method :current_user, :logged_in?, :signed_in, :set_user

    def current_user
      if session[:user_id]
        user = User.find(session[:user_id])
      end
    end

    def logged_in?
      !!current_user
    end

    def signed_in
      if !logged_in?
        redirect_to login_path
      end
    end

    def set_user
      if current_user == User.find(params[:id])
        @user = current_user
      else
        flash[:errors] = "Action was not authorized"
        redirect_to root_path
      end
    end
    
end
