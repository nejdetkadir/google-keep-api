class Users::RegistrationsController < Devise::RegistrationsController
  respond_to :json
  before_action :configure_sign_up_params, only: [:create]

  private

  def respond_with(resource, _opts = {})
    register_success(resource) && return if resource.persisted?

    register_failed(resource)
  end

  def register_success(resource)
    render json: resource, status: :created
  end

  def register_failed(resource)
    render json: {  errors: resource.errors }, status: :unprocessable_entity
  end

  protected

  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:fullname])
  end
end