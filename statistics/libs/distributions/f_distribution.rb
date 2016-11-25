module StatLib
  require_relative '../exts/lib'

  # F分布
  class FDistribution

    # 期望
    def self.ex(n)
      n.fdiv(n - 2)
    end

    # 方差
    def self.variance(m, n)
      molecule = 2 * n ** 2 * (m + n - 2)
      denominator = m * (n - 2) * (n - 4)
      molecule.fdiv(denominator)
    end
  end
end
