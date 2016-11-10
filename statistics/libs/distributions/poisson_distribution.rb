module StatLib
  require_relative '../exts/lib'

  # 松泊分布
  #   事件在定区间内随机、独立的发生
  #   已知区间内事件平均发生次数，且为有限次数，求概率
  class PoissonDistribution
    # 概率
    def self.lbd_r(lbd, r)
      lbd ** r * (Math::E) ** -lbd / r.factorial
    end

    # 期望
    def self.ex(lbd)
      lbd
    end

    # 方差
    def self.var(lbd)
      lbd
    end
  end
end