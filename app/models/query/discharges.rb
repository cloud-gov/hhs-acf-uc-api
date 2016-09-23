module Query
  class Discharges
    attr_reader :params

    def initialize(params)
      @params = params
    end

    def all
      query
        .select(:uac_id, :alien_no, :date_of_discharge)
        .limit(paginator.limit)
        .offset(paginator.offset)
    end

    def count
      query.count
    end

    def query
      if date_param_name == :before
        before_date
      elsif date_param_name == :after
        after_date
      else
        on_date
      end
    end

    def on_status
      status_base_query
        .where(uac_status: "DISCHARGED")
        .where("UAC_PROGRAM_INFO.current_status = ?", "DISCHARGED")
    end

    def on_date
      date_based_query
        .where('program_exits.date_of_discharge >= ?', start_of_day)
        .where('program_exits.date_of_discharge <  ?', end_of_day)
    end

    # and including that day
    def before_date
      date_based_query.where('program_exits.date_of_discharge <= ?', end_of_day)
    end

    # and including that day
    def after_date
      date_based_query.where('program_exits.date_of_discharge >= ?', start_of_day)
    end

    private

    def status_base_query
      Enrollment.joins(:programs)
    end

    def date_based_query
      Enrollment
        .joins(:programs)
        .joins("inner join uac_program_exit as program_exits   on uac_program_info.uac_program_id = program_exits.uac_program_id")
    end

    def date_param_name
      param_key = [:on, :before, :after].detect {|key| params[key] }
      return param_key || :on
    end

    def paginator
      Paginator.new(params)
    end

    def start_of_day
      date_param
    end

    def end_of_day
      date_param + 1.day
    end

    def date_param
      ActiveSupport::TimeZone.new('UTC').parse(params[date_param_name])
    rescue
      ActiveSupport::TimeZone.new('UTC').parse(Date.today.to_s)
    end
  end
end
