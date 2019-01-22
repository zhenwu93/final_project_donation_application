class Api::V1::DonationsController < ApplicationController
  skip_before_action :authorized, only: [:index]
  before_action :find_donation, only: [:update]

  def index
    @donations = Donation.all
    # byebug
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
    # byebug
    @donation = Donation.create(donation_params)
    # byebug
    if @donation.valid?
      # byebug
      render json: {donation: DonationSerializer.new(@donation)}, status: :created
    else
      render json: {error: 'failed to create donation'}, status: :not_acceptable
    end
  end

  private

  def donation_params
    params.require(:donation).permit(:description, :avatar)
  end

  def find_donation
    @donation = Donation.find(params[:id])
  end
end
