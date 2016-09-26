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
  end
end
