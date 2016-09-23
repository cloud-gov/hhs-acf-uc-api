class EnrollmentsController < ApplicationController
  before_action :set_enrollment, only: [:show]

  def correct_params
  end

  # GET /enrollments
  def index
    self.query
    render json: @enrollments
  end

  def count
    self.query
    name = self.class.name.sub("Controller", "").downcase
    render json: {name => @enrollments.count}
  end

  NOFILTER = ['on', 'action', 'controller']
  IN_CARE = "uac_id %s IN
    ( SELECT uac_id
      FROM   uac_program_info
      WHERE  date_referred < ?
      AND (date_discharged IS NULL
           OR date_discharged > ?)
    )"

  def query
    @enrollments = Enrollment.all

    correct_params
    params.reject {|k, v| NOFILTER.include? k}.each do |k, v|
      case k.downcase
      when "in_care", "!in_care"
        qry = IN_CARE % sql_not(k, v)
        @enrollments = @enrollments.where(qry, on, on)
      else
        if k.include? "date" then
          @enrollments = @enrollments.where("date(#{k}) = ?", v)
        else
          @enrollments = @enrollments.where(k => v)
        end
      end
      # TODO: Support >, <, >=, <= by detecting them
      # in the key or value
    end

  end

  # GET /enrollments/1
  def show
    render json: @enrollment
  end

  private

    def on
      @on ||= begin
        if params.include? 'on' then
          on = Date.parse params['on']
        else
          on = Date.today
        end
      end
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_enrollment
      @enrollment = Enrollment.find(params[:id])
    end

    def cleaned(val)
      begin
        return val.downcase.strip
      rescue NoMethodError
        return val
      end
    end

    FALSEY = ["f", "n", "no", "false", "0"]

    def sql_not(k, v)
      result = ! (k.starts_with? "!")
      if FALSEY.include? cleaned(v)
        result = !result
      end
      result ? "" : "NOT"
    end

end
