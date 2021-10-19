class SessionsController < ApplicationController
  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:success] = "Welcome, #{user.first_name}!"

      redirect_to dashboard_path
    else
      flash[:error] = 'Error: Please make sure your credentials are correct.'

      redirect_to root_path
    end
  end

  def destroy
    session.clear

    redirect_to root_path
  end
end
