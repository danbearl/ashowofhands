class UserSessionsController < ApplicationController
  expose(:user) { User.find_by_email(params[:email]) }

  def create
    if user && user.authenticate(params[:password])
      sign_in(user)
      flash[:notice] = "Logged in successfully!"
      redirect_back_or_to(:root)
    else
      flash.now.alert = "Your email and password do not match."
      render :new
    end
  end

  def destroy
    sign_out
    redirect_to(:root)
  end
end
