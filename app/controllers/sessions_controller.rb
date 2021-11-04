class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
    else
      flash.now[:danger] = 'Invalid user/pass combo !'
      render 'new'
    end
  end

  def destroy
  end
end
