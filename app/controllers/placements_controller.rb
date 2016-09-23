class PlacementsController < EnrollmentsController
  def correct_params
    params["date_orr_approved"] = params.delete "on"
  end
end
