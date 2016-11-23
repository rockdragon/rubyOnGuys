module StatLib
  require_relative '../exts/lib'

  # 回归
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

    # 斜率
    #   array中哈希字段 {:x, :y}
    def b
      x_ = average(:x)
      y_ = average(:y)
      molecule = @array.inject(0){|sum, ele| sum + (ele[:x] - x_) * (ele[:y] - y_)}
      denominator = @array.inject(0) {|sum, ele| sum + (ele[:x] - x_) ** 2}
      molecule.fdiv(denominator)
    end
  end
end