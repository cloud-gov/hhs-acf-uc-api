require 'pry'

class EnrollmentsController < ApplicationController
  before_action :set_enrollment, only: [:show, :update, :destroy]

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
