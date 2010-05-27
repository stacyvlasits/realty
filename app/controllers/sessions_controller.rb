class SessionsController < ApplicationController
  def create
    session[:username] = params[:username]
    session[:password] = params[:password]
    if admin?
      flash[:notice] = "Successfully logged in"
      redirect_to home_path
    else
      flash[:notice] = "Admin password incorrect"
      redirect_to home_path
    end
  end

def destroy
    reset_session
    flash[:notice] = "Successfully logged out"
    redirect_to home_path
  end
end
