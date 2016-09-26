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
      Enrollment
        .joins(:programs)
        .where(uac_id: selection_ids)
        .where('uac_info.uac_status in (?)',              in_care_statuses)
        .where('uac_program_info.current_status in (?)',  in_care_statuses)
    end

    private

    def in_care_statuses
      ["ADMITTED", "IN-TRANSFER", "ENROUTE"]
    end

    def selection_ids
      (enrollment_ids_with_no_exit + enrollment_ids_after_date).uniq
    end

    def enrollment_ids_with_no_exit
      Enrollment
        .joins(:programs)
        .where("NOT EXISTS (SELECT uac_program_exit.uac_program_id FROM uac_program_exit WHERE uac_program_exit.uac_program_id = uac_program_info.uac_program_id)")
        .select(:uac_id)
        .pluck(:uac_id)
    end

    def enrollment_ids_after_date
      Enrollment
        .joins(:programs)
        .joins("INNER JOIN uac_program_exit AS program_exits ON uac_program_info.uac_program_id = program_exits.uac_program_id")
        .where('program_exits.date_of_discharge <  ?', date_parser.end_of_day)
        .select(:uac_id)
        .pluck(:uac_id)
    end

    def paginator
      Paginator.new(params)
    end

    def date_parser
      DateParser.new(params)
    end
  end
end

