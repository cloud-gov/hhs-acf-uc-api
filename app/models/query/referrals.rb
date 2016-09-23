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
        .where('date_orr_approved >= ?', date_parser.start_of_day)
        .where('date_orr_approved <  ?', date_parser.end_of_day)
    end

    private

    def paginator
      Paginator.new(params)
    end

    def date_parser
      DateParser.new(params)
    end
  end
end
