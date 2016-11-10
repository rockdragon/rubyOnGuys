module StatLib
  require_relative '../exts/lib'

  # 二项分布
  #   一系列独立试验
  #   每一次试验成功p 或 失败q 的可能概率相同
  #   试验次数有限
  #   感兴趣的是：获得成功的次数(r次成功的概率)
  class BinomialDistribution
    # 成功x次概率
    def self.nrp(n, r, p)
      Lib.combination(n, r) * (p ** r) * ((1-p) ** (n -r))
    end

    # 单次的期望
    def self.ex(p)
      p
    end

    # 单次的方差
    def self.var(p)
      p * (1 - p)
    end
  end
end
