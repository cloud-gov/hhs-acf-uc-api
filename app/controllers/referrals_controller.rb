require 'enrollments_helper'

class ReferralsController < GeneralEnrollmentsController
  before_action :authenticate_user!

  def correct_params
    params["referral_date"] = params.delete "on"
  end

end
