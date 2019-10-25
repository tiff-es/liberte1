
class SessionsController < ApplicationController

  def login
  end

  def process_login
    user = Customer.find_by(username: params[:username])
    if user
      session[:user_id] = user.id
      redirect_to categories_path
    else
      flash.now["notice"] = "No user found with this username."
      render :login
    end
  end
end
