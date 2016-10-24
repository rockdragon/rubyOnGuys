module StatLib
  class Collection
    require 'bigdecimal'

    def initialize(array)
      @array = array.collect { |x| BigDecimal.new(x.to_s) }
    end
    #和
    def sum(array)
      array.reduce(&:+)
    end
    #平均数
    def average
      self.sum(@array) / (@array.size + 0.0)
    end
    #平均(绝对离)差
    def mean_deviation
      sum(differences) / (@array.size + 0.0)
    end
    #方差
    def variance
      sum(differences) ** 2 / (@array.size + 0.0)
    end
    #标准差
    def standard_deviation
      Math.sqrt(self.variance)
    end

    #偏态系数
    def sk
      n = @array.size
      molecule = sum(differences) ** 3
      denominator = (n - 1) * (n - 2) * standard_deviation ** 3
      molecule / (denominator + 0.0)
    end

    private
      #平均差集合
      def differences
        x_ = self.average
        @array.collect { |x| x - x_ }
      end
  end

end