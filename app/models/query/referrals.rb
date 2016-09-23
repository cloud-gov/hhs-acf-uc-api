module Query
  class Referrals
    attr_reader :params

    def initialize(params)
      @params = params
    end

    def all
      query
        .select(:date_orr_approved, :uac_id, :alien_no)
        .limit(paginator.limit)
        .offset(paginator.offset)
    end

    def count
      query.count
    end

    def query
      Enrollment
        .where('date_orr_approved >= ?', start_of_day)
        .where('date_orr_approved <  ?', end_of_day)
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
