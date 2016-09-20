class EnrollmentReportsController < ApplicationController
  before_action :set_enrollment_report, only: [:show, :update, :destroy]

  # GET /enrollment_report_reports
  def index
    @enrollment_reports = EnrollmentReport.all

    render json: @enrollment_reports
  end

  # GET /enrollment_reports/1
  def show
    render json: @enrollment_report
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enrollment_report
      @enrollment_report = EnrollmentReport.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def enrollment_report_params
      params.require(:enrollment_report).permit(:last_name)
    end
end
