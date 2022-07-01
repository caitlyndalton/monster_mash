class CampaignsController < ApplicationController
  before_action :authenticate_user, only: [:create, :update, :destroy]

  def index
    campaigns = Campaign.all
    render json: campaigns.as_json
  end

  def create
    campaign = Campaign.new(
      user_id: params["user_id"],
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
    campaign.user_id = params[:user_id] || campaign.user_id
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
