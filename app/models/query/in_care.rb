module Query
  class InCare
    attr_reader :params

    def initialize(params)
      @params = params
    end

    def count
      if date_parser.date_param == Date.today
        enrollment_ids_via_status.count
      else
        greedy_selection_ids.count
      end
    end

    private

    def in_care_statuses
      ["ADMITTED", "IN-TRANSFER", "ENROUTE"]
    end

    def greedy_selection_ids
      (enrollment_ids_with_no_exit + enrollment_ids_after_date_with_exit).uniq
    end

    def enrollment_ids_via_status
      Enrollment
        .joins(:programs)
        .where('uac_info.uac_status in (?)',              in_care_statuses)
        .where('uac_program_info.current_status in (?)',  in_care_statuses)
        .select(:uac_id)
        .pluck(:uac_id)
    end

    def enrollment_ids_with_no_exit
      Enrollment
        .joins(:programs)
        .where("NOT EXISTS (SELECT uac_program_exit.uac_program_id FROM uac_program_exit WHERE uac_program_exit.uac_program_id = uac_program_info.uac_program_id)")
        .where('uac_info.uac_status in (?)',              in_care_statuses)
        .where('uac_program_info.current_status in (?)',  in_care_statuses)
        .select(:uac_id)
        .pluck(:uac_id)
    end

    def enrollment_ids_after_date_with_exit
      Enrollment
        .joins(:programs)
        .joins("INNER JOIN uac_program_exit AS program_exits ON uac_program_info.uac_program_id = program_exits.uac_program_id")
        .where('program_exits.date_of_discharge <  ?', date_parser.end_of_day)
        .where('uac_info.uac_status = ?', "DISCHARGED")
        .where('uac_program_info.current_status = ?', "DISCHARGED")
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

