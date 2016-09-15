require 'pry'
require 'controller_helper'
require 'httparty'
require 'json'

class ChildrenController < GenericApplicationController
  before_action :set_enrollment, only: [:show]

  # TODO: I don't like this ugly manipulation of urls to
  # send a message to the model

  IN_CARE = "{'IN-TRANSFER','ADMITTED','ENROUTE'}"

  # GET /children
  def index
    if params.has_key? 'in_care'
      in_care = params.delete 'in_care'
      if str_to_bool in_care
        params['uac_status'] = IN_CARE
      else
        params['uac_status!'] = IN_CARE
      end
      # TODO: nulls?
    end
    @enrollments = Enrollment.all params
    if params.has_key? 'as_of'
      date = params['as_of']
    else
      date = Date.today
    end
    @children = @enrollments.map do |e|
      e.in_care = IN_CARE.include? (e.uac_status or 'UNKNOWN')
      e.referred_today = (e.referral_date == date)
      e.placed_today = (e.date_orr_approved == date)
      e.discharged_today = (e.facility_discharged_date == date)
      e
    end
    render json: @children
  end

  def count
    if params.has_key? 'as_of'
      date = params['as_of']
    else
      date = Date.today
    end
    # I wasn't able to use Flexirest models successfully here, perhaps because
    # the synthetic record formed of count numbers is not an instance of
    # Enrollment.  So I'm using raw API calls.
    path = '%7B' + "date:='#{date}'," +
    (count(uac_program_info?!is_null(date_referred)^uac_id))
      'in_care:=count(uac_info),' +
      "referred_today:=count(uac_info?referral_date='#{date}')," +
      "placed_today:=count(uac_info?date_orr_approved='#{date}')," +
      "discharged_today:=count(uac_info?facility_discharged_date='#{date}')" +
      '%7D/:json'
    url = Rails.application.config.htsql_server_url + path
    response = HTTParty.get(url)
    render json: JSON.parse(response)
  end

  # GET /children/1
  def show
    if @enrollment.any?
      render json: @enrollment
    else
      render status: 404, plain: "Not Found"
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enrollment
      @enrollment = Enrollment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def enrollment_params
      params.require(:enrollment).permit(:last_name)
    end

    def today_fields(enrollment, date)
    end

end
