class SecretMenuItemsController < ApplicationController
  def index
    @secretMenuItems = SecretMenuItem.all
    render json: @secretMenuItems
  end

  def show
    @secretMenuItem = SecretMenuItem.find(params[:id])
    render json: @secretMenuItem
  end

  def create
    @secretMenuItem = SecretMenuItem.create(menu_item_params)
    render json: @secretMenuItem
  end

  def update
    @secretMenuItem = SecretMenuItem.find(params[:id])
    @secretMenuItem.update(menu_item_params)
    render json: @secretMenuItem
  end

  def destroy
    @secretMenuItems = SecretMenuItem.all
    @secretMenuItem = SecretMenuItem.find(params[:id])
    @secretMenuItem.destroy
    render json: @secretMenuItems
  end

  private
  def menu_item_params
    params.require(:secret_menu_item).permit(:menu_name, :restaurant_name, :menu_description)
  end
end
