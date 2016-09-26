class InCareController < ApplicationController
  def index
    render json: Query::InCare.new(params).all
  end

  def count
    render json: {count: Query::InCare.new(params).count }
  end
end
