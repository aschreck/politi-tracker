class SessionsController < ApplicationController

  def new
  end

  def create
   user = User.find_by(email: params["email"]) 
   
   if user && user.authenticate(params[:password])
    session[:user_id] = user.id
    redirect_to '/dashboard'
   else 
    redirect_to '/login'
   end 
  end

  def destroy
  end

end