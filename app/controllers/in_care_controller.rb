class InCareController < ApplicationController
  def count
    render json: {count: Query::InCare.new(params).count }
  end
end
