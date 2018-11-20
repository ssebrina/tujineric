class UsersController < ApplicationController
  
  def list
  	@users = User.all
  end

end
