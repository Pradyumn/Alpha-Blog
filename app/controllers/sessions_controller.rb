class SessionsController < ApplicationController
  def new
  
  end
  
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:success] = "You have been successfully logged in"
      redirect_to user_path(user)
    else
      flash[:danger] = "Something went wrong with your login details"
      render 'new'
    end
  end
  
  def destroy
    session[:user_id] = nil
    flash[:success] = "You have been successfully logged out"
    redirect_to root_path
  end
end