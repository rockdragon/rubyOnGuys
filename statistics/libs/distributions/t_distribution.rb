module StatLib
  require_relative '../exts/lib'

  # T分布
  #   适用于样本n很小,不知道总体方差的确切值
  class TDistribution
    # t分布
    def self.t_xsnu(x, s, n, u)
      (x - u).fdiv(Math.sqrt(s.fdiv(n)))
    end
  end
end
