module StatLib
  require_relative '../exts/lib'

  # X2分布（卡方分布）
  class X2Distribution
    # 求卡方分布的　检验统计量
    #   array中哈希字段 {:o, :e}
    #     o 观测　e　期望
    def self.x2(array)
      array.inject(0) { |sum, ele| sum + ((ele[:o] - ele[:e]) ** 2).fdiv(ele[:e]) }
    end

    # 自由度
    #     h 行   k 列
    def self.degree_of_freedom(h, k)
      (h - 1) * (k - 1)
    end
  end
end