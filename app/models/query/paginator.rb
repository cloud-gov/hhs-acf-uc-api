module Query
  class Paginator
    attr_reader :params

    def initialize(params)
      @params = params
    end

    def limit
      l = params[:limit].to_i
      l == 0 ? 1000 : 0
    end

    def offset
      params[:offset].to_i
    end
  end
end
