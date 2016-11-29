module StatLib
  require_relative '../exts/lib'

  # T分布 (学生分布)
  #   T ~ (v) 其中 v = n-1
  #   适用于样本n很小,不知道总体方差的确切值
  class TDistribution
    # t分布的标准分
    def self.t_xsnu(x, s2, n, u)
      (x - u).fdiv(Math.sqrt(s2.fdiv(n)))
    end
  end
end
