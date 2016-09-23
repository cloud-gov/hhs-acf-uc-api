module Query
  class InCare
    attr_reader :params

    def initialize(params)
      @params = params
    end

    def all
      query
        .select(:uac_id, :alien_no)
        .limit(paginator.limit)
        .offset(paginator.offset)
    end

    def count
      query.count
    end

    def query
      # (
      #   no discharge date OR
      #   discharge date > date
      # ) AND (
      #   current_status in () and
      #   uac_status in ()
      # )
      Enrollment.all
    end

    private

    def paginator
      Paginator.new(params)
    end

    def start_of_day
      on.to_time.utc
    end

    def end_of_day
      (on + 1).to_time.utc
    end

    def on
      Date.parse(params[:on])
    rescue
      Date.today
    end
  end
end
