class DailyStatisticsController < ApplicationController
  def count
    render json: Query::DailyStatistics.new(params).counts
  end
end

