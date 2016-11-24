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

    # 方差 (样本)
    def variance(attr)
      n = @array.size - 1
      attr_ = average(attr)
      @array.inject(0){|sum, ele| sum + (ele[attr] - attr_) ** 2}.fdiv(n)
    end

    # 标准差
    def standard_deviation(attr)
      Math.sqrt(variance(attr))
    end

    # x和y的标准差
    def s_xy
      n = @array.size - 1
      x_ = average(:x)
      y_ = average(:y)
      @array.inject(0){|sum, ele| sum + (ele[:x] - x_) * (ele[:y] - y_)}.fdiv(n)
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

    # a系数
    def a
      x_ = average(:x)
      y_ = average(:y)
      y_ - b * x_
    end

    # 相关系数
    #   b 斜率
    def r
      s_x = standard_deviation(:x)
      s_y = standard_deviation(:y)
      s_xy.fdiv(s_x * s_y)
    end

    # 抽样分布的标准差
    def sb
      n = @array.size - 2
      x_ = average(:x)
      y_ = average(:y)
      molecule = @array.inject(0){|sum, ele| sum + (ele[:x] - x_) ** 2}.fdiv(n)
      denominator = @array.inject(0){|sum, ele| sum + (ele[:y] - y_) ** 2}
      molecule.fdiv(denominator)
    end

    # 求回归
    def self.y(a, b, x)
      a + b * x
    end
  end
end