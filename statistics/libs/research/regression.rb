module StatLib
  require_relative '../exts/lib'

  # 线性回归
  class Regression
    def initialize(array)
      @array = array
    end

    #和
    def sum(attr)
      @array.inject(0){|sum, ele| sum + ele[attr]}
    end

    # 均值
    def average(attr)
      self.sum(attr).fdiv(@array.size)
    end

    # 方差
    def variance(attr)
      n = @array.size
      attr_ = average(attr)
      @array.inject(0){|sum, ele| sum + (ele[attr] - attr_) ** 2}.fdiv(n)
    end

    # 标准差
    def standard_deviation(attr)
      Math.sqrt(variance(attr))
    end

    # 误差平方和
    def sse
      y_ = average(:y)
      array.inject(0) {|sum, ele| sum + (ele[:y] - y_) ** 2}
    end

    # 斜率
    #   array中哈希字段 {:x, :y}
    def b
      x_ = average(:x)
      y_ = average(:y)
      molecule = @array.inject(0){|sum, ele| sum + (ele[:x] - x_) * (ele[:y] - y_)}
      denominator = @array.inject(0) {|sum, ele| sum + (ele[:x] - x_) ** 2}
      molecule.fdiv(denominator)
    end

    # 相关系数
    #   b 斜率
    def r
      s_x = standard_deviation(:x)
      s_y = standard_deviation(:y)
      (b * s_x).fdiv(s_y)
    end

    # 求回归
    def self.y(a, b, x)
      a + b * x
    end
  end
end