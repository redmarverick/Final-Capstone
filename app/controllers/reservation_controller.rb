class ReservationController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create]
  before_action :authenticate_user!, only: [:index]
  def index
    @reservations = Reservation.find_by(user_id: params[:user_id])
    render json: {cars_reservations: @reservations}
  end
end
