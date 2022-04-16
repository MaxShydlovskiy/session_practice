class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
       session[:user_id] = @user.id
       redirect_to root_path
    else
       redirect_to '/login'
    end
  end

  def login
  end

  def welcome
    @users = User.all
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end
