module Query
  class Enrollments
    attr_reader :options

    def initialize(options=nil)
      @options = options || {}
    end

    def all
      query
        .select(:uac_id, :date_orr_approved)
        .distinct
        .limit(limit)
        .offset(offset)
    end

    def count
      query
        .distinct
        .count
    end

    def query
      Enrollment.all
    end

    private

    def limit
      options[:limit] || 1000
    end

    def offset
      options[:offset] || 0
    end
  end
end

<<-NOTES

Queries needed:
* referrals - done
* in care
* discharged

Current status from uac_program_info table:
["DISCHARGED", "ADMITTED", "IN-TRANSFER", "ENROUTE"]

in care: "ADMITTED", "IN-TRANSFER", "ENROUTE"
discharged: "DISCHARGED"

uac status from uac_info
[nil, "PENDING", "IN-TRANSFER", "ENROUTE", "DISCHARGED", "ADMITTED", "CANCELLED"]

no info: nil, "PENDING", "CANCELLED"
in care: "IN-TRANSFER", "ENROUTE", "ADMITTED"
discharged: "DISCHARGED"


NOTES
