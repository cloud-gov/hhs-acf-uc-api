require 'enrollments_helper'

class InCareController < GeneralEnrollmentsController
  before_action :authenticate_user!

  def correct_params
    params["in_care"] = true
  end

  def count
    self.query
    render json: {:in_care => @enrollments.count}
  end

end
