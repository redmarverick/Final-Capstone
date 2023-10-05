class CurrentUserController < ApplicationController
  before_action :authenticate_user!, only: [:index]
  def index
    if current_user
      render json: { status: 200 }
    else
      render json: { status: 401 }, status: :unauthorized
    end
  end
end
