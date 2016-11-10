module StatLib
  require_relative '../exts/lib'

  # 松泊分布
  class PoissonDistribution
    # 概率
    def self.nxp(n, x, p)
      lbd = n * p
      lbd ** x * (Math::E) ** -lbd / x.factorial
    end
  end
end