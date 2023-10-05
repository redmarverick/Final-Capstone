class ReservationsController < ApplicationController
  skip_before_action :verify_authenticity_token
  #before_action :authenticate_user!, only: [:index]
  before_action :set_reserved, only: [:show, :update, :destroy]

  def index
    user_id = params[:user_id]
    user = User.find_by(id: user_id)

    if user
      @reservations = user.reservations.includes(:car).all
      render json: { cars_reservations: @reservations.as_json(include: :car) }
    else
      render json: { message: "User not found" }, status: :not_found
    end
  end

  def create
    @reserved = Reservation.new(reservation_params)
    if @reserved.save
      render json: { message: 'Car reserved' }
    else
      render json: { error: @reserved.errors.full_messages }, status:404
    end
  end

  def show
    render json: @reserved, status: :ok
  end

  def update
    if @reserved.update(reservation_params)
      render json: { message: 'Reservation updated successfully' }, status: :ok
    else
      render json: { error: @reserved.errors.full_messages }, status:404
    end
  end

  def destroy
    if @reserved.destroy
      render json: { message: 'Reservation deleted successfully' }
    else
      render json: { errors: @reserved.errors.full_messages }, status:404
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:user_id, :car_id, :city, :date)
  end

  def set_reserved
    @reserved = Reservation.find(params[:id])
  end
end
