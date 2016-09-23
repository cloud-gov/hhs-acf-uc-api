class InCareController < EnrollmentsController
  def correct_params
    params["in_care"] = true
  end

  def count
    self.query
    render json: {:in_care => @enrollments.count}
  end
end
