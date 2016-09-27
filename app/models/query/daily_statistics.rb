module Query
  class DailyStatistics
    attr_reader :params

    def initialize(params)
      @params = params
    end

    def counts
      {
        discharges: Discharges.new(params).count,
        in_care:    InCare.new(params).count,
        referrals:  Referrals.new(params).count
      }
    end

    def thirty_day_counts # 31 days including current date
      (0..30).map do |n|
        date_params = n_date_params(n)
        {
          discharges: Discharges.new(date_params).count,
          in_care:    InCare.new(date_params).count,
          referrals:  Referrals.new(date_params).count
        }
      end
    end

    private

    def date
      @date ||= DateParser.new(params).date_param
    end

    def n_date_params(n)
      n_date = date - n.day
      {on: n_date.strftime('%Y-%m-%d')}
    end
  end
end
