module StatLib
  class Collection
    attr_accessor :array

    def initialize(array)
      @array = array
    end

    # 期望
    def expect
      @array.inject(0) { |sum, o| sum + (o[:x] * o[:px]) }
    end

    # 方差
    def var_x
      ex = expect
      @array.inject(0) { |sum, o| sum + ((o[:x] - ex) ** 2) * o[:px] }
    end
  end

end