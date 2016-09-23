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
      Enrollment
        .joins(:programs)
        .joins("INNER JOIN uac_program_exit AS program_exits ON uac_program_info.uac_program_id = program_exits.uac_program_id")
        .where('program_exits.date_of_discharge >= ?', date_parser.start_of_day)
        .where('program_exits.date_of_discharge <  ?', date_parser.end_of_day)
        .where('uac_info.uac_status = ?', "DISCHARGED")
        .where('uac_program_info.current_status = ?', "DISCHARGED")
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
