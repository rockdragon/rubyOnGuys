module StatLib
  class Collection
    require 'bigdecimal'

    attr_accessor :raw_array

    def initialize(array)
      @raw_array = array.sort
      @array = @raw_array.collect { |x| BigDecimal.new(x.to_s) }
    end

    #和
    def sum(array)
      array.reduce(&:+)
    end

    # 均值
    def average
      self.sum(@array).fdiv(@array.size)
    end

    # 中位数
    def median
      n = @array.size
      middle = n / 2
      n % 2 == 0 ? (@array[middle] + @array[middle + 1]) / 2 : @array[middle]
    end

    # 下四分位数
    def lower_quartile
      n = @array.size
      quarter = n / 4 - 1
      (n % 4 == 0) ?
          (@array[quarter] + @array[quarter + 1]).fdiv(2) :
          @array[n.fdiv(4).ceil - 1]
    end

    # 上四分位数
    def upper_quartile
      n = @array.size
      upper_quarter = 3 * n / 4 - 1
      (3 * n % 4 == 0) ?
          (@array[upper_quarter] + @array[upper_quarter + 1]).fdiv(2) :
          @array[(3 * n).fdiv(4).ceil - 1]
    end

    # 最大(全)矩
    def maximal_moment
      @array.max - @array.min
    end

    #平均(绝对离)差
    def mean_deviation
      sum(differences_abs).fdiv(@array.size)
    end

    # 方差
    # 速算：sum(x ** 2) / n - u ** 2
    def variance
      n = @array.size
      sum(differences_power_n(2)).fdiv(n)
    end

    # 标准差
    def standard_deviation
      Math.sqrt(self.variance)
    end

    # 标准分
    def standard_score(new_value)
      (new_value - average).fdiv(standard_deviation)
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
      molecule.fdiv(denominator)
    end

    #峰态系数
    def kurtosis
      n = @array.size
      molecule = n * (n + 1) * sum(differences_power_n(4)) - 3 * sum(differences_power_n(2)) ** 2 * (n - 1)
      denominator = (n - 1) * (n - 2) * (n - 3) * standard_deviation ** 4
      molecule.fdiv(denominator)
    end

    # k阶矩
    def moment(k)
      n = @array.size
      sum(@array.collect { |x| x ** k }).fdiv(n)
    end

    # k阶中心矩
    def central_moment(k)
      n = @array.size
      sum(differences_power_n(k)).fdiv(n-1)
    end

    # 样本偏度
    def sample_skewness
      n = @array.size
      (sum(differences_power_n(3)).fdiv(n)).fdiv((sum(differences_power_n(2)) / n) ** 1.5)
      # (Math.sqrt(n - 1) * sum(differences_power_n(3))).fdiv(sum(differences_power_n(2)) ** 1.5)
    end

    # 样本峰度
    def sample_kurtosis
      n = @array.size
      ((n - 1) * sum(differences_power_n(4))).fdiv(sum(differences_power_n(2)) ** 2) - 3
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