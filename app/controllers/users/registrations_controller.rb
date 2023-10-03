class Users::RegistrationsController < Devise::RegistrationsController
  skip_before_action :verify_authenticity_token, only: :create
  respond_to :json

  def create
    build_resource(sign_up_params)
    if resource.save
      render json: { status: 200, user: resource, message: 'User created successfully.' }
      sign_in(resource)
    else
      render json: { errors: resource.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def sign_up_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
