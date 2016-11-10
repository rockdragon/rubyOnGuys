module StatLib
  require_relative 'exts/lib'

  class PoissonDistribution
    # 松泊分布
    def self.nxp(n, x, p)
      lbd = n * p
      lbd ** x * (Math::E) ** -lbd / x.factorial
    end
  end
end