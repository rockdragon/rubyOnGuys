module StatLib
  require_relative 'exts/lib'

  class Propability
    # 二项分布
    def self.binomial_distribution(n, x, p)
      Lib.combine(n, x) * (p ** x) * ((1-p) ** (n -x))
    end

    # 松泊分布
    def self.poisson_distribution(n, x, p)
      lbd = n * p
      lbd ** x * (Math::E) ** -lbd / x.factorial
    end

  end
end