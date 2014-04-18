class FeedController < ApplicationController
  def index
    @items = Item.all
  end
end
