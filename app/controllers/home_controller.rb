class HomeController < ApplicationController
  def top
    @users = User.all
  end
  
  def about
  end
  
end
