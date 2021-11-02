class ApplicationController < ActionController::API
  respond_to :json

  include Pundit
  include ActionController::MimeResponds
end
