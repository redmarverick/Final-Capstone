class Api::PasswordsController < Devise::PasswordsController
  skip_before_action :verify_authenticity_token, only: [:forgot, :reset]
  # POST /resource/password/forgot
  def forgot
    # Find the user by email
    user = User.find_by(email: params[:email])

    if user.present?
      # Generate a password reset token and send an email
      user.send_reset_password_instructions

      render json: { message: 'Password reset instructions sent.' }, status: :ok
    else
      render json: { error: 'Email not found.' }, status: :not_found
    end
  end

  def reset
    # Find the user by reset password token
    user = User.find_by(reset_password_token: params[:reset_password_token])

    if user && user.reset_password_period_valid?
      # Reset the user's password
      user.reset_password(params[:password], params[:password_confirmation])

      render json: { message: 'Password reset successful.' }, status: :ok
    else
      render json: { error: 'Invalid or expired reset token.' }, status: :unprocessable_entity
    end
  end
end
