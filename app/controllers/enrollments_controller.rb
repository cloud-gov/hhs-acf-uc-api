class EnrollmentsController < ApplicationController
  before_action :set_enrollment, only: [:show, :update, :destroy]

  # GET /enrollments
  def index
    @enrollments = Enrollment.all

    render json: @enrollments
  end

  # GET /enrollments/1
  def show
    render json: @enrollment
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enrollment
      @enrollment = Enrollment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def enrollment_params
      # params.require(:enrollment).permit(:name)
    end
end
