class DailyStatisticsController < ApplicationController
  def index
    render json: Query::DailyStatistics.new(params).thirty_day_counts
  end

  def count
    render json: Query::DailyStatistics.new(params).counts
  end
end

