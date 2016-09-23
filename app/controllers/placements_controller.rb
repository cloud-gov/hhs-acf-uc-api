require 'enrollments_helper'

class PlacementsController < GeneralEnrollmentsController
  def correct_params
    params["date_orr_approved"] = params.delete "on"
  end

end
