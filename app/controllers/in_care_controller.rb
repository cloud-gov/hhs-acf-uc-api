require 'enrollments_helper'

class InCareController < GeneralEnrollmentsController

  def correct_params
    params["in_care"] = true
  end

  def count
    self.query
    render json: {:in_care => @enrollments.count}
  end

end
