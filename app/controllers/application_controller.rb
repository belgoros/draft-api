class ApplicationController < ActionController::API
  include ActionController::MimeResponds

  def respond_with_errors(object)
    render jsonapi: { errors: ErrorSerializer.serialize(object) }, status: :unprocessable_entity
  end
end
