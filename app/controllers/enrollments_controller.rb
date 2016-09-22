class EnrollmentsController < ApplicationController
  before_action :set_enrollment, only: [:show, :update, :destroy]

  # GET /enrollments
  def index
    self.query
    render json: @enrollments
  end

  def count
    self.query
    render json: {"enrollments": @enrollments.count}
  end

  REJECTS = ['action', 'controller']

  def query
    @enrollments = Enrollment.all

    binding.pry

    params.reject {|k, v| REJECTS.include? k}.each do |k, v|
      @enrollments = @enrollments.where(k => v)
      # @enrollments = @enrollments.where("#{k} = ?", v)
      # TODO: Support >, <, >=, <= by detecting them
      # in the key or value
    end
  end

  # So would `/placements?on=2016-03-12` give the same result that `/enrollments?date_orr_approved=2016-03-12` does?

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
