class SessionsController < ApplicationController
  def show
    @user = User.find_by id: params[:id]
  end
def new 
end

 
def create

  user = User.find_by name: params[:session][:name].downcase
  if user && user.authenticate(params[:session][:password])
    flash[:success] = "Login success"
    log_in user
    redirect_to truyens_path
    #TODO save user infor into session
  else
    flash[:danger] = "Invalid email/password combination"
    render :new
  end
end




 

def destroy
  log_out
  flash[:success] = "You are logged out"
  redirect_to login_path
end
end
