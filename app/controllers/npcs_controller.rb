class NpcsController < ApplicationController
  def index
    npcs = Npc.all
    render json: npcs.as_json
  end

  def create
    npc = Npc.new(
      name: params["name"],
      race: params["race"],
      api_class: params["api_class"],
      alignment: params["alignment"],
      level: params["level"],
      campaign_id: params["campaign_id"],
    )
    npc.save
    render json: npc.as_json
  end

  def show
    npc = Npc.find_by(id: params[:id])
    render json: npc.as_json
  end

  def update
    npc = Npc.find_by(id: params[:id])
    npc.name = params[:name] || npc.name
    npc.race = params[:race] || npc.race
    npc.api_class = params[:api_class] || npc.api_class
    npc.alignment = params[:alignment] || npc.alignment
    npc.level = params[:level] || npc.level
    npc.campaign_id = params[:campaign_id] || npc.campaign_id
    npc.save
    render json: npc.as_json
  end

  def destroy
    npc = Npc.find_by(id: params[:id])
    npc.destroy
    render json: { message: "NPC absolutely obliterated. Hope you feel good about yourself." }
  end
end
