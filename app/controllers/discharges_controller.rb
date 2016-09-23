class DischargesController < ApplicationController
  def index
    render json: Query::Discharges.new(params).all
  end

  def count
    render json: {count: Query::Discharges.new(params).count }
  end
end
