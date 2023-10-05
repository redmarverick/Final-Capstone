class CarsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create, :show, :update, :destroy]
  before_action :find_car, only: [:show, :update, :destroy]

  def index
    @cars = Car.all
    render json: @cars
  end

  def show
    render json: @car
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      render json: { message: 'Car created successfully' }, status: :created
    else
      render json: @car.errors.full_messages, status: :unprocessable_entity
    end
  end

  def update
    field_name = params[:field_name]
    new_value = params[:new_value]

    if @car.update(field_name => new_value)
      render json: { message: 'Information updated successfully' }
    else
      render json: @car.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @car.destroy
    render json: { message: 'Car deleted successfully' }
  end

  private

  def car_params
    params.require(:car).permit(:name, :description, :photo, :price)
  end

  def find_car
    @car = Car.find(params[:id])
  end
end
