require 'enrollments_helper'

class DischargesController < GeneralEnrollmentsController
  before_action :authenticate_user!

  def correct_params
    params["facility_discharged_date"] = params.delete "on"
  end

end
