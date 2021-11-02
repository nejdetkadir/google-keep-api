class ApplicationController < ActionController::API
  respond_to :json

  include Pundit
  include ActionController::MimeResponds

  def handle_error_messages(model)
    {
      errors: model.errors,
      messages: model.errors.full_messages
    }
  end
end
