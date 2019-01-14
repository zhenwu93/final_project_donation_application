class Api::V1::DonationsController < ApplicationController
  before_action :find_donation, only: [:update]

  def index
    @donations = Donation.all
    render json: @donations
  end

  def update
    @donation.update(donation_params)
    if @donation.save
      render json: @donation, status: :accepted
    else
      render json: { errors: @donation.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def create
    @donation = Donation.create(donation_params)
    if @donation.valid?
      render json: {donation: DonationSerializer.new(@donation)}, status: :created
    else
      render json: {error: 'failed to create donation'}, status: :not_acceptable
    end
  end

  private

  def donation_params
    params.require(:donation).permit(:description, :date, :avatar)
  end

  def find_donation
    @donation = Donation.find(params[:id])
  end
end
