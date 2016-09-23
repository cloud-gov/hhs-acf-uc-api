require 'enrollments_helper'

class ReferralsController < GeneralEnrollmentsController

  def correct_params
    params["referral_date"] = params.delete "on"
  end

end
