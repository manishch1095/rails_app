class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :null_session

  rescue_from Pundit::NotAuthorizedError do |_exception|
    render file: 'errors/error_403', layout: 'error', status: 403
  end
end
