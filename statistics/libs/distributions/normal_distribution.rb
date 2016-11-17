module StatLib
  require_relative '../exts/lib'

  # 正态分布
  class NormalDistribution
    # 标准分
    #   x X取值
    #   u 均值（期望）
    #   o 标准差
    def standard_score(x, u, o)
      (x - u).fdiv(o)
    end

    # 样本的比例标准误差
    #   n 样本大小
    #   p 成功概率
    def proportional_std_deviation(n, p)
      Math.sqrt((p * (1 - p)).fdiv(n))
    end

    # 样本的均值标准误差
    #   n 样本大小
    #   o 标准差
    def average_std_deviation(n, o)
      o.fdiv(Math.sqrt(n))
    end

    # 中心极限定理
    def normalize_sample(n, u, o)
      {u: u, o: (o ** 2).fdiv(n)}
    end

    # 正态化二项分布
    def normalize_binomial_dst(n, p)
      {u: n * p, o2: p * (1-p)}
    end

    # 正态化泊松分布
    def normalize_poisson_dst(n, lbd)
      {u: lbd, o2: lbd.fdiv(n)}
    end

  end
end

