require 'pry'
require 'date'

class EnrollmentsController < ApplicationController
  before_action :set_enrollment, only: [:show]

  # GET /enrollments
  def index
    @enrollments = Enrollment.all params
    render json: @enrollments
  end

  # GET /enrollments/1
  def show
    if @enrollment.any?
      render json: @enrollment
    else
      render status: 404, plain: "Not Found"
    end
  end

  def count
    # TODO: support other filter parameters
    if params.has_key? 'as_of'
      date = Date.parse(params['as_of'])
      # TODO: normalize date input, trap errors
    else
      date = Date.today
    end
    dt = "date('#{date}')"
    admitted = "date(date_referred)<#{dt}"
    not_discharged = "(is_null(date_discharged)|date(date_discharged)>#{dt})"
    in_care = "in_care:=count(uac_program_info?#{admitted}&#{not_discharged}),"
    path = '%7B' + "date:=#{dt}," + in_care +
      "referred_today:=count(uac_info?date(referral_date)=#{dt})," +
      "placed_today:=count(uac_info?date(date_orr_approved)=#{dt})," +
      "discharged_today:=count(uac_info?date(facility_discharged_date)=#{dt})" +
      '%7D/:json'
    url = Rails.application.config.htsql_server_url + path
    response = HTTParty.get(url)
    result = JSON.parse(response)
    render json: [result["0"][0], ]
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
end
