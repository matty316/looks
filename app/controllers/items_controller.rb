class ItemsController < ApplicationController
  def index
  end

  def new
  end

  def create
    @user = User.find(params[:user_id])
    if @item = @user.items.create(item_params)
      redirect_to root_path
    else
      render root_path
    end
  end

  def show
    @user = User.find(params[:user_id])
    @item = @user.items.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
    @user = User.find(params[:user_id])
    @item = @user.items.find(params[:id])
    @item.destroy
    redirect_to root_path
  end

  private

    def item_params
      params.require(:item).permit(:name, :description, :image, :store)
    end
end
