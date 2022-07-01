class CampaignsController < ApplicationController
  def index
    campaigns = Campaign.all
    render json: campaigns.as_json
  end

  def create
    campaign = Campaign.new(
      dm_id: params["dm_id"],
      name: params["name"],
      description: params["description"],
    )
    campaign.save
    render json: campaign.as_json
  end

  def show
    campaign = Campaign.find_by(id: params[:id])
    render json: campaign.as_json
  end

  def update
    campaign = Campaign.find_by(id: params[:id])
    campaign.dm_id = params[:dm_id] || campaign.dm_id
    campaign.name = params[:name] || campaign.name
    campaign.description = params[:description] || campaign.description
    campaign.save
    render json: campaign.as_json
  end

  def destroy
    campaign = Campaign.find_by(id: params[:id])
    campaign.destroy
    render json: { message: "Campaign absolutely obliterated." }
  end
end
