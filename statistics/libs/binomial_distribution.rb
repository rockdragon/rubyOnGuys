module StatLib
  require_relative 'exts/lib'

  class BinomialDistribution
    # 二项分布
    def self.nxp(n, x, p)
      Lib.combination(n, x) * (p ** x) * ((1-p) ** (n -x))
    end
  end
end
