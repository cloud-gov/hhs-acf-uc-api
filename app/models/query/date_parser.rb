module Query
  class DateParser
    attr_reader :params, :date_key

    def initialize(params, date_key=nil)
      @params = params
      @date_key = date_key || :on
    end

    def start_of_day
      date_param
    end

    def end_of_day
      date_param + 1.day
    end

    def date_param
      ActiveSupport::TimeZone.new('UTC').parse(params[date_key])
    rescue
      ActiveSupport::TimeZone.new('UTC').parse(Date.today.to_s)
    end
  end
end
