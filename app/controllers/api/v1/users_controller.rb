class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]
  before_action :find_user, only: [:update, :show]

  def index
    @users = User.all
    render json: @users
  end

  def profile
    render json: { user: UserSerializer.new(current_user) }, status: :accepted
  end

  def show
  end

  def update
    @user.update(user_params)
    if @user.save
      render json: @user, status: :accepted
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      # byebug
      @token = encode_token(user_id: @user_id)
      # byebug
      render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
    else
      render json: {error: 'failed to create user'}, status: :not_acceptable
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :address, :email, :password, :phone_number, :username)
  end

  def find_user
    @user = User.find(params[:id])
  end
end
