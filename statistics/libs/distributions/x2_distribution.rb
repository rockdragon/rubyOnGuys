module StatLib
  require_relative '../exts/lib'

  # X2分布（卡方分布）
  class X2Distribution
    # 求卡方分布的　检验统计量
    #   array中哈希字段 {:o, :e}
    def self.x2(array)
      array.inject(0) { |sum, ele| sum + ((ele[:o] - ele[:e]) ** 2).fdiv(ele[:e]) }
    end
  end
end