class ReferralsController < ApplicationController
  def index
    render json: Query::Referrals.new(params).all
  end

  def count
    render json: {count: Query::Referrals.new(params).count }
  end
end
