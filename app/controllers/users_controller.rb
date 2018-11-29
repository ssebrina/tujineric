class UsersController < ApplicationController
  
  def list
  	@users = User.all
  end

  def registration
  end

  def create

  	u = Users.new
    u.email = params[:email]
    u.password = params[:password]
    u.save

  	redirect_to '/users/list'
  end

  def login
  end

  def perform_login
  	 authenticate = User.authenticate(params[:email], params[:password])
      if authenticate == false
      	redirect_to '/login'
      else

		  session[:authenticate] = true
	      redirect_to '/users/list'
	  end
  end

  # def destroy
  #   session[:current_user_id] = nil
  #   flash[:notice] = "You have successfully logged out."
  #   redirect_to '/users/list'
  # end

  def index
  end

  def sign_up
  	@user = User.new
  end

  def signup_form
  	 params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  	 redirect_to '/users/list'
  	end

end

