require 'enrollments_helper'

class PlacementsController < GeneralEnrollmentsController
  before_action :authenticate_user!

  def correct_params
    params["date_orr_approved"] = params.delete "on"
  end

end
