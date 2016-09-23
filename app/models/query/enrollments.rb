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
