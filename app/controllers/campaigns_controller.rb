class CampaignsController < ApplicationController
  before_action :authenticate_user, only: [:create, :update, :destroy]

  def index
    @campaigns = Campaign.all
    render template: "campaigns/index"
  end

  def create
    campaign = Campaign.new(
      user_id: current_user.id,
      name: params["name"],
      description: params["description"],
    )
    if campaign.save
      render json: campaign.as_json
    else
      render json: { errors: campaign.errors.full_messages }, status: 422
    end
  end

  def show
    campaign = Campaign.find_by(id: params[:id])
    render json: campaign.as_json
  end

  def update
    campaign = Campaign.find_by(id: params[:id])
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
