class DonationListsController < ApplicationController
  skip_before_action :authorized, only: [:index, :create]

  def index
    @donation_lists = DonationList.all
    render json: @donation_lists
  end

  def create
    @donation_list = DonationList.create(donation_list_params)
    if @donation_list.valid?
      render json: {donation_list: DonationListSerializer.new(@donation_list)}, status: :created
    else
      render json: {error: 'failed to create donation list'}, status: :not_acceptable
    end
  end

  private
  def donation_list_params
    params.require(:donation_list).permit(:id, :user_id, :donation_id)
  end

  def find_donation_list
    @donation_list = DonationList.find(params[:id])
  end

end
