class SessionsController < ApplicationController
  def create
    user = User.find_by_email params[:email]
    if user
      session[:user_id] = user.id
      redirect_to viewings_path
    else
      redirect_to log_in_path, :alert => "Invalid email or password"
    end
  end
end