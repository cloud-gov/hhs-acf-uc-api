require 'enrollments_helper'

class DischargesController < GeneralEnrollmentsController

  def correct_params
    params["facility_discharged_date"] = params.delete "on"
  end

end
