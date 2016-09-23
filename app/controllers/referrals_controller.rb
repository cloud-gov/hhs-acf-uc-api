class ReferralsController < EnrollmentsController
  def correct_params
    params["referral_date"] = params.delete "on"
  end
end
