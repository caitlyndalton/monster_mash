class ItemsController < ApplicationController
  def index
    items = Item.all
    render json: items.as_json
  end

  def create
    item = Item.new(
      api_index: params["api_index"],
      equipment_category: params["equipment_category"],
      name: params["name"],
      campaign_id: params["campaign_id"],
    )
    item.save
    render json: item.as_json
  end

  def show
    item = Item.find_by(id: params[:id])
    render json: item.as_json
  end

  def update
    item = Item.find_by(id: params[:id])
    item.api_index = params[:api_index] || item.api_index
    item.equipment_category = params[:equipment_category] || item.equipment_category
    item.name = params[:name] || item.name
    item.campaign_id = params[:campaign_id] || item.campaign_id
    item.save
    render json: item.as_json
  end

  def destroy
    item = Item.find_by(id: params[:id])
    item.destroy
    render json: { message: "Item absolutely obliterated. Hope you feel good about yourself." }
  end
end
