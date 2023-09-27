class Users::SessionsController < Devise::SessionsController
  respond_to :json
  skip_before_action :verify_authenticity_token

  def create
    self.resource = warden.authenticate!(auth_options)
    sign_in(resource_name, resource)
    render json: { message: 'Logged in successfully.' }
  end

  def destroy
    sign_out(current_user)

    render json: { message: 'Logged off successfully.' }
  end
end
