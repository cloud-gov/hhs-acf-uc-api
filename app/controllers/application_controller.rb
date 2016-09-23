class ApplicationController < ActionController::API

  def authenticate_request!
    return if AuthenticationStrategy.authenticate?(request)
    raise AuthenticationStrategy::AuthenticationError.new("Not authenticated!")
  end

  def render_401(error)
    render :body => error.message, :status => 401
  end

  before_action :authenticate_request!
  rescue_from AuthenticationStrategy::AuthenticationError, with: :render_401
end
