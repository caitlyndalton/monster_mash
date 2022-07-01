class CreaturesController < ApplicationController
  def index
    creatures = Creature.all
    render json: creatures.as_json
  end

  def create
    creature = Creature.new(
      api_index: params["api_index"],
      api_type: params["api_type"],
      name: params["name"],
      campaign_id: params["campaign_id"],
    )
    creature.save
    render json: creature.as_json
  end

  def show
    creature = Creature.find_by(id: params[:id])
    render json: creature.as_json
  end

  def update
    creature = Creature.find_by(id: params[:id])
    creature.api_index = params[:api_index] || creature.api_index
    creature.api_type = params[:api_type] || creature.api_type
    creature.name = params[:name] || creature.name
    creature.campaign_id = params[:campaign_id] || creature.campaign_id
    creature.save
    render json: creature.as_json
  end

  def destroy
    creature = Creature.find_by(id: params[:id])
    creature.destroy
    render json: { message: "Creature absolutely obliterated. Hope you feel good about yourself." }
  end
end
