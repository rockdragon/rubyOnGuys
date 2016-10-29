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
      self.sum(@array).fdiv(@array.size)
    end

    #平均(绝对离)差
    def mean_deviation
      sum(differences_abs).fdiv(@array.size)
    end

    #方差
    def variation
      sum(differences_power_n(2)).fdiv(@array.size)
    end

    #标准差
    def standard_deviation
      Math.sqrt(self.variation)
    end

    #离散系数
    def discreteness
      standard_deviation / average
    end

    #偏态系数
    def skewness
      n = @array.size
      molecule = sum(differences_power_n(3))
      denominator = (n - 1) * (n - 2) * standard_deviation ** 3
      molecule .fdiv(denominator)
    end

    #峰态系数
    def kurtosis
      n = @array.size
      molecule = n * (n + 1) * sum(differences_power_n(4)) - 3 * sum(differences_power_n(2)) ** 2 * (n - 1)
      denominator = (n - 1) * (n - 2) * (n - 3) * standard_deviation ** 4
      molecule.fdiv(denominator)
    end

    private
    #平均差集合
    def differences
      x_ = self.average
      @array.collect { |x| x - x_ }
    end

    #平均差绝对值集合
    def differences_abs
      x_ = self.average
      @array.collect { |x| (x - x_).abs }
    end

    #平均差平方
    def differences_power_n(n)
      x_ = self.average
      @array.collect { |x| (x - x_) ** n }
    end
  end

end