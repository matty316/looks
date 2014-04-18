class HomeController < ApplicationController
  def index
    if user_signed_in?
      @user = current_user
      @items = @user.items
    end
  end

  def about
  end

  def contact
  end
end
